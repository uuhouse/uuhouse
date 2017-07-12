/**
 *
 * @module storage
 * @file js/util/storage/storage2.js
 * @requires
 * @author zhangbingbing@ganji.com
 * @version 2013-07-23
 */

GJ.add('js/util/storage/storage2.js', ['jquery'], function (require, exports, module) {
    'use strict';
    var $ = require('jquery');
    var isSupportLocalStorage = !!window.localStorage;
    var forbiddenCharsRegex = new RegExp('[!\"#$%&\'()*+,/\\\\:;<=>?@[\\]^`{|}~]', 'g');
    if(!isSupportLocalStorage) {
        module.pause();
        var iframe = document.createElement('IFRAME');
        iframe.style.display = 'none';

        $(iframe).bind('load', function () {
            module.resume();
        });

        iframe.src = 'http://sta.ganji.com/crossdomain.html';
        document.insertBefore( iframe, document.firstChild );
    }

    var JSON = window.JSON ? window.JSON : {
        stringify: GJ.jsonEncode,
        parse: GJ.jsonDecode
    };

    function serialize(value) {
        return JSON.stringify(value);
    }

    function deserialize(value) {
        if (typeof value !== 'string') {
            return undefined;
        }
        return JSON.parse(value);
    }

    function ieKeyFix(key) {
        return key.replace(forbiddenCharsRegex, '___');
    }

    function createJson(value, expires){
        return serialize({
            v: value,
            e: expires
        });
    }

    function getValue(key, valueObj) {
        var nowTime = new Date().getTime();
        if(valueObj && valueObj.e && nowTime > valueObj.e) {
            return null;
        } else if (valueObj) {
            if (valueObj.v !== undefined) {
                return valueObj.v;
            } else {
                return valueObj;
            }
        } else {
            return null;
        }
    }

    function nativeStorage(storeName) {
        var tmpObj = {
            set: function (key, value, expires) {
                if(value === undefined) {
                    return localStorage.removeItem(storeName + key);
                }

                var jsonStr = createJson(value, expires);

                try {
                    localStorage.setItem(storeName + key, jsonStr);
                } catch(e) {
                    localStorage.clear();
                }
                return;
            },
            get: function (key) {
                var valueObj = deserialize(localStorage.getItem(storeName + key));
                var value = getValue(key, valueObj);
                if (value === null) {
                    localStorage.removeItem(storeName + key);
                }

                return value;
            },
            remove: function (key) {
                return localStorage.removeItem(storeName + key);
            },
            clear: function() {
                localStorage.clear();
            }
        };
        return tmpObj;
    }

    function IEStorage(storeName) {
        var storageOwner, storageEl;
        var IEStorageFn = function(storeFn) {
            return function() {
                var args = Array.prototype.slice.call(arguments, 0);
                args.unshift(storageEl);

                storageOwner.appendChild(storageEl);
                storageEl.addBehavior('#default#userData');
                storageEl.load(storeName);
                var result = storeFn.apply(tmpObj, args);
                storageOwner.removeChild(storageEl);
                return result;
            };
        };

        storageOwner = iframe.contentWindow.document;
        storageEl = storageOwner.createElement('div');

        var tmpObj = {
            set: IEStorageFn(function(storageEl, key, value, expires) {
                key = ieKeyFix(key);
                if (value === undefined) {
                    storageEl.removeAttribute(key);
                    storageEl.save(storeName);
                    return null;
                }
                var jsonStr = createJson(value, expires);

                try {
                    storageEl.setAttribute(key, jsonStr);
                    storageEl.save(storeName);
                } catch(e) {
                    var attributes = storageEl.XMLDocument.documentElement.attributes;
                    storageEl.load(storeName);
                    for(var i = 0, len = attributes.length; i < len; i++) {
                        key = attributes[i].name;
                        storageEl.removeAttribute(key);
                    }
                    storageEl.save(storeName);
                }
            }),
            get: IEStorageFn(function(storageEl, key) {
                var newKey = ieKeyFix(key);
                var valueObj = deserialize(storageEl.getAttribute(newKey));
                var value = getValue(key, valueObj);
                if (value === null) {
                    storageEl.removeAttribute(key);
                    storageEl.save(storeName);
                }
                return value;
            }),
            remove: IEStorageFn(function(storageEl, key) {
                key = ieKeyFix(key);
                storageEl.removeAttribute(key);
                storageEl.save(storeName);
            }),
            clear: IEStorageFn(function(storageEl) {
                var attributes = storageEl.XMLDocument.documentElement.attributes;
                storageEl.load(storeName);
                for(var i = 0, len = attributes.length; i < len; i++) {
                    var key = attributes[i].name;
                    storageEl.removeAttribute(key);
                }
                storageEl.save(storeName);
            })
        };
        return tmpObj;
    }

    function LocalStore(namespace) {
        var tmpObj;
        var storeName = 'ganji_';

        if(namespace && typeof namespace === 'string') {
            storeName = namespace + '_';
        }

        if (isSupportLocalStorage) {
            tmpObj = nativeStorage(storeName);
        } else if(document.documentElement.addBehavior){
            tmpObj = IEStorage(storeName);
        }

        GJ.mix(this, tmpObj, true);
    }

    module.exports = LocalStore;
});
