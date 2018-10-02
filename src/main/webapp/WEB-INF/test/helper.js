((global, doucment) => {
    'use strict'

    /* DOM 선택 */
    function els(selector, context) {
        if (typeof selector !== 'string' || selector.trim().length === 0) { return null; }
        context = !context ? document : context.nodeType === 1 ? context : el(String(context));
        return context.querySelectorAll(selector);
    }

    
    function el(selector, context) {
        if (typeof selector !== 'string' || selector.trim().length === 0) { return null; }
        context = !context ? document : context.nodeType === 1 ? context : el(String(context));
        return context.querySelector(selector);
    }

    /* JavaScript */
    function mixin() {
        let mixin_obj = {};
        for (let i=0; i < arguments.length; ++i) {
            var o = arguments[i];
            for ( var key in o ) {
                var value = o[key];
                if (o.hasOwnProperty(key)) { mixin_obj[key] = value; }
            }
            return mixin_obj;
        }
    };

    function defineProp(value, descripter) {
        descripter = mixin({
            configurable: false,
            writable: false,
            enumerable: true,
        }, (descripter || {}));
        descripter.value = value;
        console.log(descripter);
        return descripter;
    }

    Object.defineProperty(global, '_', {
        value: {}
    });

    Object.defineProperties(global._. {
        // DOM
        els         : defineProp(els),
        el          : defineProp(el),
        // JavaScript
        mixin       : defineProp(mixin);
    });
})(window, window.document);