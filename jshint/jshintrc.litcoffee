#[jshint](http://www.jshint.com/docs/#options) Coding Guidelines for RTP

_Captures the configuration object:_

    jshtinrc = {

##Default jshint options

Whether the scan should stop on first error.

        passfail: false

Maximum errors before stopping.

        maxerr: 50

##Standard predefined globals

Whether the **standard** browser globals should be predefined.

        browser: true

Whether the **Node.js** environment globals should be predefined.

        node: true

Whether **jQuery** globals should be predefined.

        jquery: true

Whether **Prototype** and **Scriptaculous** globals should be predefined.

        prototypejs: true

Whether **non-standard** but widely adopted globals such as escape and unescape should be predefined.

        nonstandard: false

Whether **PhantomJS** globals should be predefined. This option requires jshint version >= 1.1.0

        phantom: true

##Custom predefined globals
See [here](https://github.com/jshint/jshint/blob/c047ea1b01097fcc220fcd1a55c41f67ae2e6e81/jshint.js) for examples.
If a variable is defined in another file, use `/*global myVar:false, myOtherVar:true */` directive to tell JSHint about it.

        globals:

**RTP** Namespace

            RTP: true

**Backbone** and **underscore/lo-dash** support

            Backbone: false
            _: false

##Development
Relax these options with `/* jshint debug: true, devel: true */` from within js files when developing and debugging.

Whether debugger statements should be allowed.

        debug: false

Whether logging globals should be predefined (console, alert, etc.).

        devel: false

##Complexity

This option lets you set the max number of formal parameters allowed per function.

        maxparams: 6

This option lets you control how nested do you want your blocks to be.

        maxdepth: 6

This option lets you set the max number of statements allowed per function.

        maxstatements: 25

This option lets you control cyclomatic complexity throughout your code. A general recommendation is to refactor anything which exceeds 10

        maxcomplexity: 10


##ECMAScript

Whether ES5 syntax should be allowed.

        es5: false

This option requires all functions to run in ECMAScript 5 strict mode.

        strict: true

Whether global use strict; should be allowed.

        globalstrict: false

Whether es.next specific syntax should be allowed.

        esnext: false


##The Good Parts


Whether bitwise operators (&, |, ^, etc.) should be forbidden.

        bitwise: true

Whether assignments inside `if`, `for` and `while` should be allowed. Usually

conditions and loops are for comparison, not assignments.

        boss: false

Whether curly braces around all blocks should be required.

        curly: true

Whether `===` and `!==` should be required (instead of `==` and `!=`).

        eqeqeq: true

Whether `== null` comparisons should be allowed, even if `eqeqeq` is `true`.

        eqnull: false

Whether `eval` should be allowed.

        evil: false

Whether ExpressionStatement should be allowed as Programs.

        expr: false

Whether `for in` loops must filter with `hasOwnPrototype`.

        forin: true

Whether immediate invocations must be wrapped in parens, e.g. `( function(){}() );`.

        immed: true

Whether use before define should be forbidden.

        latedef: true

Whether functions should be allowed to be defined within loops.

        loopfunc: true

Whether arguments.caller and arguments.callee should be forbidden.

        noarg: true

Whether `.` should be forbidden in regexp literals.

        regexp: false

Whether unescaped first/last dash (-) inside brackets in regexps should be allowed.

        regexdash: false

Whether script-targeted URLs should be allowed.

        scripturl: false

Whether variable shadowing (declaring a variable that had been already declared somewhere in the outer scope.) should be allowed.

        shadow: false

Whether `new function () { ... };` and `new Object;` should be allowed.

        supernew: false

Whether variables must be declared before used.

        undef: true

Whether `this` inside a non-constructor function should be allowed.

        validthis: false

Whether [smarttabs](http://www.emacswiki.org/emacs/SmartTabs) should be allowed

        smarttabs: false

Whether the `__proto__` property should be allowed.

        proto: false

Whether one-case switch statements should be allowed.

        onecase: false

Allow multiline strings.

        multistr: true

Whether semicolons may be ommitted for the trailing statement inside of a one-line block.

        lastsemic: true

Whether the `__iterator__` property should be allowed.

        iterator: false

Whether only function scope should be used for scope tests.

        funcscope: false

##Style preferences

Whether automatic semicolon insertion should be allowed. Javascript allows using `\n` (newlines) as a terminator and many leading js coders use this feature. However, for the purposes of promoting consistency and preventing ambiguity and with the exception of laxcommas and lastsemic we are enforcing usage of semicolons.

        asi: false

Whether line breaks should not be checked, e.g. `return [\n] x`.

        laxbreak: false

This option suppresses warnings about comma-first coding style, i.e. whether line breaks should not be checked around commas: `, handle: valueof`

        laxcomma: true

Whether constructor names must be capitalized.

        newcap: true

Whether empty blocks should be forbidden.

        noempty: true

Whether using `new` for side-effects should be forbidden.

        nonew: false

Whether names should be checked for leading or trailing underscores (`object._attribute` would be forbidden).

        nomen: true

Whether only one var statement per function should be allowed.

        onevar: false

Whether increment and decrement (`++` and `--`) should be forbidden. Using increments and decrements in tricky ways can lead to bugs

        plusplus: true

Whether all forms of subscript notation are allowed.

        sub: false

Whether trailing whitespace rules apply.

        trailing: true

Whether strict whitespace rules apply.

        white: true

Specify indentation.

        indent: 4

Sets the maximum recommended length of a line.

        maxlen: 140

This option enforces the consistency of quotation marks used throughout your code. `true` enforces consistency.

        quotmark: true

    }

_Prints the configuration object as JSON to the console_

    console.log(JSON.stringify(jshtinrc));