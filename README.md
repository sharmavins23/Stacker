# Stacker

This project houses a beginner Racket tutorial follow-along on
[Stacker.](https://beautifulracket.com/stacker)

The project is a postfix stack-based calculator compiler.

## How to use

Modify the lines underneath the `#lang` line in `stacker-test.rkt` with the
expected postfix expression. Each value or operator should be on a new line.

Make sure to modify the comments with the current expression too, in order to
cross-reference the answer.

## Additions and modifications

The original project has been modified to include division and subtraction,
taken from the `br/quicklang` library. Suppose the following equation is to be
solved:

```
(26 / 5) + 336 * (17 - 7)
```

The correct postfix expression would be written as:

```
26 5 / 17 7 - 336 * +
```

Transforming this string list:

```
26
5
/
17
7
-
336
*
+
```

As such, the `stacker-test.rkt` file should be:

```racket
;; Runs our postfix calculation stack
;; Current expression:
;; * (26 / 5) + 336 * (17 - 7)
;; Expected outcome:
;; * 3365.2 == 16826/5
#lang reader "stacker.rkt"
26
5
/
17
7
-
336
*
+
```

# License TL;DR

This project is distributed under the MIT license. This is a paraphrasing of a
[short summary](https://tldrlegal.com/license/mit-license).

This license is a short, permissive software license. Basically, you can do
whatever you want with this software, as long as you include the original
copyright and license notice in any copy of this software/source.

## What you CAN do:

-   You may commercially use this project in any way, and profit off it or the
    code included in any way;
-   You may modify or make changes to this project in any way;
-   You may distribute this project, the compiled code, or its source in any
    way;
-   You may incorporate this work into something that has a more restrictive
    license in any way;
-   And you may use the work for private use.

## What you CANNOT do:

-   You may not hold me (the author) liable for anything that happens to this
    code as well as anything that this code accomplishes. The work is provided
    as-is.

## What you MUST do:

-   You must include the copyright notice in all copies or substantial uses of
    the work;
-   You must include the license notice in all copies or substantial uses of the
    work.

If you're feeling generous, give credit to me somewhere in your projects.
