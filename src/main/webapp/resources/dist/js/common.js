((global, document) => {
    'use strict'

    function el(selector, context) {
        if (typeof selector !== 'string' || selector.trim().length === 0) { return null; }
        context = !context ? document : context.nodeType === 1 ? context : el(String(context));
        return context.querySelector(selector);
    }
    
    function els(selector, context) {
        if (typeof selector !== 'string' || selector.trim().length === 0) { return null; }
        context = !context ? document : context.nodeType === 1 ? context : el(String(context));
        return context.querySelectorAll(selector);
    }

    function each(list, callback, scope) {
        for (var i=0, l=list.length; i<l; i++) { callback.call(scope, list[i], i); }
    }

    function createNode(element) {
        return document.createElement(element);
    }

    function hasClass(el, name) {
        return el.classList.contains(name);
    }
    
    function addClass(el, name) {
        var names = name.split(' ');
        each(names, function(name){ el.classList.add(name); });
        return el;
    }

    function removeClass(el, name) {
        name ? el.classList.remove(name) : (el.className = '');
        return el;
    } 

    function toggleClass(el, name) {
        return hasClass(el, name) ? removeClass(el, name) : addClass(el, name);
    }

    function prependChild(el, html_code) {
        el.insertAdjacentHTML('afterbegin', html_code);
        return el;
    }
    
    function appendChild(el, html_code) {
        el.insertAdjacentHTML('beforeend', html_code);
        return el;
    }

    function getStyle(el, prop, pseudo) {
        return window.getComputedStyle(el, pseudo)[prop];
    }

    function setStyle(el, prop, value) {
        return el.style[prop] = value;
    }

    function css(el, prop, value) {
        var els = [];
        if ( el && el.nodeType !== 1 && typeof el === 'string' ) { 
          var els = el.split('::');
          el = document.querySelector(els[0]);
        }
        var getValue = getStyle(el, prop, els.length ? els[1] : null);
        if (!value) {
          return getValue;
        } else {
          if (/^(\+=|-=)/.test(value)) {
            var currentValue = window.parseFloat(getValue, 10);
            var operator = value.substr(0, 2); // += , -=
            var unit = /px/.test(getValue) ? 'px' : /rem/.test(getValue) ? 'rem' : /em/.test(getValue) ? 'em' : '';
            value = window.parseFloat(value.substr(2),10);
            value = currentValue + (operator === '+=' ? value : -value) + unit;
          }
          setStyle(el, prop, value);
        }
    }

    function append(parent, el) {
        return parent.appendChild(el);
    }
    
    function remove(parent, el) {
        return parent.removeChild(el);
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
        return descripter;
    }

    Object.defineProperty(global, '_', {
        value: {}
      });

    Object.defineProperties(global._,{
        // DOM
        el          : defineProp(el),
        els         : defineProp(els),
        each        : defineProp(each),
        createNode  : defineProp(createNode),
        hasClass    : defineProp(hasClass),
        addClass    : defineProp(addClass),
        removeClass : defineProp(removeClass),
        toggleClass : defineProp(toggleClass),
        prependChild: defineProp(prependChild),
        appendChild : defineProp(appendChild),
        getStyle    : defineProp(getStyle),
        setStyle    : defineProp(setStyle),
        css         : defineProp(css),
        append      : defineProp(append),
        remove      : defineProp(remove),
        // JavaScript
        mixin       : defineProp(mixin)
    });
})(window, window.document);