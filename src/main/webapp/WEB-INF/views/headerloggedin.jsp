<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>
    <script src=resources/js/app.js"/></script>
    <style>
        @import url("https://fonts.googleapis.com/css?family=Merriweather:300,300i,400|Open+Sans:300,400,600&subset=latin-ext");
        /*! normalize.css v8.0.1 | MIT License | github.com/necolas/normalize.css */
        /* Document
           ========================================================================== */
        /**
         * 1. Correct the line height in all browsers.
         * 2. Prevent adjustments of font size after orientation changes in iOS.
         */
        /* line 11, scss/vendor/_normalize.scss */
        html {
            line-height: 1.15;
            /* 1 */
            -webkit-text-size-adjust: 100%;
            /* 2 */
        }

        /* Sections
           ========================================================================== */
        /**
         * Remove the margin in all browsers.
         */
        /* line 23, scss/vendor/_normalize.scss */
        body {
            margin: 0;
        }

        /**
         * Render the `main` element consistently in IE.
         */
        /* line 31, scss/vendor/_normalize.scss */
        main {
            display: block;
        }

        /**
         * Correct the font size and margin on `h1` elements within `section` and
         * `article` contexts in Chrome, Firefox, and Safari.
         */
        /* line 40, scss/vendor/_normalize.scss */
        h1 {
            font-size: 2em;
            margin: 0.67em 0;
        }

        /* Grouping content
           ========================================================================== */
        /**
         * 1. Add the correct box sizing in Firefox.
         * 2. Show the overflow in Edge and IE.
         */
        /* line 53, scss/vendor/_normalize.scss */
        hr {
            -webkit-box-sizing: content-box;
            box-sizing: content-box;
            /* 1 */
            height: 0;
            /* 1 */
            overflow: visible;
            /* 2 */
        }

        /**
         * 1. Correct the inheritance and scaling of font size in all browsers.
         * 2. Correct the odd `em` font sizing in all browsers.
         */
        /* line 64, scss/vendor/_normalize.scss */
        pre {
            font-family: monospace, monospace;
            /* 1 */
            font-size: 1em;
            /* 2 */
        }

        /* Text-level semantics
           ========================================================================== */
        /**
         * Remove the gray background on active links in IE 10.
         */
        /* line 76, scss/vendor/_normalize.scss */
        a {
            background-color: transparent;
        }

        /**
         * 1. Remove the bottom border in Chrome 57-
         * 2. Add the correct text decoration in Chrome, Edge, IE, Opera, and Safari.
         */
        /* line 85, scss/vendor/_normalize.scss */
        abbr[title] {
            border-bottom: none;
            /* 1 */
            text-decoration: underline;
            /* 2 */
            -webkit-text-decoration: underline dotted;
            text-decoration: underline dotted;
            /* 2 */
        }

        /**
         * Add the correct font weight in Chrome, Edge, and Safari.
         */
        /* line 95, scss/vendor/_normalize.scss */
        b,
        strong {
            font-weight: bolder;
        }

        /**
         * 1. Correct the inheritance and scaling of font size in all browsers.
         * 2. Correct the odd `em` font sizing in all browsers.
         */
        /* line 105, scss/vendor/_normalize.scss */
        code,
        kbd,
        samp {
            font-family: monospace, monospace;
            /* 1 */
            font-size: 1em;
            /* 2 */
        }

        /**
         * Add the correct font size in all browsers.
         */
        /* line 116, scss/vendor/_normalize.scss */
        small {
            font-size: 80%;
        }

        /**
         * Prevent `sub` and `sup` elements from affecting the line height in
         * all browsers.
         */
        /* line 125, scss/vendor/_normalize.scss */
        sub,
        sup {
            font-size: 75%;
            line-height: 0;
            position: relative;
            vertical-align: baseline;
        }

        /* line 133, scss/vendor/_normalize.scss */
        sub {
            bottom: -0.25em;
        }

        /* line 137, scss/vendor/_normalize.scss */
        sup {
            top: -0.5em;
        }

        /* Embedded content
           ========================================================================== */
        /**
         * Remove the border on images inside links in IE 10.
         */
        /* line 148, scss/vendor/_normalize.scss */
        img {
            border-style: none;
        }

        /* Forms
           ========================================================================== */
        /**
         * 1. Change the font styles in all browsers.
         * 2. Remove the margin in Firefox and Safari.
         */
        /* line 160, scss/vendor/_normalize.scss */
        button,
        input,
        optgroup,
        select,
        textarea {
            font-family: inherit;
            /* 1 */
            font-size: 100%;
            /* 1 */
            line-height: 1.15;
            /* 1 */
            margin: 0;
            /* 2 */
        }

        /**
         * Show the overflow in IE.
         * 1. Show the overflow in Edge.
         */
        /* line 176, scss/vendor/_normalize.scss */
        button,
        input {
            /* 1 */
            overflow: visible;
        }

        /**
         * Remove the inheritance of text transform in Edge, Firefox, and IE.
         * 1. Remove the inheritance of text transform in Firefox.
         */
        /* line 186, scss/vendor/_normalize.scss */
        button,
        select {
            /* 1 */
            text-transform: none;
        }

        /**
         * Correct the inability to style clickable types in iOS and Safari.
         */
        /* line 195, scss/vendor/_normalize.scss */
        button,
        [type="button"],
        [type="reset"],
        [type="submit"] {
            -webkit-appearance: button;
        }

        /**
         * Remove the inner border and padding in Firefox.
         */
        /* line 206, scss/vendor/_normalize.scss */
        button::-moz-focus-inner,
        [type="button"]::-moz-focus-inner,
        [type="reset"]::-moz-focus-inner,
        [type="submit"]::-moz-focus-inner {
            border-style: none;
            padding: 0;
        }

        /**
         * Restore the focus styles unset by the previous rule.
         */
        /* line 218, scss/vendor/_normalize.scss */
        button:-moz-focusring,
        [type="button"]:-moz-focusring,
        [type="reset"]:-moz-focusring,
        [type="submit"]:-moz-focusring {
            outline: 1px dotted ButtonText;
        }

        /**
         * Correct the padding in Firefox.
         */
        /* line 229, scss/vendor/_normalize.scss */
        fieldset {
            padding: 0.35em 0.75em 0.625em;
        }

        /**
         * 1. Correct the text wrapping in Edge and IE.
         * 2. Correct the color inheritance from `fieldset` elements in IE.
         * 3. Remove the padding so developers are not caught out when they zero out
         *    `fieldset` elements in all browsers.
         */
        /* line 240, scss/vendor/_normalize.scss */
        legend {
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            /* 1 */
            color: inherit;
            /* 2 */
            display: table;
            /* 1 */
            max-width: 100%;
            /* 1 */
            padding: 0;
            /* 3 */
            white-space: normal;
            /* 1 */
        }

        /**
         * Add the correct vertical alignment in Chrome, Firefox, and Opera.
         */
        /* line 253, scss/vendor/_normalize.scss */
        progress {
            vertical-align: baseline;
        }

        /**
         * Remove the default vertical scrollbar in IE 10+.
         */
        /* line 261, scss/vendor/_normalize.scss */
        textarea {
            overflow: auto;
        }

        /**
         * 1. Add the correct box sizing in IE 10.
         * 2. Remove the padding in IE 10.
         */
        /* line 270, scss/vendor/_normalize.scss */
        [type="checkbox"],
        [type="radio"] {
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            /* 1 */
            padding: 0;
            /* 2 */
        }

        /**
         * Correct the cursor style of increment and decrement buttons in Chrome.
         */
        /* line 280, scss/vendor/_normalize.scss */
        [type="number"]::-webkit-inner-spin-button,
        [type="number"]::-webkit-outer-spin-button {
            height: auto;
        }

        /**
         * 1. Correct the odd appearance in Chrome and Safari.
         * 2. Correct the outline style in Safari.
         */
        /* line 290, scss/vendor/_normalize.scss */
        [type="search"] {
            -webkit-appearance: textfield;
            /* 1 */
            outline-offset: -2px;
            /* 2 */
        }

        /**
         * Remove the inner padding in Chrome and Safari on macOS.
         */
        /* line 299, scss/vendor/_normalize.scss */
        [type="search"]::-webkit-search-decoration {
            -webkit-appearance: none;
        }

        /**
         * 1. Correct the inability to style clickable types in iOS and Safari.
         * 2. Change font properties to `inherit` in Safari.
         */
        /* line 308, scss/vendor/_normalize.scss */
        ::-webkit-file-upload-button {
            -webkit-appearance: button;
            /* 1 */
            font: inherit;
            /* 2 */
        }

        /* Interactive
           ========================================================================== */
        /*
         * Add the correct display in Edge, IE 10+, and Firefox.
         */
        /* line 320, scss/vendor/_normalize.scss */
        details {
            display: block;
        }

        /*
         * Add the correct display in all browsers.
         */
        /* line 328, scss/vendor/_normalize.scss */
        summary {
            display: list-item;
        }

        /* Misc
           ========================================================================== */
        /**
         * Add the correct display in IE 10+.
         */
        /* line 339, scss/vendor/_normalize.scss */
        template {
            display: none;
        }

        /**
         * Add the correct display in IE 10.
         */
        /* line 347, scss/vendor/_normalize.scss */
        [hidden] {
            display: none;
        }

        /**
         * COLORS
         */
        /**
         * TIME
         */
        /**
         * SIZE
         */
        /**
         * ICONS
         */
        /* line 1, scss/modules/_base.scss */
        * {
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        /* line 5, scss/modules/_base.scss */
        html {
            font-size: 62.5%;
        }

        /* line 9, scss/modules/_base.scss */
        body {
            color: #3c3c3c;
            font-family: 'Open Sans', sans-serif;
            font-weight: 400;
            font-style: normal;
        }

        /* line 14, scss/modules/_base.scss */
        a {
            text-decoration: none;
            color: #3c3c3c;
        }

        /* line 19, scss/modules/_base.scss */
        h2 {
            text-align: center;
            font-size: 3.5rem;
        }

        /* line 20, scss/partials/_mixins.scss */
        h2:after {
            content: "";
            display: block;
            width: 256px;
            height: 40px;
            background-image: url(decoration.svg);
            background-size: contain;
            margin-top: 25px;
            margin-left: calc(50% - 128px);
        }

        /* line 25, scss/modules/_base.scss */
        .container {
            margin: 0 auto;
            padding: 0 15px;
        }

        /* line 30, scss/modules/_base.scss */
        .container--70 {
            width: 70vw;
        }

        /* line 30, scss/modules/_base.scss */
        .container--85 {
            width: 85vw;
        }

        /* line 30, scss/modules/_base.scss */
        .container--90 {
            width: 90vw;
        }

        /* line 36, scss/modules/_base.scss */
        .uppercase {
            text-transform: uppercase;
        }

        /* line 1, scss/modules/_buttons.scss */
        .btn {
            display: inline-block;
            font-size: 1.6rem;
            padding: 1em 1.666em;
            border: 1px solid #3c3c3c;
            text-align: center;
            -webkit-transition: border-color 0.2s ease-in-out;
            -o-transition: border-color 0.2s ease-in-out;
            transition: border-color 0.2s ease-in-out;
            background: transparent;
            cursor: pointer;
        }

        /* line 12, scss/modules/_buttons.scss */
        .btn:hover {
            border-color: #f9c910;
        }

        /* line 16, scss/modules/_buttons.scss */
        .btn--large {
            font-size: 3.6rem;
            line-height: 1.35em;
            text-transform: uppercase;
            padding: 0.5em 1.666em;
            font-family: 'Open Sans', sans-serif;
            font-weight: 300;
            font-style: normal;
        }

        /* line 24, scss/modules/_buttons.scss */
        .btn--small {
            font-size: 1.3rem;
            padding: 0.5em 0.6em;
        }

        /* line 29, scss/modules/_buttons.scss */
        .btn--without-border {
            border: 1px solid transparent;
        }

        /* line 32, scss/modules/_buttons.scss */
        .btn--without-border:hover {
            border: 1px solid #3c3c3c;
        }

        /* line 37, scss/modules/_buttons.scss */
        .btn--highlighted {
            border: 1px solid #f9c910;
        }

        /* line 41, scss/modules/_buttons.scss */
        .btn.active {
            border: 1px solid #3c3c3c;
        }

        /* line 1, scss/modules/_forms.scss */
        form {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
        }

        /* line 5, scss/modules/_forms.scss */
        form .form-group {
            width: 100%;
            padding: 0 15px;
            margin-bottom: 20px;
        }

        /* line 10, scss/modules/_forms.scss */
        form .form-group input:not([type="checkbox"]):not([type="radio"]),
        form .form-group textarea {
            border: 1px solid #3c3c3c;
            background: transparent;
            padding: 4px 14px;
            max-width: 200px;
            width: 100%;
            resize: none;
            font-size: 1.8rem;
        }

        /* line 21, scss/modules/_forms.scss */
        form .form-group textarea {
            max-width: 400px;
        }

        /* line 25, scss/modules/_forms.scss */
        form .form-group:last-of-type {
            margin-bottom: 0;
        }

        /* line 29, scss/modules/_forms.scss */
        form .form-group--50 {
            width: 50%;
        }

        /* line 33, scss/modules/_forms.scss */
        form .form-group--buttons {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: justify;
            -ms-flex-pack: justify;
            justify-content: space-between;
        }

        /* line 39, scss/modules/_forms.scss */
        form .form-group--inline label {
            font-size: 1.8rem;
            font-family: 'Open Sans', sans-serif;
            font-weight: 300;
            font-style: normal;
        }

        /* line 43, scss/modules/_forms.scss */
        form .form-group--inline label input {
            margin-left: 15px;
        }

        /* line 49, scss/modules/_forms.scss */
        form .form-group--checkbox {
            font-family: 'Open Sans', sans-serif;
            font-weight: 300;
            font-style: normal;
            font-size: 1.8rem;
        }

        /* line 53, scss/modules/_forms.scss */
        form .form-group--checkbox label {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }

        /* line 58, scss/modules/_forms.scss */
        form .form-group--checkbox input {
            position: absolute;
            opacity: 0;
            display: none;
        }

        /* line 64, scss/modules/_forms.scss */
        form .form-group--checkbox input:checked + .checkbox {
            background-color: #f9c910;
        }

        /* line 70, scss/modules/_forms.scss */
        form .form-group--checkbox .checkbox {
            padding: 14px;
            border: 1px solid #3c3c3c;
            display: block;
            position: relative;
            -webkit-transition: background 0.2s ease-in-out;
            -o-transition: background 0.2s ease-in-out;
            transition: background 0.2s ease-in-out;
            cursor: pointer;
        }

        /* line 78, scss/modules/_forms.scss */
        form .form-group--checkbox .checkbox:not(:empty) {
            padding: 6px 10px;
        }

        /* line 82, scss/modules/_forms.scss */
        form .form-group--checkbox .checkbox.radio {
            border-radius: 50%;
        }

        /* line 87, scss/modules/_forms.scss */
        form .form-group--checkbox .description {
            margin-left: 30px;
        }

        /* line 90, scss/modules/_forms.scss */
        form .form-group--checkbox .description .title {
            font-family: 'Merriweather', serif;
            font-weight: 300;
            font-style: normal;
            font-size: 2rem;
            margin-bottom: 5px;
        }

        /* line 96, scss/modules/_forms.scss */
        form .form-group--checkbox .description .subtitle {
            font-family: 'Merriweather', serif;
            font-weight: 300;
            font-style: light;
            font-size: 1.2rem;
        }

        /* line 104, scss/modules/_forms.scss */
        form .form-group--dropdown .dropdown {
            font-family: 'Open Sans', sans-serif;
            font-weight: 300;
            font-style: normal;
            max-width: 200px;
            min-height: 38px;
            position: relative;
        }

        /* line 111, scss/modules/_forms.scss */
        form .form-group--dropdown .dropdown.selecting > div {
            display: none;
        }

        /* line 115, scss/modules/_forms.scss */
        form .form-group--dropdown .dropdown.selecting ul {
            display: block;
        }

        /* line 120, scss/modules/_forms.scss */
        form .form-group--dropdown .dropdown li,
        form .form-group--dropdown .dropdown > div {
            border: 1px solid #3c3c3c;
            padding: 8px 10px;
            font-size: 1.8rem;
            cursor: pointer;
        }

        /* line 128, scss/modules/_forms.scss */
        form .form-group--dropdown .dropdown input {
            display: none;
            opacity: 0;
            position: absolute;
        }

        /* line 134, scss/modules/_forms.scss */
        form .form-group--dropdown .dropdown:after {
            content: "";
            position: absolute;
            right: 10px;
            top: 15px;
            width: 0;
            height: 0;
            border-left: 10px solid transparent;
            border-right: 10px solid transparent;
            border-top: 10px solid #3c3c3c;
            cursor: pointer;
            z-index: 2;
        }

        /* line 149, scss/modules/_forms.scss */
        form .form-group--dropdown ul {
            list-style: none;
            padding: 0;
            margin: 0;
            width: 100%;
            display: none;
            position: absolute;
            z-index: 1;
            background-color: #fff;
        }

        /* line 160, scss/modules/_forms.scss */
        form .form-group--dropdown ul li:not(:first-of-type) {
            margin: 10px 0;
        }

        /* line 164, scss/modules/_forms.scss */
        form .form-group--dropdown ul li:last-of-type {
            margin-bottom: 0;
        }

        /* line 173, scss/modules/_forms.scss */
        form .form-section h4 {
            font-family: 'Open Sans', sans-serif;
            font-weight: 600;
            font-style: normal;
            font-size: 1.8rem;
        }

        /* line 178, scss/modules/_forms.scss */
        form .form-section--checkboxes {
            max-width: 500px;
            width: 100%;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
        }

        /* line 184, scss/modules/_forms.scss */
        form .form-section--checkboxes > div {
            width: auto;
        }

        /* line 189, scss/modules/_forms.scss */
        form .form-section--columns {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
        }

        /* line 193, scss/modules/_forms.scss */
        form .form-section--columns > div {
            padding-right: 20px;
            -webkit-box-flex: 1;
            -ms-flex-positive: 1;
            flex-grow: 1;
        }

        /* line 197, scss/modules/_forms.scss */
        form .form-section--columns > div:last-of-type {
            padding-right: 0;
        }

        /* line 203, scss/modules/_forms.scss */
        form .form-section--columns .form-group label {
            width: 100%;
            display: block;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: justify;
            -ms-flex-pack: justify;
            justify-content: space-between;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }

        /* line 210, scss/modules/_forms.scss */
        form .form-section--columns .form-group label textarea, form .form-section--columns .form-group label input {
            margin-left: 20px;
            max-width: 200px;
        }

        /* line 220, scss/modules/_forms.scss */
        form.form--contact input:not([type="checkbox"]):not([type="radio"]),
        form.form--contact textarea {
            padding: 8px 12px;
            width: 100%;
            border: none;
            border-bottom: 1px solid #3c3c3c;
            background: transparent;
            resize: none;
            font-size: 1.4rem;
            outline: none;
            -webkit-transition: border 0.2s ease-in-out;
            -o-transition: border 0.2s ease-in-out;
            transition: border 0.2s ease-in-out;
            color: #3c3c3c;
            max-width: none;
        }

        /* line 234, scss/modules/_forms.scss */
        form.form--contact input:not([type="checkbox"]):not([type="radio"]):focus,
        form.form--contact textarea:focus {
            border-bottom: 3px solid #f9c910;
        }

        /* line 238, scss/modules/_forms.scss */
        form.form--contact input:not([type="checkbox"]):not([type="radio"])::-webkit-input-placeholder,
        form.form--contact textarea::-webkit-input-placeholder {
            font-family: 'Open Sans', sans-serif;
            font-weight: 400;
            font-style: normal;
            color: #3c3c3c;
        }
        form.form--contact input:not([type="checkbox"]):not([type="radio"]):-ms-input-placeholder,
        form.form--contact textarea:-ms-input-placeholder {
            font-family: 'Open Sans', sans-serif;
            font-weight: 400;
            font-style: normal;
            color: #3c3c3c;
        }
        form.form--contact input:not([type="checkbox"]):not([type="radio"])::-ms-input-placeholder,
        form.form--contact textarea::-ms-input-placeholder {
            font-family: 'Open Sans', sans-serif;
            font-weight: 400;
            font-style: normal;
            color: #3c3c3c;
        }
        form.form--contact input:not([type="checkbox"]):not([type="radio"])::placeholder,
        form.form--contact textarea::placeholder {
            font-family: 'Open Sans', sans-serif;
            font-weight: 400;
            font-style: normal;
            color: #3c3c3c;
        }

        /* line 2, scss/modules/_header.scss */
        header.header--main-page {
            background-image: url(header-bg.jpg);
            background-position: bottom left -30vh;
            background-repeat: no-repeat;
            background-size: 70vw;
            height: 100vh;
        }

        @media (min-width: 990px) and (max-width: 1230px) {
            /* line 2, scss/modules/_header.scss */
            header.header--main-page {
                background-position: bottom left -55vh;
                background-size: 90vw;
            }
        }

        /* line 15, scss/modules/_header.scss */
        header.header--form-page {
            background-image: url(header-form-bg.jpg);
            background-position: top left -500px;
            background-repeat: no-repeat;
            background-size: auto 100%;
            height: 100vh;
        }

        /* line 23, scss/modules/_header.scss */
        header .slogan {
            height: calc(100% - 141px);
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: end;
            -ms-flex-pack: end;
            justify-content: flex-end;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }

        /* line 29, scss/modules/_header.scss */
        header .slogan--item {
            width: 100%;
        }

        @media (min-width: 990px) and (max-width: 1230px) {
            /* line 29, scss/modules/_header.scss */
            header .slogan--item {
                width: 75%;
            }
        }

        @media screen and (min-width: 1230px) {
            /* line 29, scss/modules/_header.scss */
            header .slogan--item {
                width: 60%;
            }
        }

        /* line 41, scss/modules/_header.scss */
        header .slogan--item h1 {
            text-align: center;
            font-size: 3.5rem;
            line-height: 5rem;
            font-family: 'Open Sans', sans-serif;
            font-weight: 300;
            font-style: normal;
        }

        /* line 20, scss/partials/_mixins.scss */
        header .slogan--item h1:after {
            content: "";
            display: block;
            width: 256px;
            height: 40px;
            background-image: url(decoration.svg);
            background-size: contain;
            margin-top: 25px;
            margin-left: calc(50% - 128px);
        }

        /* line 50, scss/modules/_header.scss */
        header .slogan--buttons {
            list-style: none;
            padding: 0;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            margin-top: 80px;
        }

        /* line 57, scss/modules/_header.scss */
        header .slogan--buttons li {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            width: 100%;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            padding-bottom: 0;
        }

        /* line 62, scss/modules/_header.scss */
        header .slogan--buttons li .btn {
            max-width: 320px;
        }

        /* line 68, scss/modules/_header.scss */
        header .slogan--buttons li:nth-child(1) {
            padding-right: 25px;
            -webkit-box-pack: end;
            -ms-flex-pack: end;
            justify-content: flex-end;
        }

        /* line 72, scss/modules/_header.scss */
        header .slogan--buttons li:nth-child(2) {
            padding-left: 25px;
            -webkit-box-pack: start;
            -ms-flex-pack: start;
            justify-content: flex-start;
        }

        /* line 79, scss/modules/_header.scss */
        header .slogan--steps {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            margin-top: 40px;
        }

        /* line 85, scss/modules/_header.scss */
        header .slogan--steps-title {
            text-align: center;
            font-size: 3.5rem;
            line-height: 5rem;
            font-family: 'Open Sans', sans-serif;
            font-weight: 300;
            font-style: normal;
        }

        /* line 92, scss/modules/_header.scss */
        header .slogan--steps ul {
            list-style: none;
            padding: 0;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            margin-top: 60px;
        }

        /* line 99, scss/modules/_header.scss */
        header .slogan--steps ul li {
            border: 1px solid #3c3c3c;
            -webkit-transform: rotate(45deg);
            -ms-transform: rotate(45deg);
            transform: rotate(45deg);
            width: 125px;
            height: 125px;
            margin: 0 14px;
        }

        /* line 106, scss/modules/_header.scss */
        header .slogan--steps ul li > div {
            -webkit-transform: rotate(-45deg);
            -ms-transform: rotate(-45deg);
            transform: rotate(-45deg);
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            width: 125px;
            height: 125px;
            font-family: 'Open Sans', sans-serif;
            font-weight: 300;
            font-style: normal;
        }

        /* line 116, scss/modules/_header.scss */
        header .slogan--steps ul li em {
            font-size: 2.5rem;
            font-style: normal;
        }

        /* line 121, scss/modules/_header.scss */
        header .slogan--steps ul li span {
            text-align: center;
            font-size: 2rem;
            margin-top: 15px;
        }

        /* line 1, scss/modules/_navigation.scss */
        header {
            position: relative;
        }

        /* line 4, scss/modules/_navigation.scss */
        header nav {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            -webkit-box-align: end;
            -ms-flex-align: end;
            align-items: flex-end;
        }

        /* line 9, scss/modules/_navigation.scss */
        header nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            font-size: 1.8rem;
        }

        /* line 16, scss/modules/_navigation.scss */
        header nav ul.nav--actions {
            font-size: 1.4rem;
            color: #737373;
            margin: 30px 0 8px;
        }

        /* line 21, scss/modules/_navigation.scss */
        header nav ul.nav--actions .logged-user {
            padding-right: 30px;
            position: relative;
            cursor: pointer;
        }

        /* line 26, scss/modules/_navigation.scss */
        header nav ul.nav--actions .logged-user:after {
            content: "";
            width: 15px;
            height: 15px;
            display: block;
            position: absolute;
            top: 0;
            right: 0;
            background-image: url(icon-gear.png);
            background-size: cover;
        }

        /* line 38, scss/modules/_navigation.scss */
        header nav ul.nav--actions .logged-user ul {
            display: none;
            position: absolute;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            text-align: right;
            background-color: #fff;
            padding: 12px 0 0;
            font-size: 1.4rem;
            width: 120px;
            right: 0;
        }

        /* line 49, scss/modules/_navigation.scss */
        header nav ul.nav--actions .logged-user ul li {
            border-left: 1px solid #3c3c3c;
            border-right: 1px solid #3c3c3c;
        }

        /* line 53, scss/modules/_navigation.scss */
        header nav ul.nav--actions .logged-user ul li:first-of-type {
            border-top: 1px solid #3c3c3c;
        }

        /* line 57, scss/modules/_navigation.scss */
        header nav ul.nav--actions .logged-user ul li:last-of-type {
            border-bottom: 1px solid #3c3c3c;
        }

        /* line 62, scss/modules/_navigation.scss */
        header nav ul.nav--actions .logged-user ul a {
            display: inline-block;
            padding: 6px;
        }

        /* line 69, scss/modules/_navigation.scss */
        header nav ul.nav--actions .logged-user:hover ul {
            display: block;
        }

        /* line 76, scss/modules/_navigation.scss */
        header nav ul li {
            padding: 0 5px;
        }

        /* line 79, scss/modules/_navigation.scss */
        header nav ul li:last-of-type {
            padding-right: 0;
        }

        /* line 1, scss/modules/_stats.scss */
        .stats {
            background-image: url(stats-bg.jpg);
        }

        /* line 4, scss/modules/_stats.scss */
        .stats .container {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            padding: 50px;
        }

        /* line 9, scss/modules/_stats.scss */
        .stats--item {
            text-align: center;
            padding: 0 2vw;
        }

        /* line 13, scss/modules/_stats.scss */
        .stats--item em {
            font-family: 'Open Sans', sans-serif;
            font-weight: 300;
            font-style: normal;
            font-size: 5.5rem;
            font-style: normal;
        }

        /* line 19, scss/modules/_stats.scss */
        .stats--item h3 {
            font-size: 1.8rem;
            text-transform: uppercase;
            margin: 2em 0;
        }

        /* line 25, scss/modules/_stats.scss */
        .stats--item p {
            font-family: 'Merriweather', serif;
            font-weight: 300;
            font-style: normal;
            font-size: 1.6rem;
        }

        /* line 1, scss/modules/homepage-sections/_steps.scss */
        .steps {
            margin: 60px 0;
            padding: 0 30px;
            text-align: center;
        }

        /* line 6, scss/modules/homepage-sections/_steps.scss */
        .steps--container {
            margin: 0 auto;
            padding: 50px 0;
            max-width: 1100px;
            width: 100%;
            background-color: #ebebeb;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: baseline;
            -ms-flex-align: baseline;
            align-items: baseline;
            -ms-flex-pack: distribute;
            justify-content: space-around;
        }

        /* line 17, scss/modules/homepage-sections/_steps.scss */
        .steps--item {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            text-align: center;
            padding: 0 35px;
        }

        /* line 24, scss/modules/homepage-sections/_steps.scss */
        .steps--item .icon {
            width: 60px;
            height: 60px;
            background-size: contain;
            background-position: center;
            background-repeat: no-repeat;
            display: block;
        }

        /* line 33, scss/modules/homepage-sections/_steps.scss */
        .steps--item .icon--hands {
            background-image: url("icon-hands.png");
        }

        /* line 33, scss/modules/homepage-sections/_steps.scss */
        .steps--item .icon--arrow {
            background-image: url("icon-arrow.png");
        }

        /* line 33, scss/modules/homepage-sections/_steps.scss */
        .steps--item .icon--glasses {
            background-image: url("icon-glasses.png");
        }

        /* line 33, scss/modules/homepage-sections/_steps.scss */
        .steps--item .icon--courier {
            background-image: url("icon-courier.png");
        }

        /* line 39, scss/modules/homepage-sections/_steps.scss */
        .steps--item h3 {
            font-size: 1.8rem;
            margin-bottom: 0;
        }

        /* line 43, scss/modules/homepage-sections/_steps.scss */
        .steps--item h3:after {
            content: "";
            display: block;
            margin-top: 20px;
            margin-left: calc(50% - 45px);
            width: 90px;
            height: 1px;
            background-color: #3c3c3c;
        }

        /* line 54, scss/modules/homepage-sections/_steps.scss */
        .steps--item p {
            font-size: 1.6rem;
        }

        /* line 59, scss/modules/homepage-sections/_steps.scss */
        .steps .btn {
            margin-top: 30px;
        }

        /* line 1, scss/modules/homepage-sections/_about-us.scss */
        .about-us {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            background-color: #ebebeb;
            padding: 60px 0;
        }

        /* line 7, scss/modules/homepage-sections/_about-us.scss */
        .about-us > div {
            width: 50%;
        }

        /* line 11, scss/modules/homepage-sections/_about-us.scss */
        .about-us--text {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            text-align: center;
        }

        /* line 16, scss/modules/homepage-sections/_about-us.scss */
        .about-us--text p {
            width: 70%;
            font-size: 2.2rem;
            line-height: 2em;
        }

        /* line 22, scss/modules/homepage-sections/_about-us.scss */
        .about-us--text-signature {
            width: 200px;
            margin-right: 50px;
            -ms-flex-item-align: end;
            align-self: flex-end;
        }

        /* line 30, scss/modules/homepage-sections/_about-us.scss */
        .about-us--image img {
            width: 100%;
            height: auto;
        }

        /* line 1, scss/modules/homepage-sections/_help.scss */
        .help {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            max-width: 990px;
            width: 100%;
            padding: 0 30px;
            margin: 60px auto;
        }

        /* line 7, scss/modules/homepage-sections/_help.scss */
        .help--buttons {
            padding: 0;
            margin: 20px 0;
            list-style: none;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
        }

        /* line 13, scss/modules/homepage-sections/_help.scss */
        .help--buttons li {
            margin: 0 10px;
        }

        /* line 18, scss/modules/homepage-sections/_help.scss */
        .help--slides {
            width: 100%;
            margin-top: 30px;
            display: none;
        }

        /* line 23, scss/modules/homepage-sections/_help.scss */
        .help--slides.active {
            display: block;
        }

        /* line 27, scss/modules/homepage-sections/_help.scss */
        .help--slides > p {
            margin: 0 auto 30px;
            max-width: 630px;
            width: 100%;
            font-size: 1.8rem;
            text-align: center;
            line-height: 2em;
        }

        /* line 36, scss/modules/homepage-sections/_help.scss */
        .help--slides ul {
            list-style: none;
            padding: 0;
        }

        /* line 43, scss/modules/homepage-sections/_help.scss */
        .help--slides-items li {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: justify;
            -ms-flex-pack: justify;
            justify-content: space-between;
            width: 100%;
            margin-bottom: 35px;
        }

        /* line 49, scss/modules/homepage-sections/_help.scss */
        .help--slides-items li:last-child {
            margin-bottom: 0;
        }

        /* line 54, scss/modules/homepage-sections/_help.scss */
        .help--slides-items .col {
            width: 100%;
        }

        /* line 57, scss/modules/homepage-sections/_help.scss */
        .help--slides-items .col:last-child {
            text-align: right;
        }

        /* line 61, scss/modules/homepage-sections/_help.scss */
        .help--slides-items .col:after {
            content: "";
            width: 70%;
            height: 1px;
            display: block;
            position: relative;
            margin-top: 25px;
            background-color: #bcbcbc;
        }

        /* line 72, scss/modules/homepage-sections/_help.scss */
        .help--slides-items .col:last-child:after {
            float: right;
        }

        /* line 77, scss/modules/homepage-sections/_help.scss */
        .help--slides-items .col .title {
            font-family: 'Merriweather', serif;
            font-weight: 300;
            font-style: normal;
            font-size: 2rem;
            margin-bottom: 5px;
        }

        /* line 83, scss/modules/homepage-sections/_help.scss */
        .help--slides-items .col .subtitle {
            font-family: 'Merriweather', serif;
            font-weight: 300;
            font-style: light;
            font-size: 1.2rem;
        }

        /* line 88, scss/modules/homepage-sections/_help.scss */
        .help--slides-items .col .text {
            font-family: 'Merriweather', serif;
            font-weight: 300;
            font-style: normal;
            font-size: 1.2rem;
            margin-top: 20px;
        }

        /* line 96, scss/modules/homepage-sections/_help.scss */
        .help--slides-pagination {
            margin-top: 40px;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
        }

        /* line 101, scss/modules/homepage-sections/_help.scss */
        .help--slides-pagination li {
            margin: 0 8px;
        }

        /* line 1, scss/modules/_footer.scss */
        footer {
            min-height: 80vh;
            background-image: url(footer-bg.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            -webkit-box-align: end;
            -ms-flex-align: end;
            align-items: flex-end;
            -webkit-box-pack: justify;
            -ms-flex-pack: justify;
            justify-content: space-between;
            position: relative;
        }

        /* line 13, scss/modules/_footer.scss */
        footer .contact {
            max-width: 580px;
            width: 100%;
            padding-right: 30px;
            -webkit-box-flex: 1;
            -ms-flex-positive: 1;
            flex-grow: 1;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
        }

        /* line 22, scss/modules/_footer.scss */
        footer .contact h3 {
            padding: 0 15px;
            font-size: 1.4rem;
            text-transform: uppercase;
        }

        /* line 29, scss/modules/_footer.scss */
        footer .contact form {
            margin-top: 15px;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
        }

        /* line 33, scss/modules/_footer.scss */
        footer .contact form [type="submit"] {
            margin-top: 35px;
        }

        /* line 39, scss/modules/_footer.scss */
        footer .bottom-line {
            -ms-flex-item-align: center;
            align-self: center;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            margin-bottom: 12px;
        }

        /* line 44, scss/modules/_footer.scss */
        footer .bottom-line--copy {
            font-family: 'Merriweather', serif;
            font-weight: 400;
            font-style: normal;
            font-size: 1.2rem;
        }

        /* line 49, scss/modules/_footer.scss */
        footer .bottom-line--icons {
            position: absolute;
            right: 10vw;
            bottom: 20px;
        }

        /* line 55, scss/modules/_footer.scss */
        footer .bottom-line--icons a img {
            width: 20px;
            height: 20px;
            opacity: 0.8;
        }

        /* line 19, scss/style.scss */
        .login-page {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            padding: 0 15px;
            margin: 50px 0;
        }

        /* line 26, scss/style.scss */
        .login-page form {
            max-width: 580px;
            width: 100%;
            margin-top: 30px;
        }

        /* line 31, scss/style.scss */
        .login-page form .reset-password {
            float: right;
            margin-top: 20px;
            font-size: 1.4rem;
        }

        /* line 37, scss/style.scss */
        .login-page form .form-group {
            margin-bottom: 40px;
        }

        /* line 40, scss/style.scss */
        .login-page form .form-group--buttons {
            margin-top: 50px;
        }

        /* line 44, scss/style.scss */
        .login-page form .form-group:last-of-type {
            margin-bottom: 0;
        }

        /* line 52, scss/style.scss */
        .form--steps h3 {
            margin: 0;
            font-family: 'Open Sans', sans-serif;
            font-weight: 600;
            font-style: normal;
            font-size: 3rem;
        }

        /* line 58, scss/style.scss */
        .form--steps-instructions {
            background-color: #f9c910;
            padding: 40px 0;
        }

        /* line 62, scss/style.scss */
        .form--steps-instructions p {
            margin: 0;
            font-size: 1.8rem;
            display: none;
        }

        /* line 69, scss/style.scss */
        .form--steps .active {
            display: block;
        }

        /* line 73, scss/style.scss */
        .form--steps-container {
            max-width: 1500px;
            width: 100%;
            padding: 0 30px;
            margin: 0 auto;
        }

        /* line 77, scss/style.scss */
        .form--steps-counter {
            font-family: 'Open Sans', sans-serif;
            font-weight: 300;
            font-style: normal;
            font-size: 2rem;
            width: 100%;
            -ms-flex-item-align: start;
            align-self: flex-start;
        }

        /* line 84, scss/style.scss */
        .form--steps > .form--steps-container {
            max-width: none;
            padding: 20px 30px 60px;
            background-image: url(form-bg.jpg);
            background-size: cover;
            background-position: center right;
            min-height: 700px;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
        }

        /* line 96, scss/style.scss */
        .form--steps form > div {
            display: none;
        }

        /* line 100, scss/style.scss */
        .form--steps form h3 {
            margin-bottom: 30px;
        }

        /* line 104, scss/style.scss */
        .form--steps form .form-group--buttons {
            margin-top: 40px;
            -webkit-box-pack: start;
            -ms-flex-pack: start;
            justify-content: flex-start;
        }

        /* line 109, scss/style.scss */
        .form--steps form .form-group--buttons .btn:nth-of-type(2) {
            margin-left: 30px;
        }

        /* line 116, scss/style.scss */
        .form--steps form [data-step="4"] .form-group--checkbox {
            padding-top: 20px;
            border-top: 1px solid #3c3c3c;
        }

        /* line 120, scss/style.scss */
        .form--steps form [data-step="4"] .form-group--checkbox:first-of-type {
            border-top: none;
        }

        /* line 126, scss/style.scss */
        .form--steps form [data-step="6"] {
            -ms-flex-item-align: center;
            align-self: center;
        }

        /* line 130, scss/style.scss */
        .form--steps form [data-step="7"] {
            max-width: 700px;
            width: 100%;
            text-align: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }

        /* line 136, scss/style.scss */
        .form--steps form [data-step="7"].active {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
        }

        /* line 140, scss/style.scss */
        .form--steps form [data-step="7"] h2 {
            text-align: center;
            font-size: 3rem;
            line-height: 4.5rem;
            font-family: 'Open Sans', sans-serif;
            font-weight: 300;
            font-style: normal;
        }

        /* line 20, scss/partials/_mixins.scss */
        .form--steps form [data-step="7"] h2:after {
            content: "";
            display: block;
            width: 256px;
            height: 40px;
            background-image: url(decoration.svg);
            background-size: contain;
            margin-top: 25px;
            margin-left: calc(50% - 128px);
        }

        /* line 149, scss/style.scss */
        .form--steps form .summary {
            padding: 0 15px;
        }

        /* line 152, scss/style.scss */
        .form--steps form .summary ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        /* line 157, scss/style.scss */
        .form--steps form .summary ul li {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            font-size: 1.8rem;
            margin-bottom: 10px;
        }

        /* line 163, scss/style.scss */
        .form--steps form .summary ul li .icon {
            width: 60px;
            height: 60px;
            background-size: cover;
            margin-right: 20px;
        }

        /* line 169, scss/style.scss */
        .form--steps form .summary ul li .icon-bag {
            background-image: url(icon-bag.png);
        }

        /* line 173, scss/style.scss */
        .form--steps form .summary ul li .icon-hand {
            background-image: url(icon-hand.png);
        }

        /*# sourceMappingURL=data:application/json;charset=utf8;base64,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QixrQkFBa0I7RUFDbEIsb0JBQW9CO0NBQ3JCOztBQUVELCtCQUErQjtBQUMvQjtFQUNFLFlBQVk7RUFDWixhQUFhO0VBQ2IsdUJBQXVCO0VBQ3ZCLG1CQUFtQjtDQUNwQjs7QUFFRCwrQkFBK0I7QUFDL0I7RUFDRSw4Q0FBOEM7Q0FDL0M7O0FBRUQsK0JBQStCO0FBQy9CO0VBQ0UsK0NBQStDO0NBQ2hEIiwiZmlsZSI6InN0eWxlLmNzcyIsInNvdXJjZXNDb250ZW50IjpbIkBpbXBvcnQgdXJsKFwiaHR0cHM6Ly9mb250cy5nb29nbGVhcGlzLmNvbS9jc3M/ZmFtaWx5PU1lcnJpd2VhdGhlcjozMDAsMzAwaSw0MDB8T3BlbitTYW5zOjMwMCw0MDAsNjAwJnN1YnNldD1sYXRpbi1leHRcIik7XG4vKiEgbm9ybWFsaXplLmNzcyB2OC4wLjEgfCBNSVQgTGljZW5zZSB8IGdpdGh1Yi5jb20vbmVjb2xhcy9ub3JtYWxpemUuY3NzICovXG4vKiBEb2N1bWVudFxuICAgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0gKi9cbi8qKlxuICogMS4gQ29ycmVjdCB0aGUgbGluZSBoZWlnaHQgaW4gYWxsIGJyb3dzZXJzLlxuICogMi4gUHJldmVudCBhZGp1c3RtZW50cyBvZiBmb250IHNpemUgYWZ0ZXIgb3JpZW50YXRpb24gY2hhbmdlcyBpbiBpT1MuXG4gKi9cbi8qIGxpbmUgMTEsIHNjc3MvdmVuZG9yL19ub3JtYWxpemUuc2NzcyAqL1xuaHRtbCB7XG4gIGxpbmUtaGVpZ2h0OiAxLjE1O1xuICAvKiAxICovXG4gIC13ZWJraXQtdGV4dC1zaXplLWFkanVzdDogMTAwJTtcbiAgLyogMiAqL1xufVxuXG4vKiBTZWN0aW9uc1xuICAgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0gKi9cbi8qKlxuICogUmVtb3ZlIHRoZSBtYXJnaW4gaW4gYWxsIGJyb3dzZXJzLlxuICovXG4vKiBsaW5lIDIzLCBzY3NzL3ZlbmRvci9fbm9ybWFsaXplLnNjc3MgKi9cbmJvZHkge1xuICBtYXJnaW46IDA7XG59XG5cbi8qKlxuICogUmVuZGVyIHRoZSBgbWFpbmAgZWxlbWVudCBjb25zaXN0ZW50bHkgaW4gSUUuXG4gKi9cbi8qIGxpbmUgMzEsIHNjc3MvdmVuZG9yL19ub3JtYWxpemUuc2NzcyAqL1xubWFpbiB7XG4gIGRpc3BsYXk6IGJsb2NrO1xufVxuXG4vKipcbiAqIENvcnJlY3QgdGhlIGZvbnQgc2l6ZSBhbmQgbWFyZ2luIG9uIGBoMWAgZWxlbWVudHMgd2l0aGluIGBzZWN0aW9uYCBhbmRcbiAqIGBhcnRpY2xlYCBjb250ZXh0cyBpbiBDaHJvbWUsIEZpcmVmb3gsIGFuZCBTYWZhcmkuXG4gKi9cbi8qIGxpbmUgNDAsIHNjc3MvdmVuZG9yL19ub3JtYWxpemUuc2NzcyAqL1xuaDEge1xuICBmb250LXNpemU6IDJlbTtcbiAgbWFyZ2luOiAwLjY3ZW0gMDtcbn1cblxuLyogR3JvdXBpbmcgY29udGVudFxuICAgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0gKi9cbi8qKlxuICogMS4gQWRkIHRoZSBjb3JyZWN0IGJveCBzaXppbmcgaW4gRmlyZWZveC5cbiAqIDIuIFNob3cgdGhlIG92ZXJmbG93IGluIEVkZ2UgYW5kIElFLlxuICovXG4vKiBsaW5lIDUzLCBzY3NzL3ZlbmRvci9fbm9ybWFsaXplLnNjc3MgKi9cbmhyIHtcbiAgYm94LXNpemluZzogY29udGVudC1ib3g7XG4gIC8qIDEgKi9cbiAgaGVpZ2h0OiAwO1xuICAvKiAxICovXG4gIG92ZXJmbG93OiB2aXNpYmxlO1xuICAvKiAyICovXG59XG5cbi8qKlxuICogMS4gQ29ycmVjdCB0aGUgaW5oZXJpdGFuY2UgYW5kIHNjYWxpbmcgb2YgZm9udCBzaXplIGluIGFsbCBicm93c2Vycy5cbiAqIDIuIENvcnJlY3QgdGhlIG9kZCBgZW1gIGZvbnQgc2l6aW5nIGluIGFsbCBicm93c2Vycy5cbiAqL1xuLyogbGluZSA2NCwgc2Nzcy92ZW5kb3IvX25vcm1hbGl6ZS5zY3NzICovXG5wcmUge1xuICBmb250LWZhbWlseTogbW9ub3NwYWNlLCBtb25vc3BhY2U7XG4gIC8qIDEgKi9cbiAgZm9udC1zaXplOiAxZW07XG4gIC8qIDIgKi9cbn1cblxuLyogVGV4dC1sZXZlbCBzZW1hbnRpY3NcbiAgID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09ICovXG4vKipcbiAqIFJlbW92ZSB0aGUgZ3JheSBiYWNrZ3JvdW5kIG9uIGFjdGl2ZSBsaW5rcyBpbiBJRSAxMC5cbiAqL1xuLyogbGluZSA3Niwgc2Nzcy92ZW5kb3IvX25vcm1hbGl6ZS5zY3NzICovXG5hIHtcbiAgYmFja2dyb3VuZC1jb2xvcjogdHJhbnNwYXJlbnQ7XG59XG5cbi8qKlxuICogMS4gUmVtb3ZlIHRoZSBib3R0b20gYm9yZGVyIGluIENocm9tZSA1Ny1cbiAqIDIuIEFkZCB0aGUgY29ycmVjdCB0ZXh0IGRlY29yYXRpb24gaW4gQ2hyb21lLCBFZGdlLCBJRSwgT3BlcmEsIGFuZCBTYWZhcmkuXG4gKi9cbi8qIGxpbmUgODUsIHNjc3MvdmVuZG9yL19ub3JtYWxpemUuc2NzcyAqL1xuYWJiclt0aXRsZV0ge1xuICBib3JkZXItYm90dG9tOiBub25lO1xuICAvKiAxICovXG4gIHRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lO1xuICAvKiAyICovXG4gIHRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lIGRvdHRlZDtcbiAgLyogMiAqL1xufVxuXG4vKipcbiAqIEFkZCB0aGUgY29ycmVjdCBmb250IHdlaWdodCBpbiBDaHJvbWUsIEVkZ2UsIGFuZCBTYWZhcmkuXG4gKi9cbi8qIGxpbmUgOTUsIHNjc3MvdmVuZG9yL19ub3JtYWxpemUuc2NzcyAqL1xuYixcbnN0cm9uZyB7XG4gIGZvbnQtd2VpZ2h0OiBib2xkZXI7XG59XG5cbi8qKlxuICogMS4gQ29ycmVjdCB0aGUgaW5oZXJpdGFuY2UgYW5kIHNjYWxpbmcgb2YgZm9udCBzaXplIGluIGFsbCBicm93c2Vycy5cbiAqIDIuIENvcnJlY3QgdGhlIG9kZCBgZW1gIGZvbnQgc2l6aW5nIGluIGFsbCBicm93c2Vycy5cbiAqL1xuLyogbGluZSAxMDUsIHNjc3MvdmVuZG9yL19ub3JtYWxpemUuc2NzcyAqL1xuY29kZSxcbmtiZCxcbnNhbXAge1xuICBmb250LWZhbWlseTogbW9ub3NwYWNlLCBtb25vc3BhY2U7XG4gIC8qIDEgKi9cbiAgZm9udC1zaXplOiAxZW07XG4gIC8qIDIgKi9cbn1cblxuLyoqXG4gKiBBZGQgdGhlIGNvcnJlY3QgZm9udCBzaXplIGluIGFsbCBicm93c2Vycy5cbiAqL1xuLyogbGluZSAxMTYsIHNjc3MvdmVuZG9yL19ub3JtYWxpemUuc2NzcyAqL1xuc21hbGwge1xuICBmb250LXNpemU6IDgwJTtcbn1cblxuLyoqXG4gKiBQcmV2ZW50IGBzdWJgIGFuZCBgc3VwYCBlbGVtZW50cyBmcm9tIGFmZmVjdGluZyB0aGUgbGluZSBoZWlnaHQgaW5cbiAqIGFsbCBicm93c2Vycy5cbiAqL1xuLyogbGluZSAxMjUsIHNjc3MvdmVuZG9yL19ub3JtYWxpemUuc2NzcyAqL1xuc3ViLFxuc3VwIHtcbiAgZm9udC1zaXplOiA3NSU7XG4gIGxpbmUtaGVpZ2h0OiAwO1xuICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gIHZlcnRpY2FsLWFsaWduOiBiYXNlbGluZTtcbn1cblxuLyogbGluZSAxMzMsIHNjc3MvdmVuZG9yL19ub3JtYWxpemUuc2NzcyAqL1xuc3ViIHtcbiAgYm90dG9tOiAtMC4yNWVtO1xufVxuXG4vKiBsaW5lIDEzNywgc2Nzcy92ZW5kb3IvX25vcm1hbGl6ZS5zY3NzICovXG5zdXAge1xuICB0b3A6IC0wLjVlbTtcbn1cblxuLyogRW1iZWRkZWQgY29udGVudFxuICAgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0gKi9cbi8qKlxuICogUmVtb3ZlIHRoZSBib3JkZXIgb24gaW1hZ2VzIGluc2lkZSBsaW5rcyBpbiBJRSAxMC5cbiAqL1xuLyogbGluZSAxNDgsIHNjc3MvdmVuZG9yL19ub3JtYWxpemUuc2NzcyAqL1xuaW1nIHtcbiAgYm9yZGVyLXN0eWxlOiBub25lO1xufVxuXG4vKiBGb3Jtc1xuICAgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0gKi9cbi8qKlxuICogMS4gQ2hhbmdlIHRoZSBmb250IHN0eWxlcyBpbiBhbGwgYnJvd3NlcnMuXG4gKiAyLiBSZW1vdmUgdGhlIG1hcmdpbiBpbiBGaXJlZm94IGFuZCBTYWZhcmkuXG4gKi9cbi8qIGxpbmUgMTYwLCBzY3NzL3ZlbmRvci9fbm9ybWFsaXplLnNjc3MgKi9cbmJ1dHRvbixcbmlucHV0LFxub3B0Z3JvdXAsXG5zZWxlY3QsXG50ZXh0YXJlYSB7XG4gIGZvbnQtZmFtaWx5OiBpbmhlcml0O1xuICAvKiAxICovXG4gIGZvbnQtc2l6ZTogMTAwJTtcbiAgLyogMSAqL1xuICBsaW5lLWhlaWdodDogMS4xNTtcbiAgLyogMSAqL1xuICBtYXJnaW46IDA7XG4gIC8qIDIgKi9cbn1cblxuLyoqXG4gKiBTaG93IHRoZSBvdmVyZmxvdyBpbiBJRS5cbiAqIDEuIFNob3cgdGhlIG92ZXJmbG93IGluIEVkZ2UuXG4gKi9cbi8qIGxpbmUgMTc2LCBzY3NzL3ZlbmRvci9fbm9ybWFsaXplLnNjc3MgKi9cbmJ1dHRvbixcbmlucHV0IHtcbiAgLyogMSAqL1xuICBvdmVyZmxvdzogdmlzaWJsZTtcbn1cblxuLyoqXG4gKiBSZW1vdmUgdGhlIGluaGVyaXRhbmNlIG9mIHRleHQgdHJhbnNmb3JtIGluIEVkZ2UsIEZpcmVmb3gsIGFuZCBJRS5cbiAqIDEuIFJlbW92ZSB0aGUgaW5oZXJpdGFuY2Ugb2YgdGV4dCB0cmFuc2Zvcm0gaW4gRmlyZWZveC5cbiAqL1xuLyogbGluZSAxODYsIHNjc3MvdmVuZG9yL19ub3JtYWxpemUuc2NzcyAqL1xuYnV0dG9uLFxuc2VsZWN0IHtcbiAgLyogMSAqL1xuICB0ZXh0LXRyYW5zZm9ybTogbm9uZTtcbn1cblxuLyoqXG4gKiBDb3JyZWN0IHRoZSBpbmFiaWxpdHkgdG8gc3R5bGUgY2xpY2thYmxlIHR5cGVzIGluIGlPUyBhbmQgU2FmYXJpLlxuICovXG4vKiBsaW5lIDE5NSwgc2Nzcy92ZW5kb3IvX25vcm1hbGl6ZS5zY3NzICovXG5idXR0b24sXG5bdHlwZT1cImJ1dHRvblwiXSxcblt0eXBlPVwicmVzZXRcIl0sXG5bdHlwZT1cInN1Ym1pdFwiXSB7XG4gIC13ZWJraXQtYXBwZWFyYW5jZTogYnV0dG9uO1xufVxuXG4vKipcbiAqIFJlbW92ZSB0aGUgaW5uZXIgYm9yZGVyIGFuZCBwYWRkaW5nIGluIEZpcmVmb3guXG4gKi9cbi8qIGxpbmUgMjA2LCBzY3NzL3ZlbmRvci9fbm9ybWFsaXplLnNjc3MgKi9cbmJ1dHRvbjo6LW1vei1mb2N1cy1pbm5lcixcblt0eXBlPVwiYnV0dG9uXCJdOjotbW96LWZvY3VzLWlubmVyLFxuW3R5cGU9XCJyZXNldFwiXTo6LW1vei1mb2N1cy1pbm5lcixcblt0eXBlPVwic3VibWl0XCJdOjotbW96LWZvY3VzLWlubmVyIHtcbiAgYm9yZGVyLXN0eWxlOiBub25lO1xuICBwYWRkaW5nOiAwO1xufVxuXG4vKipcbiAqIFJlc3RvcmUgdGhlIGZvY3VzIHN0eWxlcyB1bnNldCBieSB0aGUgcHJldmlvdXMgcnVsZS5cbiAqL1xuLyogbGluZSAyMTgsIHNjc3MvdmVuZG9yL19ub3JtYWxpemUuc2NzcyAqL1xuYnV0dG9uOi1tb3otZm9jdXNyaW5nLFxuW3R5cGU9XCJidXR0b25cIl06LW1vei1mb2N1c3JpbmcsXG5bdHlwZT1cInJlc2V0XCJdOi1tb3otZm9jdXNyaW5nLFxuW3R5cGU9XCJzdWJtaXRcIl06LW1vei1mb2N1c3Jpbmcge1xuICBvdXRsaW5lOiAxcHggZG90dGVkIEJ1dHRvblRleHQ7XG59XG5cbi8qKlxuICogQ29ycmVjdCB0aGUgcGFkZGluZyBpbiBGaXJlZm94LlxuICovXG4vKiBsaW5lIDIyOSwgc2Nzcy92ZW5kb3IvX25vcm1hbGl6ZS5zY3NzICovXG5maWVsZHNldCB7XG4gIHBhZGRpbmc6IDAuMzVlbSAwLjc1ZW0gMC42MjVlbTtcbn1cblxuLyoqXG4gKiAxLiBDb3JyZWN0IHRoZSB0ZXh0IHdyYXBwaW5nIGluIEVkZ2UgYW5kIElFLlxuICogMi4gQ29ycmVjdCB0aGUgY29sb3IgaW5oZXJpdGFuY2UgZnJvbSBgZmllbGRzZXRgIGVsZW1lbnRzIGluIElFLlxuICogMy4gUmVtb3ZlIHRoZSBwYWRkaW5nIHNvIGRldmVsb3BlcnMgYXJlIG5vdCBjYXVnaHQgb3V0IHdoZW4gdGhleSB6ZXJvIG91dFxuICogICAgYGZpZWxkc2V0YCBlbGVtZW50cyBpbiBhbGwgYnJvd3NlcnMuXG4gKi9cbi8qIGxpbmUgMjQwLCBzY3NzL3ZlbmRvci9fbm9ybWFsaXplLnNjc3MgKi9cbmxlZ2VuZCB7XG4gIGJveC1zaXppbmc6IGJvcmRlci1ib3g7XG4gIC8qIDEgKi9cbiAgY29sb3I6IGluaGVyaXQ7XG4gIC8qIDIgKi9cbiAgZGlzcGxheTogdGFibGU7XG4gIC8qIDEgKi9cbiAgbWF4LXdpZHRoOiAxMDAlO1xuICAvKiAxICovXG4gIHBhZGRpbmc6IDA7XG4gIC8qIDMgKi9cbiAgd2hpdGUtc3BhY2U6IG5vcm1hbDtcbiAgLyogMSAqL1xufVxuXG4vKipcbiAqIEFkZCB0aGUgY29ycmVjdCB2ZXJ0aWNhbCBhbGlnbm1lbnQgaW4gQ2hyb21lLCBGaXJlZm94LCBhbmQgT3BlcmEuXG4gKi9cbi8qIGxpbmUgMjUzLCBzY3NzL3ZlbmRvci9fbm9ybWFsaXplLnNjc3MgKi9cbnByb2dyZXNzIHtcbiAgdmVydGljYWwtYWxpZ246IGJhc2VsaW5lO1xufVxuXG4vKipcbiAqIFJlbW92ZSB0aGUgZGVmYXVsdCB2ZXJ0aWNhbCBzY3JvbGxiYXIgaW4gSUUgMTArLlxuICovXG4vKiBsaW5lIDI2MSwgc2Nzcy92ZW5kb3IvX25vcm1hbGl6ZS5zY3NzICovXG50ZXh0YXJlYSB7XG4gIG92ZXJmbG93OiBhdXRvO1xufVxuXG4vKipcbiAqIDEuIEFkZCB0aGUgY29ycmVjdCBib3ggc2l6aW5nIGluIElFIDEwLlxuICogMi4gUmVtb3ZlIHRoZSBwYWRkaW5nIGluIElFIDEwLlxuICovXG4vKiBsaW5lIDI3MCwgc2Nzcy92ZW5kb3IvX25vcm1hbGl6ZS5zY3NzICovXG5bdHlwZT1cImNoZWNrYm94XCJdLFxuW3R5cGU9XCJyYWRpb1wiXSB7XG4gIGJveC1zaXppbmc6IGJvcmRlci1ib3g7XG4gIC8qIDEgKi9cbiAgcGFkZGluZzogMDtcbiAgLyogMiAqL1xufVxuXG4vKipcbiAqIENvcnJlY3QgdGhlIGN1cnNvciBzdHlsZSBvZiBpbmNyZW1lbnQgYW5kIGRlY3JlbWVudCBidXR0b25zIGluIENocm9tZS5cbiAqL1xuLyogbGluZSAyODAsIHNjc3MvdmVuZG9yL19ub3JtYWxpemUuc2NzcyAqL1xuW3R5cGU9XCJudW1iZXJcIl06Oi13ZWJraXQtaW5uZXItc3Bpbi1idXR0b24sXG5bdHlwZT1cIm51bWJlclwiXTo6LXdlYmtpdC1vdXRlci1zcGluLWJ1dHRvbiB7XG4gIGhlaWdodDogYXV0bztcbn1cblxuLyoqXG4gKiAxLiBDb3JyZWN0IHRoZSBvZGQgYXBwZWFyYW5jZSBpbiBDaHJvbWUgYW5kIFNhZmFyaS5cbiAqIDIuIENvcnJlY3QgdGhlIG91dGxpbmUgc3R5bGUgaW4gU2FmYXJpLlxuICovXG4vKiBsaW5lIDI5MCwgc2Nzcy92ZW5kb3IvX25vcm1hbGl6ZS5zY3NzICovXG5bdHlwZT1cInNlYXJjaFwiXSB7XG4gIC13ZWJraXQtYXBwZWFyYW5jZTogdGV4dGZpZWxkO1xuICAvKiAxICovXG4gIG91dGxpbmUtb2Zmc2V0OiAtMnB4O1xuICAvKiAyICovXG59XG5cbi8qKlxuICogUmVtb3ZlIHRoZSBpbm5lciBwYWRkaW5nIGluIENocm9tZSBhbmQgU2FmYXJpIG9uIG1hY09TLlxuICovXG4vKiBsaW5lIDI5OSwgc2Nzcy92ZW5kb3IvX25vcm1hbGl6ZS5zY3NzICovXG5bdHlwZT1cInNlYXJjaFwiXTo6LXdlYmtpdC1zZWFyY2gtZGVjb3JhdGlvbiB7XG4gIC13ZWJraXQtYXBwZWFyYW5jZTogbm9uZTtcbn1cblxuLyoqXG4gKiAxLiBDb3JyZWN0IHRoZSBpbmFiaWxpdHkgdG8gc3R5bGUgY2xpY2thYmxlIHR5cGVzIGluIGlPUyBhbmQgU2FmYXJpLlxuICogMi4gQ2hhbmdlIGZvbnQgcHJvcGVydGllcyB0byBgaW5oZXJpdGAgaW4gU2FmYXJpLlxuICovXG4vKiBsaW5lIDMwOCwgc2Nzcy92ZW5kb3IvX25vcm1hbGl6ZS5zY3NzICovXG46Oi13ZWJraXQtZmlsZS11cGxvYWQtYnV0dG9uIHtcbiAgLXdlYmtpdC1hcHBlYXJhbmNlOiBidXR0b247XG4gIC8qIDEgKi9cbiAgZm9udDogaW5oZXJpdDtcbiAgLyogMiAqL1xufVxuXG4vKiBJbnRlcmFjdGl2ZVxuICAgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0gKi9cbi8qXG4gKiBBZGQgdGhlIGNvcnJlY3QgZGlzcGxheSBpbiBFZGdlLCBJRSAxMCssIGFuZCBGaXJlZm94LlxuICovXG4vKiBsaW5lIDMyMCwgc2Nzcy92ZW5kb3IvX25vcm1hbGl6ZS5zY3NzICovXG5kZXRhaWxzIHtcbiAgZGlzcGxheTogYmxvY2s7XG59XG5cbi8qXG4gKiBBZGQgdGhlIGNvcnJlY3QgZGlzcGxheSBpbiBhbGwgYnJvd3NlcnMuXG4gKi9cbi8qIGxpbmUgMzI4LCBzY3NzL3ZlbmRvci9fbm9ybWFsaXplLnNjc3MgKi9cbnN1bW1hcnkge1xuICBkaXNwbGF5OiBsaXN0LWl0ZW07XG59XG5cbi8qIE1pc2NcbiAgID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09ICovXG4vKipcbiAqIEFkZCB0aGUgY29ycmVjdCBkaXNwbGF5IGluIElFIDEwKy5cbiAqL1xuLyogbGluZSAzMzksIHNjc3MvdmVuZG9yL19ub3JtYWxpemUuc2NzcyAqL1xudGVtcGxhdGUge1xuICBkaXNwbGF5OiBub25lO1xufVxuXG4vKipcbiAqIEFkZCB0aGUgY29ycmVjdCBkaXNwbGF5IGluIElFIDEwLlxuICovXG4vKiBsaW5lIDM0Nywgc2Nzcy92ZW5kb3IvX25vcm1hbGl6ZS5zY3NzICovXG5baGlkZGVuXSB7XG4gIGRpc3BsYXk6IG5vbmU7XG59XG5cbi8qKlxuICogQ09MT1JTXG4gKi9cbi8qKlxuICogVElNRVxuICovXG4vKipcbiAqIFNJWkVcbiAqL1xuLyoqXG4gKiBJQ09OU1xuICovXG4vKiBsaW5lIDEsIHNjc3MvbW9kdWxlcy9fYmFzZS5zY3NzICovXG4qIHtcbiAgYm94LXNpemluZzogYm9yZGVyLWJveDtcbn1cblxuLyogbGluZSA1LCBzY3NzL21vZHVsZXMvX2Jhc2Uuc2NzcyAqL1xuaHRtbCB7XG4gIGZvbnQtc2l6ZTogNjIuNSU7XG59XG5cbi8qIGxpbmUgOSwgc2Nzcy9tb2R1bGVzL19iYXNlLnNjc3MgKi9cbmJvZHkge1xuICBjb2xvcjogIzNjM2MzYztcbiAgZm9udC1mYW1pbHk6ICdPcGVuIFNhbnMnLCBzYW5zLXNlcmlmO1xuICBmb250LXdlaWdodDogNDAwO1xuICBmb250LXN0eWxlOiBub3JtYWw7XG59XG5cbi8qIGxpbmUgMTQsIHNjc3MvbW9kdWxlcy9fYmFzZS5zY3NzICovXG5hIHtcbiAgdGV4dC1kZWNvcmF0aW9uOiBub25lO1xuICBjb2xvcjogIzNjM2MzYztcbn1cblxuLyogbGluZSAxOSwgc2Nzcy9tb2R1bGVzL19iYXNlLnNjc3MgKi9cbmgyIHtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xuICBmb250LXNpemU6IDMuNXJlbTtcbn1cblxuLyogbGluZSAyMCwgc2Nzcy9wYXJ0aWFscy9fbWl4aW5zLnNjc3MgKi9cbmgyOmFmdGVyIHtcbiAgY29udGVudDogXCJcIjtcbiAgZGlzcGxheTogYmxvY2s7XG4gIHdpZHRoOiAyNTZweDtcbiAgaGVpZ2h0OiA0MHB4O1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoLi4vaW1hZ2VzL2RlY29yYXRpb24uc3ZnKTtcbiAgYmFja2dyb3VuZC1zaXplOiBjb250YWluO1xuICBtYXJnaW4tdG9wOiAyNXB4O1xuICBtYXJnaW4tbGVmdDogY2FsYyg1MCUgLSAxMjhweCk7XG59XG5cbi8qIGxpbmUgMjUsIHNjc3MvbW9kdWxlcy9fYmFzZS5zY3NzICovXG4uY29udGFpbmVyIHtcbiAgbWFyZ2luOiAwIGF1dG87XG4gIHBhZGRpbmc6IDAgMTVweDtcbn1cblxuLyogbGluZSAzMCwgc2Nzcy9tb2R1bGVzL19iYXNlLnNjc3MgKi9cbi5jb250YWluZXItLTcwIHtcbiAgd2lkdGg6IDcwdnc7XG59XG5cbi8qIGxpbmUgMzAsIHNjc3MvbW9kdWxlcy9fYmFzZS5zY3NzICovXG4uY29udGFpbmVyLS04NSB7XG4gIHdpZHRoOiA4NXZ3O1xufVxuXG4vKiBsaW5lIDMwLCBzY3NzL21vZHVsZXMvX2Jhc2Uuc2NzcyAqL1xuLmNvbnRhaW5lci0tOTAge1xuICB3aWR0aDogOTB2dztcbn1cblxuLyogbGluZSAzNiwgc2Nzcy9tb2R1bGVzL19iYXNlLnNjc3MgKi9cbi51cHBlcmNhc2Uge1xuICB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xufVxuXG4vKiBsaW5lIDEsIHNjc3MvbW9kdWxlcy9fYnV0dG9ucy5zY3NzICovXG4uYnRuIHtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICBmb250LXNpemU6IDEuNnJlbTtcbiAgcGFkZGluZzogMWVtIDEuNjY2ZW07XG4gIGJvcmRlcjogMXB4IHNvbGlkICMzYzNjM2M7XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgdHJhbnNpdGlvbjogYm9yZGVyLWNvbG9yIDAuMnMgZWFzZS1pbi1vdXQ7XG4gIGJhY2tncm91bmQ6IHRyYW5zcGFyZW50O1xuICBjdXJzb3I6IHBvaW50ZXI7XG59XG5cbi8qIGxpbmUgMTIsIHNjc3MvbW9kdWxlcy9fYnV0dG9ucy5zY3NzICovXG4uYnRuOmhvdmVyIHtcbiAgYm9yZGVyLWNvbG9yOiAjZjljOTEwO1xufVxuXG4vKiBsaW5lIDE2LCBzY3NzL21vZHVsZXMvX2J1dHRvbnMuc2NzcyAqL1xuLmJ0bi0tbGFyZ2Uge1xuICBmb250LXNpemU6IDMuNnJlbTtcbiAgbGluZS1oZWlnaHQ6IDEuMzVlbTtcbiAgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtcbiAgcGFkZGluZzogMC41ZW0gMS42NjZlbTtcbiAgZm9udC1mYW1pbHk6ICdPcGVuIFNhbnMnLCBzYW5zLXNlcmlmO1xuICBmb250LXdlaWdodDogMzAwO1xuICBmb250LXN0eWxlOiBub3JtYWw7XG59XG5cbi8qIGxpbmUgMjQsIHNjc3MvbW9kdWxlcy9fYnV0dG9ucy5zY3NzICovXG4uYnRuLS1zbWFsbCB7XG4gIGZvbnQtc2l6ZTogMS4zcmVtO1xuICBwYWRkaW5nOiAwLjVlbSAwLjZlbTtcbn1cblxuLyogbGluZSAyOSwgc2Nzcy9tb2R1bGVzL19idXR0b25zLnNjc3MgKi9cbi5idG4tLXdpdGhvdXQtYm9yZGVyIHtcbiAgYm9yZGVyOiAxcHggc29saWQgdHJhbnNwYXJlbnQ7XG59XG5cbi8qIGxpbmUgMzIsIHNjc3MvbW9kdWxlcy9fYnV0dG9ucy5zY3NzICovXG4uYnRuLS13aXRob3V0LWJvcmRlcjpob3ZlciB7XG4gIGJvcmRlcjogMXB4IHNvbGlkICMzYzNjM2M7XG59XG5cbi8qIGxpbmUgMzcsIHNjc3MvbW9kdWxlcy9fYnV0dG9ucy5zY3NzICovXG4uYnRuLS1oaWdobGlnaHRlZCB7XG4gIGJvcmRlcjogMXB4IHNvbGlkICNmOWM5MTA7XG59XG5cbi8qIGxpbmUgNDEsIHNjc3MvbW9kdWxlcy9fYnV0dG9ucy5zY3NzICovXG4uYnRuLmFjdGl2ZSB7XG4gIGJvcmRlcjogMXB4IHNvbGlkICMzYzNjM2M7XG59XG5cbi8qIGxpbmUgMSwgc2Nzcy9tb2R1bGVzL19mb3Jtcy5zY3NzICovXG5mb3JtIHtcbiAgZGlzcGxheTogZmxleDtcbiAgZmxleC13cmFwOiB3cmFwO1xufVxuXG4vKiBsaW5lIDUsIHNjc3MvbW9kdWxlcy9fZm9ybXMuc2NzcyAqL1xuZm9ybSAuZm9ybS1ncm91cCB7XG4gIHdpZHRoOiAxMDAlO1xuICBwYWRkaW5nOiAwIDE1cHg7XG4gIG1hcmdpbi1ib3R0b206IDIwcHg7XG59XG5cbi8qIGxpbmUgMTAsIHNjc3MvbW9kdWxlcy9fZm9ybXMuc2NzcyAqL1xuZm9ybSAuZm9ybS1ncm91cCBpbnB1dDpub3QoW3R5cGU9XCJjaGVja2JveFwiXSk6bm90KFt0eXBlPVwicmFkaW9cIl0pLFxuZm9ybSAuZm9ybS1ncm91cCB0ZXh0YXJlYSB7XG4gIGJvcmRlcjogMXB4IHNvbGlkICMzYzNjM2M7XG4gIGJhY2tncm91bmQ6IHRyYW5zcGFyZW50O1xuICBwYWRkaW5nOiA0cHggMTRweDtcbiAgbWF4LXdpZHRoOiAyMDBweDtcbiAgd2lkdGg6IDEwMCU7XG4gIHJlc2l6ZTogbm9uZTtcbiAgZm9udC1zaXplOiAxLjhyZW07XG59XG5cbi8qIGxpbmUgMjEsIHNjc3MvbW9kdWxlcy9fZm9ybXMuc2NzcyAqL1xuZm9ybSAuZm9ybS1ncm91cCB0ZXh0YXJlYSB7XG4gIG1heC13aWR0aDogNDAwcHg7XG59XG5cbi8qIGxpbmUgMjUsIHNjc3MvbW9kdWxlcy9fZm9ybXMuc2NzcyAqL1xuZm9ybSAuZm9ybS1ncm91cDpsYXN0LW9mLXR5cGUge1xuICBtYXJnaW4tYm90dG9tOiAwO1xufVxuXG4vKiBsaW5lIDI5LCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0gLmZvcm0tZ3JvdXAtLTUwIHtcbiAgd2lkdGg6IDUwJTtcbn1cblxuLyogbGluZSAzMywgc2Nzcy9tb2R1bGVzL19mb3Jtcy5zY3NzICovXG5mb3JtIC5mb3JtLWdyb3VwLS1idXR0b25zIHtcbiAgZGlzcGxheTogZmxleDtcbiAganVzdGlmeS1jb250ZW50OiBzcGFjZS1iZXR3ZWVuO1xufVxuXG4vKiBsaW5lIDM5LCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0gLmZvcm0tZ3JvdXAtLWlubGluZSBsYWJlbCB7XG4gIGZvbnQtc2l6ZTogMS44cmVtO1xuICBmb250LWZhbWlseTogJ09wZW4gU2FucycsIHNhbnMtc2VyaWY7XG4gIGZvbnQtd2VpZ2h0OiAzMDA7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbn1cblxuLyogbGluZSA0Mywgc2Nzcy9tb2R1bGVzL19mb3Jtcy5zY3NzICovXG5mb3JtIC5mb3JtLWdyb3VwLS1pbmxpbmUgbGFiZWwgaW5wdXQge1xuICBtYXJnaW4tbGVmdDogMTVweDtcbn1cblxuLyogbGluZSA0OSwgc2Nzcy9tb2R1bGVzL19mb3Jtcy5zY3NzICovXG5mb3JtIC5mb3JtLWdyb3VwLS1jaGVja2JveCB7XG4gIGZvbnQtZmFtaWx5OiAnT3BlbiBTYW5zJywgc2Fucy1zZXJpZjtcbiAgZm9udC13ZWlnaHQ6IDMwMDtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXNpemU6IDEuOHJlbTtcbn1cblxuLyogbGluZSA1Mywgc2Nzcy9tb2R1bGVzL19mb3Jtcy5zY3NzICovXG5mb3JtIC5mb3JtLWdyb3VwLS1jaGVja2JveCBsYWJlbCB7XG4gIGRpc3BsYXk6IGZsZXg7XG4gIGFsaWduLWl0ZW1zOiBjZW50ZXI7XG59XG5cbi8qIGxpbmUgNTgsIHNjc3MvbW9kdWxlcy9fZm9ybXMuc2NzcyAqL1xuZm9ybSAuZm9ybS1ncm91cC0tY2hlY2tib3ggaW5wdXQge1xuICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gIG9wYWNpdHk6IDA7XG4gIGRpc3BsYXk6IG5vbmU7XG59XG5cbi8qIGxpbmUgNjQsIHNjc3MvbW9kdWxlcy9fZm9ybXMuc2NzcyAqL1xuZm9ybSAuZm9ybS1ncm91cC0tY2hlY2tib3ggaW5wdXQ6Y2hlY2tlZCArIC5jaGVja2JveCB7XG4gIGJhY2tncm91bmQtY29sb3I6ICNmOWM5MTA7XG59XG5cbi8qIGxpbmUgNzAsIHNjc3MvbW9kdWxlcy9fZm9ybXMuc2NzcyAqL1xuZm9ybSAuZm9ybS1ncm91cC0tY2hlY2tib3ggLmNoZWNrYm94IHtcbiAgcGFkZGluZzogMTRweDtcbiAgYm9yZGVyOiAxcHggc29saWQgIzNjM2MzYztcbiAgZGlzcGxheTogYmxvY2s7XG4gIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgdHJhbnNpdGlvbjogYmFja2dyb3VuZCAwLjJzIGVhc2UtaW4tb3V0O1xuICBjdXJzb3I6IHBvaW50ZXI7XG59XG5cbi8qIGxpbmUgNzgsIHNjc3MvbW9kdWxlcy9fZm9ybXMuc2NzcyAqL1xuZm9ybSAuZm9ybS1ncm91cC0tY2hlY2tib3ggLmNoZWNrYm94Om5vdCg6ZW1wdHkpIHtcbiAgcGFkZGluZzogNnB4IDEwcHg7XG59XG5cbi8qIGxpbmUgODIsIHNjc3MvbW9kdWxlcy9fZm9ybXMuc2NzcyAqL1xuZm9ybSAuZm9ybS1ncm91cC0tY2hlY2tib3ggLmNoZWNrYm94LnJhZGlvIHtcbiAgYm9yZGVyLXJhZGl1czogNTAlO1xufVxuXG4vKiBsaW5lIDg3LCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0gLmZvcm0tZ3JvdXAtLWNoZWNrYm94IC5kZXNjcmlwdGlvbiB7XG4gIG1hcmdpbi1sZWZ0OiAzMHB4O1xufVxuXG4vKiBsaW5lIDkwLCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0gLmZvcm0tZ3JvdXAtLWNoZWNrYm94IC5kZXNjcmlwdGlvbiAudGl0bGUge1xuICBmb250LWZhbWlseTogJ01lcnJpd2VhdGhlcicsIHNlcmlmO1xuICBmb250LXdlaWdodDogMzAwO1xuICBmb250LXN0eWxlOiBub3JtYWw7XG4gIGZvbnQtc2l6ZTogMnJlbTtcbiAgbWFyZ2luLWJvdHRvbTogNXB4O1xufVxuXG4vKiBsaW5lIDk2LCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0gLmZvcm0tZ3JvdXAtLWNoZWNrYm94IC5kZXNjcmlwdGlvbiAuc3VidGl0bGUge1xuICBmb250LWZhbWlseTogJ01lcnJpd2VhdGhlcicsIHNlcmlmO1xuICBmb250LXdlaWdodDogMzAwO1xuICBmb250LXN0eWxlOiBsaWdodDtcbiAgZm9udC1zaXplOiAxLjJyZW07XG59XG5cbi8qIGxpbmUgMTA0LCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0gLmZvcm0tZ3JvdXAtLWRyb3Bkb3duIC5kcm9wZG93biB7XG4gIGZvbnQtZmFtaWx5OiAnT3BlbiBTYW5zJywgc2Fucy1zZXJpZjtcbiAgZm9udC13ZWlnaHQ6IDMwMDtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBtYXgtd2lkdGg6IDIwMHB4O1xuICBtaW4taGVpZ2h0OiAzOHB4O1xuICBwb3NpdGlvbjogcmVsYXRpdmU7XG59XG5cbi8qIGxpbmUgMTExLCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0gLmZvcm0tZ3JvdXAtLWRyb3Bkb3duIC5kcm9wZG93bi5zZWxlY3RpbmcgPiBkaXYge1xuICBkaXNwbGF5OiBub25lO1xufVxuXG4vKiBsaW5lIDExNSwgc2Nzcy9tb2R1bGVzL19mb3Jtcy5zY3NzICovXG5mb3JtIC5mb3JtLWdyb3VwLS1kcm9wZG93biAuZHJvcGRvd24uc2VsZWN0aW5nIHVsIHtcbiAgZGlzcGxheTogYmxvY2s7XG59XG5cbi8qIGxpbmUgMTIwLCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0gLmZvcm0tZ3JvdXAtLWRyb3Bkb3duIC5kcm9wZG93biBsaSxcbmZvcm0gLmZvcm0tZ3JvdXAtLWRyb3Bkb3duIC5kcm9wZG93biA+IGRpdiB7XG4gIGJvcmRlcjogMXB4IHNvbGlkICMzYzNjM2M7XG4gIHBhZGRpbmc6IDhweCAxMHB4O1xuICBmb250LXNpemU6IDEuOHJlbTtcbiAgY3Vyc29yOiBwb2ludGVyO1xufVxuXG4vKiBsaW5lIDEyOCwgc2Nzcy9tb2R1bGVzL19mb3Jtcy5zY3NzICovXG5mb3JtIC5mb3JtLWdyb3VwLS1kcm9wZG93biAuZHJvcGRvd24gaW5wdXQge1xuICBkaXNwbGF5OiBub25lO1xuICBvcGFjaXR5OiAwO1xuICBwb3NpdGlvbjogYWJzb2x1dGU7XG59XG5cbi8qIGxpbmUgMTM0LCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0gLmZvcm0tZ3JvdXAtLWRyb3Bkb3duIC5kcm9wZG93bjphZnRlciB7XG4gIGNvbnRlbnQ6IFwiXCI7XG4gIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgcmlnaHQ6IDEwcHg7XG4gIHRvcDogMTVweDtcbiAgd2lkdGg6IDA7XG4gIGhlaWdodDogMDtcbiAgYm9yZGVyLWxlZnQ6IDEwcHggc29saWQgdHJhbnNwYXJlbnQ7XG4gIGJvcmRlci1yaWdodDogMTBweCBzb2xpZCB0cmFuc3BhcmVudDtcbiAgYm9yZGVyLXRvcDogMTBweCBzb2xpZCAjM2MzYzNjO1xuICBjdXJzb3I6IHBvaW50ZXI7XG4gIHotaW5kZXg6IDI7XG59XG5cbi8qIGxpbmUgMTQ5LCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0gLmZvcm0tZ3JvdXAtLWRyb3Bkb3duIHVsIHtcbiAgbGlzdC1zdHlsZTogbm9uZTtcbiAgcGFkZGluZzogMDtcbiAgbWFyZ2luOiAwO1xuICB3aWR0aDogMTAwJTtcbiAgZGlzcGxheTogbm9uZTtcbiAgcG9zaXRpb246IGFic29sdXRlO1xuICB6LWluZGV4OiAxO1xuICBiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmO1xufVxuXG4vKiBsaW5lIDE2MCwgc2Nzcy9tb2R1bGVzL19mb3Jtcy5zY3NzICovXG5mb3JtIC5mb3JtLWdyb3VwLS1kcm9wZG93biB1bCBsaTpub3QoOmZpcnN0LW9mLXR5cGUpIHtcbiAgbWFyZ2luOiAxMHB4IDA7XG59XG5cbi8qIGxpbmUgMTY0LCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0gLmZvcm0tZ3JvdXAtLWRyb3Bkb3duIHVsIGxpOmxhc3Qtb2YtdHlwZSB7XG4gIG1hcmdpbi1ib3R0b206IDA7XG59XG5cbi8qIGxpbmUgMTczLCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0gLmZvcm0tc2VjdGlvbiBoNCB7XG4gIGZvbnQtZmFtaWx5OiAnT3BlbiBTYW5zJywgc2Fucy1zZXJpZjtcbiAgZm9udC13ZWlnaHQ6IDYwMDtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXNpemU6IDEuOHJlbTtcbn1cblxuLyogbGluZSAxNzgsIHNjc3MvbW9kdWxlcy9fZm9ybXMuc2NzcyAqL1xuZm9ybSAuZm9ybS1zZWN0aW9uLS1jaGVja2JveGVzIHtcbiAgbWF4LXdpZHRoOiA1MDBweDtcbiAgd2lkdGg6IDEwMCU7XG4gIGRpc3BsYXk6IGZsZXg7XG4gIGZsZXgtd3JhcDogd3JhcDtcbn1cblxuLyogbGluZSAxODQsIHNjc3MvbW9kdWxlcy9fZm9ybXMuc2NzcyAqL1xuZm9ybSAuZm9ybS1zZWN0aW9uLS1jaGVja2JveGVzID4gZGl2IHtcbiAgd2lkdGg6IGF1dG87XG59XG5cbi8qIGxpbmUgMTg5LCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0gLmZvcm0tc2VjdGlvbi0tY29sdW1ucyB7XG4gIGRpc3BsYXk6IGZsZXg7XG4gIGZsZXgtd3JhcDogd3JhcDtcbn1cblxuLyogbGluZSAxOTMsIHNjc3MvbW9kdWxlcy9fZm9ybXMuc2NzcyAqL1xuZm9ybSAuZm9ybS1zZWN0aW9uLS1jb2x1bW5zID4gZGl2IHtcbiAgcGFkZGluZy1yaWdodDogMjBweDtcbiAgZmxleC1ncm93OiAxO1xufVxuXG4vKiBsaW5lIDE5Nywgc2Nzcy9tb2R1bGVzL19mb3Jtcy5zY3NzICovXG5mb3JtIC5mb3JtLXNlY3Rpb24tLWNvbHVtbnMgPiBkaXY6bGFzdC1vZi10eXBlIHtcbiAgcGFkZGluZy1yaWdodDogMDtcbn1cblxuLyogbGluZSAyMDMsIHNjc3MvbW9kdWxlcy9fZm9ybXMuc2NzcyAqL1xuZm9ybSAuZm9ybS1zZWN0aW9uLS1jb2x1bW5zIC5mb3JtLWdyb3VwIGxhYmVsIHtcbiAgd2lkdGg6IDEwMCU7XG4gIGRpc3BsYXk6IGJsb2NrO1xuICBkaXNwbGF5OiBmbGV4O1xuICBqdXN0aWZ5LWNvbnRlbnQ6IHNwYWNlLWJldHdlZW47XG4gIGFsaWduLWl0ZW1zOiBjZW50ZXI7XG59XG5cbi8qIGxpbmUgMjEwLCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0gLmZvcm0tc2VjdGlvbi0tY29sdW1ucyAuZm9ybS1ncm91cCBsYWJlbCB0ZXh0YXJlYSwgZm9ybSAuZm9ybS1zZWN0aW9uLS1jb2x1bW5zIC5mb3JtLWdyb3VwIGxhYmVsIGlucHV0IHtcbiAgbWFyZ2luLWxlZnQ6IDIwcHg7XG4gIG1heC13aWR0aDogMjAwcHg7XG59XG5cbi8qIGxpbmUgMjIwLCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0uZm9ybS0tY29udGFjdCBpbnB1dDpub3QoW3R5cGU9XCJjaGVja2JveFwiXSk6bm90KFt0eXBlPVwicmFkaW9cIl0pLFxuZm9ybS5mb3JtLS1jb250YWN0IHRleHRhcmVhIHtcbiAgcGFkZGluZzogOHB4IDEycHg7XG4gIHdpZHRoOiAxMDAlO1xuICBib3JkZXI6IG5vbmU7XG4gIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCAjM2MzYzNjO1xuICBiYWNrZ3JvdW5kOiB0cmFuc3BhcmVudDtcbiAgcmVzaXplOiBub25lO1xuICBmb250LXNpemU6IDEuNHJlbTtcbiAgb3V0bGluZTogbm9uZTtcbiAgdHJhbnNpdGlvbjogYm9yZGVyIDAuMnMgZWFzZS1pbi1vdXQ7XG4gIGNvbG9yOiAjM2MzYzNjO1xuICBtYXgtd2lkdGg6IG5vbmU7XG59XG5cbi8qIGxpbmUgMjM0LCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0uZm9ybS0tY29udGFjdCBpbnB1dDpub3QoW3R5cGU9XCJjaGVja2JveFwiXSk6bm90KFt0eXBlPVwicmFkaW9cIl0pOmZvY3VzLFxuZm9ybS5mb3JtLS1jb250YWN0IHRleHRhcmVhOmZvY3VzIHtcbiAgYm9yZGVyLWJvdHRvbTogM3B4IHNvbGlkICNmOWM5MTA7XG59XG5cbi8qIGxpbmUgMjM4LCBzY3NzL21vZHVsZXMvX2Zvcm1zLnNjc3MgKi9cbmZvcm0uZm9ybS0tY29udGFjdCBpbnB1dDpub3QoW3R5cGU9XCJjaGVja2JveFwiXSk6bm90KFt0eXBlPVwicmFkaW9cIl0pOjpwbGFjZWhvbGRlcixcbmZvcm0uZm9ybS0tY29udGFjdCB0ZXh0YXJlYTo6cGxhY2Vob2xkZXIge1xuICBmb250LWZhbWlseTogJ09wZW4gU2FucycsIHNhbnMtc2VyaWY7XG4gIGZvbnQtd2VpZ2h0OiA0MDA7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbiAgY29sb3I6ICMzYzNjM2M7XG59XG5cbi8qIGxpbmUgMiwgc2Nzcy9tb2R1bGVzL19oZWFkZXIuc2NzcyAqL1xuaGVhZGVyLmhlYWRlci0tbWFpbi1wYWdlIHtcbiAgYmFja2dyb3VuZC1pbWFnZTogdXJsKC4uL2ltYWdlcy9oZWFkZXItYmcuanBnKTtcbiAgYmFja2dyb3VuZC1wb3NpdGlvbjogYm90dG9tIGxlZnQgLTMwdmg7XG4gIGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG4gIGJhY2tncm91bmQtc2l6ZTogNzB2dztcbiAgaGVpZ2h0OiAxMDB2aDtcbn1cblxuQG1lZGlhIChtaW4td2lkdGg6IDk5MHB4KSBhbmQgKG1heC13aWR0aDogMTIzMHB4KSB7XG4gIC8qIGxpbmUgMiwgc2Nzcy9tb2R1bGVzL19oZWFkZXIuc2NzcyAqL1xuICBoZWFkZXIuaGVhZGVyLS1tYWluLXBhZ2Uge1xuICAgIGJhY2tncm91bmQtcG9zaXRpb246IGJvdHRvbSBsZWZ0IC01NXZoO1xuICAgIGJhY2tncm91bmQtc2l6ZTogOTB2dztcbiAgfVxufVxuXG4vKiBsaW5lIDE1LCBzY3NzL21vZHVsZXMvX2hlYWRlci5zY3NzICovXG5oZWFkZXIuaGVhZGVyLS1mb3JtLXBhZ2Uge1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoLi4vaW1hZ2VzL2hlYWRlci1mb3JtLWJnLmpwZyk7XG4gIGJhY2tncm91bmQtcG9zaXRpb246IHRvcCBsZWZ0IC01MDBweDtcbiAgYmFja2dyb3VuZC1yZXBlYXQ6IG5vLXJlcGVhdDtcbiAgYmFja2dyb3VuZC1zaXplOiBhdXRvIDEwMCU7XG4gIGhlaWdodDogMTAwdmg7XG59XG5cbi8qIGxpbmUgMjMsIHNjc3MvbW9kdWxlcy9faGVhZGVyLnNjc3MgKi9cbmhlYWRlciAuc2xvZ2FuIHtcbiAgaGVpZ2h0OiBjYWxjKDEwMCUgLSAxNDFweCk7XG4gIGRpc3BsYXk6IGZsZXg7XG4gIGp1c3RpZnktY29udGVudDogZmxleC1lbmQ7XG4gIGFsaWduLWl0ZW1zOiBjZW50ZXI7XG59XG5cbi8qIGxpbmUgMjksIHNjc3MvbW9kdWxlcy9faGVhZGVyLnNjc3MgKi9cbmhlYWRlciAuc2xvZ2FuLS1pdGVtIHtcbiAgd2lkdGg6IDEwMCU7XG59XG5cbkBtZWRpYSAobWluLXdpZHRoOiA5OTBweCkgYW5kIChtYXgtd2lkdGg6IDEyMzBweCkge1xuICAvKiBsaW5lIDI5LCBzY3NzL21vZHVsZXMvX2hlYWRlci5zY3NzICovXG4gIGhlYWRlciAuc2xvZ2FuLS1pdGVtIHtcbiAgICB3aWR0aDogNzUlO1xuICB9XG59XG5cbkBtZWRpYSBzY3JlZW4gYW5kIChtaW4td2lkdGg6IDEyMzBweCkge1xuICAvKiBsaW5lIDI5LCBzY3NzL21vZHVsZXMvX2hlYWRlci5zY3NzICovXG4gIGhlYWRlciAuc2xvZ2FuLS1pdGVtIHtcbiAgICB3aWR0aDogNjAlO1xuICB9XG59XG5cbi8qIGxpbmUgNDEsIHNjc3MvbW9kdWxlcy9faGVhZGVyLnNjc3MgKi9cbmhlYWRlciAuc2xvZ2FuLS1pdGVtIGgxIHtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xuICBmb250LXNpemU6IDMuNXJlbTtcbiAgbGluZS1oZWlnaHQ6IDVyZW07XG4gIGZvbnQtZmFtaWx5OiAnT3BlbiBTYW5zJywgc2Fucy1zZXJpZjtcbiAgZm9udC13ZWlnaHQ6IDMwMDtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xufVxuXG4vKiBsaW5lIDIwLCBzY3NzL3BhcnRpYWxzL19taXhpbnMuc2NzcyAqL1xuaGVhZGVyIC5zbG9nYW4tLWl0ZW0gaDE6YWZ0ZXIge1xuICBjb250ZW50OiBcIlwiO1xuICBkaXNwbGF5OiBibG9jaztcbiAgd2lkdGg6IDI1NnB4O1xuICBoZWlnaHQ6IDQwcHg7XG4gIGJhY2tncm91bmQtaW1hZ2U6IHVybCguLi9pbWFnZXMvZGVjb3JhdGlvbi5zdmcpO1xuICBiYWNrZ3JvdW5kLXNpemU6IGNvbnRhaW47XG4gIG1hcmdpbi10b3A6IDI1cHg7XG4gIG1hcmdpbi1sZWZ0OiBjYWxjKDUwJSAtIDEyOHB4KTtcbn1cblxuLyogbGluZSA1MCwgc2Nzcy9tb2R1bGVzL19oZWFkZXIuc2NzcyAqL1xuaGVhZGVyIC5zbG9nYW4tLWJ1dHRvbnMge1xuICBsaXN0LXN0eWxlOiBub25lO1xuICBwYWRkaW5nOiAwO1xuICBkaXNwbGF5OiBmbGV4O1xuICBqdXN0aWZ5LWNvbnRlbnQ6IGNlbnRlcjtcbiAgbWFyZ2luLXRvcDogODBweDtcbn1cblxuLyogbGluZSA1Nywgc2Nzcy9tb2R1bGVzL19oZWFkZXIuc2NzcyAqL1xuaGVhZGVyIC5zbG9nYW4tLWJ1dHRvbnMgbGkge1xuICBkaXNwbGF5OiBmbGV4O1xuICB3aWR0aDogMTAwJTtcbiAganVzdGlmeS1jb250ZW50OiBjZW50ZXI7XG4gIHBhZGRpbmctYm90dG9tOiAwO1xufVxuXG4vKiBsaW5lIDYyLCBzY3NzL21vZHVsZXMvX2hlYWRlci5zY3NzICovXG5oZWFkZXIgLnNsb2dhbi0tYnV0dG9ucyBsaSAuYnRuIHtcbiAgbWF4LXdpZHRoOiAzMjBweDtcbn1cblxuLyogbGluZSA2OCwgc2Nzcy9tb2R1bGVzL19oZWFkZXIuc2NzcyAqL1xuaGVhZGVyIC5zbG9nYW4tLWJ1dHRvbnMgbGk6bnRoLWNoaWxkKDEpIHtcbiAgcGFkZGluZy1yaWdodDogMjVweDtcbiAganVzdGlmeS1jb250ZW50OiBmbGV4LWVuZDtcbn1cblxuLyogbGluZSA3Miwgc2Nzcy9tb2R1bGVzL19oZWFkZXIuc2NzcyAqL1xuaGVhZGVyIC5zbG9nYW4tLWJ1dHRvbnMgbGk6bnRoLWNoaWxkKDIpIHtcbiAgcGFkZGluZy1sZWZ0OiAyNXB4O1xuICBqdXN0aWZ5LWNvbnRlbnQ6IGZsZXgtc3RhcnQ7XG59XG5cbi8qIGxpbmUgNzksIHNjc3MvbW9kdWxlcy9faGVhZGVyLnNjc3MgKi9cbmhlYWRlciAuc2xvZ2FuLS1zdGVwcyB7XG4gIGRpc3BsYXk6IGZsZXg7XG4gIGZsZXgtZGlyZWN0aW9uOiBjb2x1bW47XG4gIGFsaWduLWl0ZW1zOiBjZW50ZXI7XG4gIG1hcmdpbi10b3A6IDQwcHg7XG59XG5cbi8qIGxpbmUgODUsIHNjc3MvbW9kdWxlcy9faGVhZGVyLnNjc3MgKi9cbmhlYWRlciAuc2xvZ2FuLS1zdGVwcy10aXRsZSB7XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgZm9udC1zaXplOiAzLjVyZW07XG4gIGxpbmUtaGVpZ2h0OiA1cmVtO1xuICBmb250LWZhbWlseTogJ09wZW4gU2FucycsIHNhbnMtc2VyaWY7XG4gIGZvbnQtd2VpZ2h0OiAzMDA7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbn1cblxuLyogbGluZSA5Miwgc2Nzcy9tb2R1bGVzL19oZWFkZXIuc2NzcyAqL1xuaGVhZGVyIC5zbG9nYW4tLXN0ZXBzIHVsIHtcbiAgbGlzdC1zdHlsZTogbm9uZTtcbiAgcGFkZGluZzogMDtcbiAgZGlzcGxheTogZmxleDtcbiAgbWFyZ2luLXRvcDogNjBweDtcbn1cblxuLyogbGluZSA5OSwgc2Nzcy9tb2R1bGVzL19oZWFkZXIuc2NzcyAqL1xuaGVhZGVyIC5zbG9nYW4tLXN0ZXBzIHVsIGxpIHtcbiAgYm9yZGVyOiAxcHggc29saWQgIzNjM2MzYztcbiAgdHJhbnNmb3JtOiByb3RhdGUoNDVkZWcpO1xuICB3aWR0aDogMTI1cHg7XG4gIGhlaWdodDogMTI1cHg7XG4gIG1hcmdpbjogMCAxNHB4O1xufVxuXG4vKiBsaW5lIDEwNiwgc2Nzcy9tb2R1bGVzL19oZWFkZXIuc2NzcyAqL1xuaGVhZGVyIC5zbG9nYW4tLXN0ZXBzIHVsIGxpID4gZGl2IHtcbiAgdHJhbnNmb3JtOiByb3RhdGUoLTQ1ZGVnKTtcbiAgZGlzcGxheTogZmxleDtcbiAgZmxleC1kaXJlY3Rpb246IGNvbHVtbjtcbiAgYWxpZ24taXRlbXM6IGNlbnRlcjtcbiAgd2lkdGg6IDEyNXB4O1xuICBoZWlnaHQ6IDEyNXB4O1xuICBmb250LWZhbWlseTogJ09wZW4gU2FucycsIHNhbnMtc2VyaWY7XG4gIGZvbnQtd2VpZ2h0OiAzMDA7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbn1cblxuLyogbGluZSAxMTYsIHNjc3MvbW9kdWxlcy9faGVhZGVyLnNjc3MgKi9cbmhlYWRlciAuc2xvZ2FuLS1zdGVwcyB1bCBsaSBlbSB7XG4gIGZvbnQtc2l6ZTogMi41cmVtO1xuICBmb250LXN0eWxlOiBub3JtYWw7XG59XG5cbi8qIGxpbmUgMTIxLCBzY3NzL21vZHVsZXMvX2hlYWRlci5zY3NzICovXG5oZWFkZXIgLnNsb2dhbi0tc3RlcHMgdWwgbGkgc3BhbiB7XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgZm9udC1zaXplOiAycmVtO1xuICBtYXJnaW4tdG9wOiAxNXB4O1xufVxuXG4vKiBsaW5lIDEsIHNjc3MvbW9kdWxlcy9fbmF2aWdhdGlvbi5zY3NzICovXG5oZWFkZXIge1xuICBwb3NpdGlvbjogcmVsYXRpdmU7XG59XG5cbi8qIGxpbmUgNCwgc2Nzcy9tb2R1bGVzL19uYXZpZ2F0aW9uLnNjc3MgKi9cbmhlYWRlciBuYXYge1xuICBkaXNwbGF5OiBmbGV4O1xuICBmbGV4LWRpcmVjdGlvbjogY29sdW1uO1xuICBhbGlnbi1pdGVtczogZmxleC1lbmQ7XG59XG5cbi8qIGxpbmUgOSwgc2Nzcy9tb2R1bGVzL19uYXZpZ2F0aW9uLnNjc3MgKi9cbmhlYWRlciBuYXYgdWwge1xuICBsaXN0LXN0eWxlOiBub25lO1xuICBwYWRkaW5nOiAwO1xuICBtYXJnaW46IDA7XG4gIGRpc3BsYXk6IGZsZXg7XG4gIGZvbnQtc2l6ZTogMS44cmVtO1xufVxuXG4vKiBsaW5lIDE2LCBzY3NzL21vZHVsZXMvX25hdmlnYXRpb24uc2NzcyAqL1xuaGVhZGVyIG5hdiB1bC5uYXYtLWFjdGlvbnMge1xuICBmb250LXNpemU6IDEuNHJlbTtcbiAgY29sb3I6ICM3MzczNzM7XG4gIG1hcmdpbjogMzBweCAwIDhweDtcbn1cblxuLyogbGluZSAyMSwgc2Nzcy9tb2R1bGVzL19uYXZpZ2F0aW9uLnNjc3MgKi9cbmhlYWRlciBuYXYgdWwubmF2LS1hY3Rpb25zIC5sb2dnZWQtdXNlciB7XG4gIHBhZGRpbmctcmlnaHQ6IDMwcHg7XG4gIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgY3Vyc29yOiBwb2ludGVyO1xufVxuXG4vKiBsaW5lIDI2LCBzY3NzL21vZHVsZXMvX25hdmlnYXRpb24uc2NzcyAqL1xuaGVhZGVyIG5hdiB1bC5uYXYtLWFjdGlvbnMgLmxvZ2dlZC11c2VyOmFmdGVyIHtcbiAgY29udGVudDogXCJcIjtcbiAgd2lkdGg6IDE1cHg7XG4gIGhlaWdodDogMTVweDtcbiAgZGlzcGxheTogYmxvY2s7XG4gIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgdG9wOiAwO1xuICByaWdodDogMDtcbiAgYmFja2dyb3VuZC1pbWFnZTogdXJsKC4uL2ltYWdlcy9pY29uLWdlYXIucG5nKTtcbiAgYmFja2dyb3VuZC1zaXplOiBjb3Zlcjtcbn1cblxuLyogbGluZSAzOCwgc2Nzcy9tb2R1bGVzL19uYXZpZ2F0aW9uLnNjc3MgKi9cbmhlYWRlciBuYXYgdWwubmF2LS1hY3Rpb25zIC5sb2dnZWQtdXNlciB1bCB7XG4gIGRpc3BsYXk6IG5vbmU7XG4gIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgZmxleC1kaXJlY3Rpb246IGNvbHVtbjtcbiAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gIGJhY2tncm91bmQtY29sb3I6ICNmZmY7XG4gIHBhZGRpbmc6IDEycHggMCAwO1xuICBmb250LXNpemU6IDEuNHJlbTtcbiAgd2lkdGg6IDEyMHB4O1xuICByaWdodDogMDtcbn1cblxuLyogbGluZSA0OSwgc2Nzcy9tb2R1bGVzL19uYXZpZ2F0aW9uLnNjc3MgKi9cbmhlYWRlciBuYXYgdWwubmF2LS1hY3Rpb25zIC5sb2dnZWQtdXNlciB1bCBsaSB7XG4gIGJvcmRlci1sZWZ0OiAxcHggc29saWQgIzNjM2MzYztcbiAgYm9yZGVyLXJpZ2h0OiAxcHggc29saWQgIzNjM2MzYztcbn1cblxuLyogbGluZSA1Mywgc2Nzcy9tb2R1bGVzL19uYXZpZ2F0aW9uLnNjc3MgKi9cbmhlYWRlciBuYXYgdWwubmF2LS1hY3Rpb25zIC5sb2dnZWQtdXNlciB1bCBsaTpmaXJzdC1vZi10eXBlIHtcbiAgYm9yZGVyLXRvcDogMXB4IHNvbGlkICMzYzNjM2M7XG59XG5cbi8qIGxpbmUgNTcsIHNjc3MvbW9kdWxlcy9fbmF2aWdhdGlvbi5zY3NzICovXG5oZWFkZXIgbmF2IHVsLm5hdi0tYWN0aW9ucyAubG9nZ2VkLXVzZXIgdWwgbGk6bGFzdC1vZi10eXBlIHtcbiAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICMzYzNjM2M7XG59XG5cbi8qIGxpbmUgNjIsIHNjc3MvbW9kdWxlcy9fbmF2aWdhdGlvbi5zY3NzICovXG5oZWFkZXIgbmF2IHVsLm5hdi0tYWN0aW9ucyAubG9nZ2VkLXVzZXIgdWwgYSB7XG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgcGFkZGluZzogNnB4O1xufVxuXG4vKiBsaW5lIDY5LCBzY3NzL21vZHVsZXMvX25hdmlnYXRpb24uc2NzcyAqL1xuaGVhZGVyIG5hdiB1bC5uYXYtLWFjdGlvbnMgLmxvZ2dlZC11c2VyOmhvdmVyIHVsIHtcbiAgZGlzcGxheTogYmxvY2s7XG59XG5cbi8qIGxpbmUgNzYsIHNjc3MvbW9kdWxlcy9fbmF2aWdhdGlvbi5zY3NzICovXG5oZWFkZXIgbmF2IHVsIGxpIHtcbiAgcGFkZGluZzogMCA1cHg7XG59XG5cbi8qIGxpbmUgNzksIHNjc3MvbW9kdWxlcy9fbmF2aWdhdGlvbi5zY3NzICovXG5oZWFkZXIgbmF2IHVsIGxpOmxhc3Qtb2YtdHlwZSB7XG4gIHBhZGRpbmctcmlnaHQ6IDA7XG59XG5cbi8qIGxpbmUgMSwgc2Nzcy9tb2R1bGVzL19zdGF0cy5zY3NzICovXG4uc3RhdHMge1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoLi4vaW1hZ2VzL3N0YXRzLWJnLmpwZyk7XG59XG5cbi8qIGxpbmUgNCwgc2Nzcy9tb2R1bGVzL19zdGF0cy5zY3NzICovXG4uc3RhdHMgLmNvbnRhaW5lciB7XG4gIGRpc3BsYXk6IGZsZXg7XG4gIHBhZGRpbmc6IDUwcHg7XG59XG5cbi8qIGxpbmUgOSwgc2Nzcy9tb2R1bGVzL19zdGF0cy5zY3NzICovXG4uc3RhdHMtLWl0ZW0ge1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIHBhZGRpbmc6IDAgMnZ3O1xufVxuXG4vKiBsaW5lIDEzLCBzY3NzL21vZHVsZXMvX3N0YXRzLnNjc3MgKi9cbi5zdGF0cy0taXRlbSBlbSB7XG4gIGZvbnQtZmFtaWx5OiAnT3BlbiBTYW5zJywgc2Fucy1zZXJpZjtcbiAgZm9udC13ZWlnaHQ6IDMwMDtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXNpemU6IDUuNXJlbTtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xufVxuXG4vKiBsaW5lIDE5LCBzY3NzL21vZHVsZXMvX3N0YXRzLnNjc3MgKi9cbi5zdGF0cy0taXRlbSBoMyB7XG4gIGZvbnQtc2l6ZTogMS44cmVtO1xuICB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuICBtYXJnaW46IDJlbSAwO1xufVxuXG4vKiBsaW5lIDI1LCBzY3NzL21vZHVsZXMvX3N0YXRzLnNjc3MgKi9cbi5zdGF0cy0taXRlbSBwIHtcbiAgZm9udC1mYW1pbHk6ICdNZXJyaXdlYXRoZXInLCBzZXJpZjtcbiAgZm9udC13ZWlnaHQ6IDMwMDtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXNpemU6IDEuNnJlbTtcbn1cblxuLyogbGluZSAxLCBzY3NzL21vZHVsZXMvaG9tZXBhZ2Utc2VjdGlvbnMvX3N0ZXBzLnNjc3MgKi9cbi5zdGVwcyB7XG4gIG1hcmdpbjogNjBweCAwO1xuICBwYWRkaW5nOiAwIDMwcHg7XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbn1cblxuLyogbGluZSA2LCBzY3NzL21vZHVsZXMvaG9tZXBhZ2Utc2VjdGlvbnMvX3N0ZXBzLnNjc3MgKi9cbi5zdGVwcy0tY29udGFpbmVyIHtcbiAgbWFyZ2luOiAwIGF1dG87XG4gIHBhZGRpbmc6IDUwcHggMDtcbiAgbWF4LXdpZHRoOiAxMTAwcHg7XG4gIHdpZHRoOiAxMDAlO1xuICBiYWNrZ3JvdW5kLWNvbG9yOiAjZWJlYmViO1xuICBkaXNwbGF5OiBmbGV4O1xuICBhbGlnbi1pdGVtczogYmFzZWxpbmU7XG4gIGp1c3RpZnktY29udGVudDogc3BhY2UtYXJvdW5kO1xufVxuXG4vKiBsaW5lIDE3LCBzY3NzL21vZHVsZXMvaG9tZXBhZ2Utc2VjdGlvbnMvX3N0ZXBzLnNjc3MgKi9cbi5zdGVwcy0taXRlbSB7XG4gIGRpc3BsYXk6IGZsZXg7XG4gIGZsZXgtZGlyZWN0aW9uOiBjb2x1bW47XG4gIGFsaWduLWl0ZW1zOiBjZW50ZXI7XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgcGFkZGluZzogMCAzNXB4O1xufVxuXG4vKiBsaW5lIDI0LCBzY3NzL21vZHVsZXMvaG9tZXBhZ2Utc2VjdGlvbnMvX3N0ZXBzLnNjc3MgKi9cbi5zdGVwcy0taXRlbSAuaWNvbiB7XG4gIHdpZHRoOiA2MHB4O1xuICBoZWlnaHQ6IDYwcHg7XG4gIGJhY2tncm91bmQtc2l6ZTogY29udGFpbjtcbiAgYmFja2dyb3VuZC1wb3NpdGlvbjogY2VudGVyO1xuICBiYWNrZ3JvdW5kLXJlcGVhdDogbm8tcmVwZWF0O1xuICBkaXNwbGF5OiBibG9jaztcbn1cblxuLyogbGluZSAzMywgc2Nzcy9tb2R1bGVzL2hvbWVwYWdlLXNlY3Rpb25zL19zdGVwcy5zY3NzICovXG4uc3RlcHMtLWl0ZW0gLmljb24tLWhhbmRzIHtcbiAgYmFja2dyb3VuZC1pbWFnZTogdXJsKFwiLi4vaW1hZ2VzL2ljb24taGFuZHMucG5nXCIpO1xufVxuXG4vKiBsaW5lIDMzLCBzY3NzL21vZHVsZXMvaG9tZXBhZ2Utc2VjdGlvbnMvX3N0ZXBzLnNjc3MgKi9cbi5zdGVwcy0taXRlbSAuaWNvbi0tYXJyb3cge1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoXCIuLi9pbWFnZXMvaWNvbi1hcnJvdy5wbmdcIik7XG59XG5cbi8qIGxpbmUgMzMsIHNjc3MvbW9kdWxlcy9ob21lcGFnZS1zZWN0aW9ucy9fc3RlcHMuc2NzcyAqL1xuLnN0ZXBzLS1pdGVtIC5pY29uLS1nbGFzc2VzIHtcbiAgYmFja2dyb3VuZC1pbWFnZTogdXJsKFwiLi4vaW1hZ2VzL2ljb24tZ2xhc3Nlcy5wbmdcIik7XG59XG5cbi8qIGxpbmUgMzMsIHNjc3MvbW9kdWxlcy9ob21lcGFnZS1zZWN0aW9ucy9fc3RlcHMuc2NzcyAqL1xuLnN0ZXBzLS1pdGVtIC5pY29uLS1jb3VyaWVyIHtcbiAgYmFja2dyb3VuZC1pbWFnZTogdXJsKFwiLi4vaW1hZ2VzL2ljb24tY291cmllci5wbmdcIik7XG59XG5cbi8qIGxpbmUgMzksIHNjc3MvbW9kdWxlcy9ob21lcGFnZS1zZWN0aW9ucy9fc3RlcHMuc2NzcyAqL1xuLnN0ZXBzLS1pdGVtIGgzIHtcbiAgZm9udC1zaXplOiAxLjhyZW07XG4gIG1hcmdpbi1ib3R0b206IDA7XG59XG5cbi8qIGxpbmUgNDMsIHNjc3MvbW9kdWxlcy9ob21lcGFnZS1zZWN0aW9ucy9fc3RlcHMuc2NzcyAqL1xuLnN0ZXBzLS1pdGVtIGgzOmFmdGVyIHtcbiAgY29udGVudDogXCJcIjtcbiAgZGlzcGxheTogYmxvY2s7XG4gIG1hcmdpbi10b3A6IDIwcHg7XG4gIG1hcmdpbi1sZWZ0OiBjYWxjKDUwJSAtIDQ1cHgpO1xuICB3aWR0aDogOTBweDtcbiAgaGVpZ2h0OiAxcHg7XG4gIGJhY2tncm91bmQtY29sb3I6ICMzYzNjM2M7XG59XG5cbi8qIGxpbmUgNTQsIHNjc3MvbW9kdWxlcy9ob21lcGFnZS1zZWN0aW9ucy9fc3RlcHMuc2NzcyAqL1xuLnN0ZXBzLS1pdGVtIHAge1xuICBmb250LXNpemU6IDEuNnJlbTtcbn1cblxuLyogbGluZSA1OSwgc2Nzcy9tb2R1bGVzL2hvbWVwYWdlLXNlY3Rpb25zL19zdGVwcy5zY3NzICovXG4uc3RlcHMgLmJ0biB7XG4gIG1hcmdpbi10b3A6IDMwcHg7XG59XG5cbi8qIGxpbmUgMSwgc2Nzcy9tb2R1bGVzL2hvbWVwYWdlLXNlY3Rpb25zL19hYm91dC11cy5zY3NzICovXG4uYWJvdXQtdXMge1xuICBkaXNwbGF5OiBmbGV4O1xuICBhbGlnbi1pdGVtczogY2VudGVyO1xuICBiYWNrZ3JvdW5kLWNvbG9yOiAjZWJlYmViO1xuICBwYWRkaW5nOiA2MHB4IDA7XG59XG5cbi8qIGxpbmUgNywgc2Nzcy9tb2R1bGVzL2hvbWVwYWdlLXNlY3Rpb25zL19hYm91dC11cy5zY3NzICovXG4uYWJvdXQtdXMgPiBkaXYge1xuICB3aWR0aDogNTAlO1xufVxuXG4vKiBsaW5lIDExLCBzY3NzL21vZHVsZXMvaG9tZXBhZ2Utc2VjdGlvbnMvX2Fib3V0LXVzLnNjc3MgKi9cbi5hYm91dC11cy0tdGV4dCB7XG4gIGRpc3BsYXk6IGZsZXg7XG4gIGZsZXgtZGlyZWN0aW9uOiBjb2x1bW47XG4gIGFsaWduLWl0ZW1zOiBjZW50ZXI7XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbn1cblxuLyogbGluZSAxNiwgc2Nzcy9tb2R1bGVzL2hvbWVwYWdlLXNlY3Rpb25zL19hYm91dC11cy5zY3NzICovXG4uYWJvdXQtdXMtLXRleHQgcCB7XG4gIHdpZHRoOiA3MCU7XG4gIGZvbnQtc2l6ZTogMi4ycmVtO1xuICBsaW5lLWhlaWdodDogMmVtO1xufVxuXG4vKiBsaW5lIDIyLCBzY3NzL21vZHVsZXMvaG9tZXBhZ2Utc2VjdGlvbnMvX2Fib3V0LXVzLnNjc3MgKi9cbi5hYm91dC11cy0tdGV4dC1zaWduYXR1cmUge1xuICB3aWR0aDogMjAwcHg7XG4gIG1hcmdpbi1yaWdodDogNTBweDtcbiAgYWxpZ24tc2VsZjogZmxleC1lbmQ7XG59XG5cbi8qIGxpbmUgMzAsIHNjc3MvbW9kdWxlcy9ob21lcGFnZS1zZWN0aW9ucy9fYWJvdXQtdXMuc2NzcyAqL1xuLmFib3V0LXVzLS1pbWFnZSBpbWcge1xuICB3aWR0aDogMTAwJTtcbiAgaGVpZ2h0OiBhdXRvO1xufVxuXG4vKiBsaW5lIDEsIHNjc3MvbW9kdWxlcy9ob21lcGFnZS1zZWN0aW9ucy9faGVscC5zY3NzICovXG4uaGVscCB7XG4gIGRpc3BsYXk6IGZsZXg7XG4gIGZsZXgtZGlyZWN0aW9uOiBjb2x1bW47XG4gIGFsaWduLWl0ZW1zOiBjZW50ZXI7XG4gIG1heC13aWR0aDogOTkwcHg7XG4gIHdpZHRoOiAxMDAlO1xuICBwYWRkaW5nOiAwIDMwcHg7XG4gIG1hcmdpbjogNjBweCBhdXRvO1xufVxuXG4vKiBsaW5lIDcsIHNjc3MvbW9kdWxlcy9ob21lcGFnZS1zZWN0aW9ucy9faGVscC5zY3NzICovXG4uaGVscC0tYnV0dG9ucyB7XG4gIHBhZGRpbmc6IDA7XG4gIG1hcmdpbjogMjBweCAwO1xuICBsaXN0LXN0eWxlOiBub25lO1xuICBkaXNwbGF5OiBmbGV4O1xufVxuXG4vKiBsaW5lIDEzLCBzY3NzL21vZHVsZXMvaG9tZXBhZ2Utc2VjdGlvbnMvX2hlbHAuc2NzcyAqL1xuLmhlbHAtLWJ1dHRvbnMgbGkge1xuICBtYXJnaW46IDAgMTBweDtcbn1cblxuLyogbGluZSAxOCwgc2Nzcy9tb2R1bGVzL2hvbWVwYWdlLXNlY3Rpb25zL19oZWxwLnNjc3MgKi9cbi5oZWxwLS1zbGlkZXMge1xuICB3aWR0aDogMTAwJTtcbiAgbWFyZ2luLXRvcDogMzBweDtcbiAgZGlzcGxheTogbm9uZTtcbn1cblxuLyogbGluZSAyMywgc2Nzcy9tb2R1bGVzL2hvbWVwYWdlLXNlY3Rpb25zL19oZWxwLnNjc3MgKi9cbi5oZWxwLS1zbGlkZXMuYWN0aXZlIHtcbiAgZGlzcGxheTogYmxvY2s7XG59XG5cbi8qIGxpbmUgMjcsIHNjc3MvbW9kdWxlcy9ob21lcGFnZS1zZWN0aW9ucy9faGVscC5zY3NzICovXG4uaGVscC0tc2xpZGVzID4gcCB7XG4gIG1hcmdpbjogMCBhdXRvIDMwcHg7XG4gIG1heC13aWR0aDogNjMwcHg7XG4gIHdpZHRoOiAxMDAlO1xuICBmb250LXNpemU6IDEuOHJlbTtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xuICBsaW5lLWhlaWdodDogMmVtO1xufVxuXG4vKiBsaW5lIDM2LCBzY3NzL21vZHVsZXMvaG9tZXBhZ2Utc2VjdGlvbnMvX2hlbHAuc2NzcyAqL1xuLmhlbHAtLXNsaWRlcyB1bCB7XG4gIGxpc3Qtc3R5bGU6IG5vbmU7XG4gIHBhZGRpbmc6IDA7XG59XG5cbi8qIGxpbmUgNDMsIHNjc3MvbW9kdWxlcy9ob21lcGFnZS1zZWN0aW9ucy9faGVscC5zY3NzICovXG4uaGVscC0tc2xpZGVzLWl0ZW1zIGxpIHtcbiAgZGlzcGxheTogZmxleDtcbiAganVzdGlmeS1jb250ZW50OiBzcGFjZS1iZXR3ZWVuO1xuICB3aWR0aDogMTAwJTtcbiAgbWFyZ2luLWJvdHRvbTogMzVweDtcbn1cblxuLyogbGluZSA0OSwgc2Nzcy9tb2R1bGVzL2hvbWVwYWdlLXNlY3Rpb25zL19oZWxwLnNjc3MgKi9cbi5oZWxwLS1zbGlkZXMtaXRlbXMgbGk6bGFzdC1jaGlsZCB7XG4gIG1hcmdpbi1ib3R0b206IDA7XG59XG5cbi8qIGxpbmUgNTQsIHNjc3MvbW9kdWxlcy9ob21lcGFnZS1zZWN0aW9ucy9faGVscC5zY3NzICovXG4uaGVscC0tc2xpZGVzLWl0ZW1zIC5jb2wge1xuICB3aWR0aDogMTAwJTtcbn1cblxuLyogbGluZSA1Nywgc2Nzcy9tb2R1bGVzL2hvbWVwYWdlLXNlY3Rpb25zL19oZWxwLnNjc3MgKi9cbi5oZWxwLS1zbGlkZXMtaXRlbXMgLmNvbDpsYXN0LWNoaWxkIHtcbiAgdGV4dC1hbGlnbjogcmlnaHQ7XG59XG5cbi8qIGxpbmUgNjEsIHNjc3MvbW9kdWxlcy9ob21lcGFnZS1zZWN0aW9ucy9faGVscC5zY3NzICovXG4uaGVscC0tc2xpZGVzLWl0ZW1zIC5jb2w6YWZ0ZXIge1xuICBjb250ZW50OiBcIlwiO1xuICB3aWR0aDogNzAlO1xuICBoZWlnaHQ6IDFweDtcbiAgZGlzcGxheTogYmxvY2s7XG4gIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgbWFyZ2luLXRvcDogMjVweDtcbiAgYmFja2dyb3VuZC1jb2xvcjogI2JjYmNiYztcbn1cblxuLyogbGluZSA3Miwgc2Nzcy9tb2R1bGVzL2hvbWVwYWdlLXNlY3Rpb25zL19oZWxwLnNjc3MgKi9cbi5oZWxwLS1zbGlkZXMtaXRlbXMgLmNvbDpsYXN0LWNoaWxkOmFmdGVyIHtcbiAgZmxvYXQ6IHJpZ2h0O1xufVxuXG4vKiBsaW5lIDc3LCBzY3NzL21vZHVsZXMvaG9tZXBhZ2Utc2VjdGlvbnMvX2hlbHAuc2NzcyAqL1xuLmhlbHAtLXNsaWRlcy1pdGVtcyAuY29sIC50aXRsZSB7XG4gIGZvbnQtZmFtaWx5OiAnTWVycml3ZWF0aGVyJywgc2VyaWY7XG4gIGZvbnQtd2VpZ2h0OiAzMDA7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbiAgZm9udC1zaXplOiAycmVtO1xuICBtYXJnaW4tYm90dG9tOiA1cHg7XG59XG5cbi8qIGxpbmUgODMsIHNjc3MvbW9kdWxlcy9ob21lcGFnZS1zZWN0aW9ucy9faGVscC5zY3NzICovXG4uaGVscC0tc2xpZGVzLWl0ZW1zIC5jb2wgLnN1YnRpdGxlIHtcbiAgZm9udC1mYW1pbHk6ICdNZXJyaXdlYXRoZXInLCBzZXJpZjtcbiAgZm9udC13ZWlnaHQ6IDMwMDtcbiAgZm9udC1zdHlsZTogbGlnaHQ7XG4gIGZvbnQtc2l6ZTogMS4ycmVtO1xufVxuXG4vKiBsaW5lIDg4LCBzY3NzL21vZHVsZXMvaG9tZXBhZ2Utc2VjdGlvbnMvX2hlbHAuc2NzcyAqL1xuLmhlbHAtLXNsaWRlcy1pdGVtcyAuY29sIC50ZXh0IHtcbiAgZm9udC1mYW1pbHk6ICdNZXJyaXdlYXRoZXInLCBzZXJpZjtcbiAgZm9udC13ZWlnaHQ6IDMwMDtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXNpemU6IDEuMnJlbTtcbiAgbWFyZ2luLXRvcDogMjBweDtcbn1cblxuLyogbGluZSA5Niwgc2Nzcy9tb2R1bGVzL2hvbWVwYWdlLXNlY3Rpb25zL19oZWxwLnNjc3MgKi9cbi5oZWxwLS1zbGlkZXMtcGFnaW5hdGlvbiB7XG4gIG1hcmdpbi10b3A6IDQwcHg7XG4gIGRpc3BsYXk6IGZsZXg7XG4gIGp1c3RpZnktY29udGVudDogY2VudGVyO1xufVxuXG4vKiBsaW5lIDEwMSwgc2Nzcy9tb2R1bGVzL2hvbWVwYWdlLXNlY3Rpb25zL19oZWxwLnNjc3MgKi9cbi5oZWxwLS1zbGlkZXMtcGFnaW5hdGlvbiBsaSB7XG4gIG1hcmdpbjogMCA4cHg7XG59XG5cbi8qIGxpbmUgMSwgc2Nzcy9tb2R1bGVzL19mb290ZXIuc2NzcyAqL1xuZm9vdGVyIHtcbiAgbWluLWhlaWdodDogODB2aDtcbiAgYmFja2dyb3VuZC1pbWFnZTogdXJsKC4uL2ltYWdlcy9mb290ZXItYmcuanBnKTtcbiAgYmFja2dyb3VuZC1yZXBlYXQ6IG5vLXJlcGVhdDtcbiAgYmFja2dyb3VuZC1zaXplOiBjb3ZlcjtcbiAgYmFja2dyb3VuZC1wb3NpdGlvbjogY2VudGVyO1xuICBkaXNwbGF5OiBmbGV4O1xuICBmbGV4LWRpcmVjdGlvbjogY29sdW1uO1xuICBhbGlnbi1pdGVtczogZmxleC1lbmQ7XG4gIGp1c3RpZnktY29udGVudDogc3BhY2UtYmV0d2VlbjtcbiAgcG9zaXRpb246IHJlbGF0aXZlO1xufVxuXG4vKiBsaW5lIDEzLCBzY3NzL21vZHVsZXMvX2Zvb3Rlci5zY3NzICovXG5mb290ZXIgLmNvbnRhY3Qge1xuICBtYXgtd2lkdGg6IDU4MHB4O1xuICB3aWR0aDogMTAwJTtcbiAgcGFkZGluZy1yaWdodDogMzBweDtcbiAgZmxleC1ncm93OiAxO1xuICBkaXNwbGF5OiBmbGV4O1xuICBmbGV4LWRpcmVjdGlvbjogY29sdW1uO1xuICBqdXN0aWZ5LWNvbnRlbnQ6IGNlbnRlcjtcbn1cblxuLyogbGluZSAyMiwgc2Nzcy9tb2R1bGVzL19mb290ZXIuc2NzcyAqL1xuZm9vdGVyIC5jb250YWN0IGgzIHtcbiAgcGFkZGluZzogMCAxNXB4O1xuICBmb250LXNpemU6IDEuNHJlbTtcbiAgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtcbn1cblxuLyogbGluZSAyOSwgc2Nzcy9tb2R1bGVzL19mb290ZXIuc2NzcyAqL1xuZm9vdGVyIC5jb250YWN0IGZvcm0ge1xuICBtYXJnaW4tdG9wOiAxNXB4O1xuICBqdXN0aWZ5LWNvbnRlbnQ6IGNlbnRlcjtcbn1cblxuLyogbGluZSAzMywgc2Nzcy9tb2R1bGVzL19mb290ZXIuc2NzcyAqL1xuZm9vdGVyIC5jb250YWN0IGZvcm0gW3R5cGU9XCJzdWJtaXRcIl0ge1xuICBtYXJnaW4tdG9wOiAzNXB4O1xufVxuXG4vKiBsaW5lIDM5LCBzY3NzL21vZHVsZXMvX2Zvb3Rlci5zY3NzICovXG5mb290ZXIgLmJvdHRvbS1saW5lIHtcbiAgYWxpZ24tc2VsZjogY2VudGVyO1xuICBkaXNwbGF5OiBmbGV4O1xuICBtYXJnaW4tYm90dG9tOiAxMnB4O1xufVxuXG4vKiBsaW5lIDQ0LCBzY3NzL21vZHVsZXMvX2Zvb3Rlci5zY3NzICovXG5mb290ZXIgLmJvdHRvbS1saW5lLS1jb3B5IHtcbiAgZm9udC1mYW1pbHk6ICdNZXJyaXdlYXRoZXInLCBzZXJpZjtcbiAgZm9udC13ZWlnaHQ6IDQwMDtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXNpemU6IDEuMnJlbTtcbn1cblxuLyogbGluZSA0OSwgc2Nzcy9tb2R1bGVzL19mb290ZXIuc2NzcyAqL1xuZm9vdGVyIC5ib3R0b20tbGluZS0taWNvbnMge1xuICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gIHJpZ2h0OiAxMHZ3O1xuICBib3R0b206IDIwcHg7XG59XG5cbi8qIGxpbmUgNTUsIHNjc3MvbW9kdWxlcy9fZm9vdGVyLnNjc3MgKi9cbmZvb3RlciAuYm90dG9tLWxpbmUtLWljb25zIGEgaW1nIHtcbiAgd2lkdGg6IDIwcHg7XG4gIGhlaWdodDogMjBweDtcbiAgb3BhY2l0eTogMC44O1xufVxuXG4vKiBsaW5lIDE5LCBzY3NzL3N0eWxlLnNjc3MgKi9cbi5sb2dpbi1wYWdlIHtcbiAgZGlzcGxheTogZmxleDtcbiAgZmxleC1kaXJlY3Rpb246IGNvbHVtbjtcbiAgYWxpZ24taXRlbXM6IGNlbnRlcjtcbiAgcGFkZGluZzogMCAxNXB4O1xuICBtYXJnaW46IDUwcHggMDtcbn1cblxuLyogbGluZSAyNiwgc2Nzcy9zdHlsZS5zY3NzICovXG4ubG9naW4tcGFnZSBmb3JtIHtcbiAgbWF4LXdpZHRoOiA1ODBweDtcbiAgd2lkdGg6IDEwMCU7XG4gIG1hcmdpbi10b3A6IDMwcHg7XG59XG5cbi8qIGxpbmUgMzEsIHNjc3Mvc3R5bGUuc2NzcyAqL1xuLmxvZ2luLXBhZ2UgZm9ybSAucmVzZXQtcGFzc3dvcmQge1xuICBmbG9hdDogcmlnaHQ7XG4gIG1hcmdpbi10b3A6IDIwcHg7XG4gIGZvbnQtc2l6ZTogMS40cmVtO1xufVxuXG4vKiBsaW5lIDM3LCBzY3NzL3N0eWxlLnNjc3MgKi9cbi5sb2dpbi1wYWdlIGZvcm0gLmZvcm0tZ3JvdXAge1xuICBtYXJnaW4tYm90dG9tOiA0MHB4O1xufVxuXG4vKiBsaW5lIDQwLCBzY3NzL3N0eWxlLnNjc3MgKi9cbi5sb2dpbi1wYWdlIGZvcm0gLmZvcm0tZ3JvdXAtLWJ1dHRvbnMge1xuICBtYXJnaW4tdG9wOiA1MHB4O1xufVxuXG4vKiBsaW5lIDQ0LCBzY3NzL3N0eWxlLnNjc3MgKi9cbi5sb2dpbi1wYWdlIGZvcm0gLmZvcm0tZ3JvdXA6bGFzdC1vZi10eXBlIHtcbiAgbWFyZ2luLWJvdHRvbTogMDtcbn1cblxuLyogbGluZSA1Miwgc2Nzcy9zdHlsZS5zY3NzICovXG4uZm9ybS0tc3RlcHMgaDMge1xuICBtYXJnaW46IDA7XG4gIGZvbnQtZmFtaWx5OiAnT3BlbiBTYW5zJywgc2Fucy1zZXJpZjtcbiAgZm9udC13ZWlnaHQ6IDYwMDtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXNpemU6IDNyZW07XG59XG5cbi8qIGxpbmUgNTgsIHNjc3Mvc3R5bGUuc2NzcyAqL1xuLmZvcm0tLXN0ZXBzLWluc3RydWN0aW9ucyB7XG4gIGJhY2tncm91bmQtY29sb3I6ICNmOWM5MTA7XG4gIHBhZGRpbmc6IDQwcHggMDtcbn1cblxuLyogbGluZSA2Miwgc2Nzcy9zdHlsZS5zY3NzICovXG4uZm9ybS0tc3RlcHMtaW5zdHJ1Y3Rpb25zIHAge1xuICBtYXJnaW46IDA7XG4gIGZvbnQtc2l6ZTogMS44cmVtO1xuICBkaXNwbGF5OiBub25lO1xufVxuXG4vKiBsaW5lIDY5LCBzY3NzL3N0eWxlLnNjc3MgKi9cbi5mb3JtLS1zdGVwcyAuYWN0aXZlIHtcbiAgZGlzcGxheTogYmxvY2s7XG59XG5cbi8qIGxpbmUgNzMsIHNjc3Mvc3R5bGUuc2NzcyAqL1xuLmZvcm0tLXN0ZXBzLWNvbnRhaW5lciB7XG4gIG1heC13aWR0aDogMTUwMHB4O1xuICB3aWR0aDogMTAwJTtcbiAgcGFkZGluZzogMCAzMHB4O1xuICBtYXJnaW46IDAgYXV0bztcbn1cblxuLyogbGluZSA3Nywgc2Nzcy9zdHlsZS5zY3NzICovXG4uZm9ybS0tc3RlcHMtY291bnRlciB7XG4gIGZvbnQtZmFtaWx5OiAnT3BlbiBTYW5zJywgc2Fucy1zZXJpZjtcbiAgZm9udC13ZWlnaHQ6IDMwMDtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXNpemU6IDJyZW07XG4gIHdpZHRoOiAxMDAlO1xuICBhbGlnbi1zZWxmOiBmbGV4LXN0YXJ0O1xufVxuXG4vKiBsaW5lIDg0LCBzY3NzL3N0eWxlLnNjc3MgKi9cbi5mb3JtLS1zdGVwcyA+IC5mb3JtLS1zdGVwcy1jb250YWluZXIge1xuICBtYXgtd2lkdGg6IG5vbmU7XG4gIHBhZGRpbmc6IDIwcHggMzBweCA2MHB4O1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoLi4vaW1hZ2VzL2Zvcm0tYmcuanBnKTtcbiAgYmFja2dyb3VuZC1zaXplOiBjb3ZlcjtcbiAgYmFja2dyb3VuZC1wb3NpdGlvbjogY2VudGVyIHJpZ2h0O1xuICBtaW4taGVpZ2h0OiA3MDBweDtcbiAgZGlzcGxheTogZmxleDtcbiAgZmxleC13cmFwOiB3cmFwO1xufVxuXG4vKiBsaW5lIDk2LCBzY3NzL3N0eWxlLnNjc3MgKi9cbi5mb3JtLS1zdGVwcyBmb3JtID4gZGl2IHtcbiAgZGlzcGxheTogbm9uZTtcbn1cblxuLyogbGluZSAxMDAsIHNjc3Mvc3R5bGUuc2NzcyAqL1xuLmZvcm0tLXN0ZXBzIGZvcm0gaDMge1xuICBtYXJnaW4tYm90dG9tOiAzMHB4O1xufVxuXG4vKiBsaW5lIDEwNCwgc2Nzcy9zdHlsZS5zY3NzICovXG4uZm9ybS0tc3RlcHMgZm9ybSAuZm9ybS1ncm91cC0tYnV0dG9ucyB7XG4gIG1hcmdpbi10b3A6IDQwcHg7XG4gIGp1c3RpZnktY29udGVudDogZmxleC1zdGFydDtcbn1cblxuLyogbGluZSAxMDksIHNjc3Mvc3R5bGUuc2NzcyAqL1xuLmZvcm0tLXN0ZXBzIGZvcm0gLmZvcm0tZ3JvdXAtLWJ1dHRvbnMgLmJ0bjpudGgtb2YtdHlwZSgyKSB7XG4gIG1hcmdpbi1sZWZ0OiAzMHB4O1xufVxuXG4vKiBsaW5lIDExNiwgc2Nzcy9zdHlsZS5zY3NzICovXG4uZm9ybS0tc3RlcHMgZm9ybSBbZGF0YS1zdGVwPVwiNFwiXSAuZm9ybS1ncm91cC0tY2hlY2tib3gge1xuICBwYWRkaW5nLXRvcDogMjBweDtcbiAgYm9yZGVyLXRvcDogMXB4IHNvbGlkICMzYzNjM2M7XG59XG5cbi8qIGxpbmUgMTIwLCBzY3NzL3N0eWxlLnNjc3MgKi9cbi5mb3JtLS1zdGVwcyBmb3JtIFtkYXRhLXN0ZXA9XCI0XCJdIC5mb3JtLWdyb3VwLS1jaGVja2JveDpmaXJzdC1vZi10eXBlIHtcbiAgYm9yZGVyLXRvcDogbm9uZTtcbn1cblxuLyogbGluZSAxMjYsIHNjc3Mvc3R5bGUuc2NzcyAqL1xuLmZvcm0tLXN0ZXBzIGZvcm0gW2RhdGEtc3RlcD1cIjZcIl0ge1xuICBhbGlnbi1zZWxmOiBjZW50ZXI7XG59XG5cbi8qIGxpbmUgMTMwLCBzY3NzL3N0eWxlLnNjc3MgKi9cbi5mb3JtLS1zdGVwcyBmb3JtIFtkYXRhLXN0ZXA9XCI3XCJdIHtcbiAgbWF4LXdpZHRoOiA3MDBweDtcbiAgd2lkdGg6IDEwMCU7XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgYWxpZ24taXRlbXM6IGNlbnRlcjtcbn1cblxuLyogbGluZSAxMzYsIHNjc3Mvc3R5bGUuc2NzcyAqL1xuLmZvcm0tLXN0ZXBzIGZvcm0gW2RhdGEtc3RlcD1cIjdcIl0uYWN0aXZlIHtcbiAgZGlzcGxheTogZmxleDtcbn1cblxuLyogbGluZSAxNDAsIHNjc3Mvc3R5bGUuc2NzcyAqL1xuLmZvcm0tLXN0ZXBzIGZvcm0gW2RhdGEtc3RlcD1cIjdcIl0gaDIge1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIGZvbnQtc2l6ZTogM3JlbTtcbiAgbGluZS1oZWlnaHQ6IDQuNXJlbTtcbiAgZm9udC1mYW1pbHk6ICdPcGVuIFNhbnMnLCBzYW5zLXNlcmlmO1xuICBmb250LXdlaWdodDogMzAwO1xuICBmb250LXN0eWxlOiBub3JtYWw7XG59XG5cbi8qIGxpbmUgMjAsIHNjc3MvcGFydGlhbHMvX21peGlucy5zY3NzICovXG4uZm9ybS0tc3RlcHMgZm9ybSBbZGF0YS1zdGVwPVwiN1wiXSBoMjphZnRlciB7XG4gIGNvbnRlbnQ6IFwiXCI7XG4gIGRpc3BsYXk6IGJsb2NrO1xuICB3aWR0aDogMjU2cHg7XG4gIGhlaWdodDogNDBweDtcbiAgYmFja2dyb3VuZC1pbWFnZTogdXJsKC4uL2ltYWdlcy9kZWNvcmF0aW9uLnN2Zyk7XG4gIGJhY2tncm91bmQtc2l6ZTogY29udGFpbjtcbiAgbWFyZ2luLXRvcDogMjVweDtcbiAgbWFyZ2luLWxlZnQ6IGNhbGMoNTAlIC0gMTI4cHgpO1xufVxuXG4vKiBsaW5lIDE0OSwgc2Nzcy9zdHlsZS5zY3NzICovXG4uZm9ybS0tc3RlcHMgZm9ybSAuc3VtbWFyeSB7XG4gIHBhZGRpbmc6IDAgMTVweDtcbn1cblxuLyogbGluZSAxNTIsIHNjc3Mvc3R5bGUuc2NzcyAqL1xuLmZvcm0tLXN0ZXBzIGZvcm0gLnN1bW1hcnkgdWwge1xuICBsaXN0LXN0eWxlOiBub25lO1xuICBwYWRkaW5nOiAwO1xuICBtYXJnaW46IDA7XG59XG5cbi8qIGxpbmUgMTU3LCBzY3NzL3N0eWxlLnNjc3MgKi9cbi5mb3JtLS1zdGVwcyBmb3JtIC5zdW1tYXJ5IHVsIGxpIHtcbiAgZGlzcGxheTogZmxleDtcbiAgYWxpZ24taXRlbXM6IGNlbnRlcjtcbiAgZm9udC1zaXplOiAxLjhyZW07XG4gIG1hcmdpbi1ib3R0b206IDEwcHg7XG59XG5cbi8qIGxpbmUgMTYzLCBzY3NzL3N0eWxlLnNjc3MgKi9cbi5mb3JtLS1zdGVwcyBmb3JtIC5zdW1tYXJ5IHVsIGxpIC5pY29uIHtcbiAgd2lkdGg6IDYwcHg7XG4gIGhlaWdodDogNjBweDtcbiAgYmFja2dyb3VuZC1zaXplOiBjb3ZlcjtcbiAgbWFyZ2luLXJpZ2h0OiAyMHB4O1xufVxuXG4vKiBsaW5lIDE2OSwgc2Nzcy9zdHlsZS5zY3NzICovXG4uZm9ybS0tc3RlcHMgZm9ybSAuc3VtbWFyeSB1bCBsaSAuaWNvbi1iYWcge1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoLi4vaW1hZ2VzL2ljb24tYmFnLnBuZyk7XG59XG5cbi8qIGxpbmUgMTczLCBzY3NzL3N0eWxlLnNjc3MgKi9cbi5mb3JtLS1zdGVwcyBmb3JtIC5zdW1tYXJ5IHVsIGxpIC5pY29uLWhhbmQge1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoLi4vaW1hZ2VzL2ljb24taGFuZC5wbmcpO1xufVxuIl19 */
        .form-section {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            max-width: 400px;
            margin: 0 auto;
        }

        .form-section label {
            margin-bottom: 5px;
        }

        .form-section input,
        .form-section select,
        .form-section textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .form-section textarea {
            height: 100px;
        }

        .form-section input[type="date"],
        .form-section input[type="time"] {
            width: auto;
        }

        .form-section button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-section button:hover {
            background-color: #45a049;
        }
        .table-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .table-section {
            width: 75%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #f9f9f9;
        }

        .table-section table {
            width: 100%;
            border-collapse: collapse;
        }

        .table-section th,
        .table-section td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        .table-section th {
            background-color: #f2f2f2;
        }

        .table-section tbody tr:hover {
            background-color: #eaeaea;
        }

    </style>
</head>
<body>
<header class="header--main-page">
    <nav class="container container--70">
        <ul class="nav--actions">
            <li><a href="/logout" class="btn btn--small btn--without-border">Wyloguj</a></li>
        </ul>

        <ul>
            <li><a href="/" class="btn btn--without-border active">Start</a></li>
            <li><a href="#steps" class="btn btn--without-border">O co chodzi?</a></li>
            <li><a href="#" class="btn btn--without-border">O nas</a></li>
            <li><a href="/user/edit" class="btn btn--without-border">Moje Dane</a></li>
            <li><a href="/user/donationslList" class="btn btn--without-border">Moje Wysyłki</a></li>
        </ul>
    </nav>
    </div>
</header>