;;; third-party-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "ag" "ag.el" (0 0 0 0))
;;; Generated autoloads from ag.el

(autoload 'ag "ag" "\
Search using ag in a given DIRECTORY for a given literal search STRING,
with STRING defaulting to the symbol under point.

If called with a prefix, prompts for flags to pass to ag.

\(fn STRING DIRECTORY)" t nil)

(autoload 'ag-files "ag" "\
Search using ag in a given DIRECTORY for a given literal search STRING,
limited to files that match FILE-TYPE. STRING defaults to the
symbol under point.

If called with a prefix, prompts for flags to pass to ag.

\(fn STRING FILE-TYPE DIRECTORY)" t nil)

(autoload 'ag-regexp "ag" "\
Search using ag in a given directory for a given regexp.
The regexp should be in PCRE syntax, not Emacs regexp syntax.

If called with a prefix, prompts for flags to pass to ag.

\(fn STRING DIRECTORY)" t nil)

(autoload 'ag-project "ag" "\
Guess the root of the current project and search it with ag
for the given literal search STRING.

If called with a prefix, prompts for flags to pass to ag.

\(fn STRING)" t nil)

(autoload 'ag-project-files "ag" "\
Search using ag for a given literal search STRING,
limited to files that match FILE-TYPE. STRING defaults to the
symbol under point.

If called with a prefix, prompts for flags to pass to ag.

\(fn STRING FILE-TYPE)" t nil)

(autoload 'ag-project-regexp "ag" "\
Guess the root of the current project and search it with ag
for the given regexp. The regexp should be in PCRE syntax, not
Emacs regexp syntax.

If called with a prefix, prompts for flags to pass to ag.

\(fn REGEXP)" t nil)

(defalias 'ag-project-at-point 'ag-project)

(defalias 'ag-regexp-project-at-point 'ag-project-regexp)

(autoload 'ag-dired "ag" "\
Recursively find files in DIR matching literal search STRING.

The PATTERN is matched against the full path to the file, not
only against the file name.

The results are presented as a `dired-mode' buffer with
`default-directory' being DIR.

See also `ag-dired-regexp'.

\(fn DIR STRING)" t nil)

(autoload 'ag-dired-regexp "ag" "\
Recursively find files in DIR matching REGEXP.
REGEXP should be in PCRE syntax, not Emacs regexp syntax.

The REGEXP is matched against the full path to the file, not
only against the file name.

Results are presented as a `dired-mode' buffer with
`default-directory' being DIR.

See also `find-dired'.

\(fn DIR REGEXP)" t nil)

(autoload 'ag-project-dired "ag" "\
Recursively find files in current project matching PATTERN.

See also `ag-dired'.

\(fn PATTERN)" t nil)

(autoload 'ag-project-dired-regexp "ag" "\
Recursively find files in current project matching REGEXP.

See also `ag-dired-regexp'.

\(fn REGEXP)" t nil)

(autoload 'ag-kill-buffers "ag" "\
Kill all `ag-mode' buffers." t nil)

(autoload 'ag-kill-other-buffers "ag" "\
Kill all `ag-mode' buffers other than the current buffer." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ag" '("ag-" "ag/")))

;;;***

;;;### (autoloads nil "cmake-mode" "cmake-mode.el" (0 0 0 0))
;;; Generated autoloads from cmake-mode.el

(autoload 'cmake-mode "cmake-mode" "\
Major mode for editing CMake source files.

\(fn)" t nil)

(autoload 'cmake-command-run "cmake-mode" "\
Runs the command cmake with the arguments specified.  The
optional argument topic will be appended to the argument list.

\(fn TYPE &optional TOPIC BUFFER)" t nil)

(autoload 'cmake-help-list-commands "cmake-mode" "\
Prints out a list of the cmake commands." t nil)

(autoload 'cmake-help-command "cmake-mode" "\
Prints out the help message for the command the cursor is on." t nil)

(autoload 'cmake-help-module "cmake-mode" "\
Prints out the help message for the module the cursor is on." t nil)

(autoload 'cmake-help-variable "cmake-mode" "\
Prints out the help message for the variable the cursor is on." t nil)

(autoload 'cmake-help-property "cmake-mode" "\
Prints out the help message for the property the cursor is on." t nil)

(autoload 'cmake-help "cmake-mode" "\
Queries for any of the four available help topics and prints out the appropriate page." t nil)

(add-to-list 'auto-mode-alist '("CMakeLists\\.txt\\'" . cmake-mode))

(add-to-list 'auto-mode-alist '("\\.cmake\\'" . cmake-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cmake-mode" '("cmake-")))

;;;***

;;;### (autoloads nil "company" "company.el" (0 0 0 0))
;;; Generated autoloads from company.el

(autoload 'company-mode "company" "\
\"complete anything\"; is an in-buffer completion framework.
Completion starts automatically, depending on the values
`company-idle-delay' and `company-minimum-prefix-length'.

If called interactively, enable Company mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

Completion can be controlled with the commands:
`company-complete-common', `company-complete-selection', `company-complete',
`company-select-next', `company-select-previous'.  If these commands are
called before `company-idle-delay', completion will also start.

Completions can be searched with `company-search-candidates' or
`company-filter-candidates'.  These can be used while completion is
inactive, as well.

The completion data is retrieved using `company-backends' and displayed
using `company-frontends'.  If you want to start a specific backend, call
it interactively or use `company-begin-backend'.

By default, the completions list is sorted alphabetically, unless the
backend chooses otherwise, or `company-transformers' changes it later.

regular keymap (`company-mode-map'):

\\{company-mode-map}
keymap during active completions (`company-active-map'):

\\{company-active-map}

\(fn &optional ARG)" t nil)

(put 'global-company-mode 'globalized-minor-mode t)

(defvar global-company-mode nil "\
Non-nil if Global Company mode is enabled.
See the `global-company-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-company-mode'.")

(custom-autoload 'global-company-mode "company" nil)

(autoload 'global-company-mode "company" "\
Toggle Company mode in all buffers.
With prefix ARG, enable Global Company mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Company mode is enabled in all buffers where
`company-mode-on' would do it.
See `company-mode' for more information on Company mode.

\(fn &optional ARG)" t nil)

(autoload 'company-manual-begin "company" nil t nil)

(autoload 'company-complete "company" "\
Insert the common part of all candidates or the current selection.
The first time this is called, the common part is inserted, the second
time, or when the selection has been changed, the selected candidate is
inserted." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company" '("company-")))

;;;***

;;;### (autoloads nil "company-abbrev" "company-abbrev.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from company-abbrev.el

(autoload 'company-abbrev "company-abbrev" "\
`company-mode' completion backend for abbrev.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-abbrev" '("company-abbrev-insert")))

;;;***

;;;### (autoloads nil "company-dabbrev" "company-dabbrev.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from company-dabbrev.el

(autoload 'company-dabbrev "company-dabbrev" "\
dabbrev-like `company-mode' completion backend.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-dabbrev" '("company-dabbrev-")))

;;;***

;;;### (autoloads nil "company-dabbrev-code" "company-dabbrev-code.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-dabbrev-code.el

(autoload 'company-dabbrev-code "company-dabbrev-code" "\
dabbrev-like `company-mode' backend for code.
The backend looks for all symbols in the current buffer that aren't in
comments or strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-dabbrev-code" '("company-dabbrev-code-")))

;;;***

;;;### (autoloads nil "company-lsp" "company-lsp.el" (0 0 0 0))
;;; Generated autoloads from company-lsp.el

(autoload 'company-lsp "company-lsp" "\
Define a company backend for lsp-mode.

See the documentation of `company-backends' for COMMAND and ARG.

\(fn COMMAND &optional ARG &rest _)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-lsp" '("company-lsp-")))

;;;***

;;;### (autoloads nil "diminish" "diminish.el" (0 0 0 0))
;;; Generated autoloads from diminish.el

(autoload 'diminish "diminish" "\
Diminish mode-line display of minor mode MODE to TO-WHAT (default \"\").

Interactively, enter (with completion) the name of any minor mode, followed
on the next line by what you want it diminished to (default empty string).
The response to neither prompt should be quoted.  However, in Lisp code,
both args must be quoted, the first as a symbol, the second as a string,
as in (diminish 'jiggle-mode \" Jgl\").

The mode-line displays of minor modes usually begin with a space, so
the modes' names appear as separate words on the mode line.  However, if
you're having problems with a cramped mode line, you may choose to use single
letters for some modes, without leading spaces.  Capitalizing them works
best; if you then diminish some mode to \"X\" but have abbrev-mode enabled as
well, you'll get a display like \"AbbrevX\".  This function prepends a space
to TO-WHAT if it's > 1 char long & doesn't already begin with a space.

\(fn MODE &optional TO-WHAT)" t nil)

(autoload 'diminish-undo "diminish" "\
Restore mode-line display of diminished mode MODE to its minor-mode value.
Do nothing if the arg is a minor mode that hasn't been diminished.

Interactively, enter (with completion) the name of any diminished mode (a
mode that was formerly a minor mode on which you invoked \\[diminish]).
To restore all diminished modes to minor status, answer `diminished-modes'.
The response to the prompt shouldn't be quoted.  However, in Lisp code,
the arg must be quoted as a symbol, as in (diminish-undo 'diminished-modes).

\(fn MODE)" t nil)

(autoload 'diminished-modes "diminish" "\
Echo all active diminished or minor modes as if they were minor.
The display goes in the echo area; if it's too long even for that,
you can see the whole thing in the *Messages* buffer.
This doesn't change the status of any modes; it just lets you see
what diminished modes would be on the mode-line if they were still minor.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "diminish" '("diminish")))

;;;***

;;;### (autoloads nil "dockerfile-mode" "dockerfile-mode.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from dockerfile-mode.el

(autoload 'dockerfile-build-buffer "dockerfile-mode" "\
Build an image called IMAGE-NAME based upon the buffer.
If prefix arg NO-CACHE is set, don't cache the image.

\(fn IMAGE-NAME &optional NO-CACHE)" t nil)

(autoload 'dockerfile-build-no-cache-buffer "dockerfile-mode" "\
Build an image called IMAGE-NAME based upon the buffer without cache.

\(fn IMAGE-NAME)" t nil)

(autoload 'dockerfile-mode "dockerfile-mode" "\
A major mode to edit Dockerfiles.
\\{dockerfile-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("Dockerfile\\(?:\\..*\\)?\\'" . dockerfile-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dockerfile-mode" '("dockerfile-")))

;;;***

;;;### (autoloads nil "editorconfig" "editorconfig.el" (0 0 0 0))
;;; Generated autoloads from editorconfig.el

(autoload 'editorconfig-apply "editorconfig" "\
Get and apply EditorConfig properties to current buffer.
This function ignores `editorconfig-exclude-modes' and
`editorconfig-exclude-regexps', and always applies available properties." t nil)

(defvar editorconfig-mode nil "\
Non-nil if Editorconfig mode is enabled.
See the `editorconfig-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `editorconfig-mode'.")

(custom-autoload 'editorconfig-mode "editorconfig" nil)

(autoload 'editorconfig-mode "editorconfig" "\
Toggle EditorConfig feature.

If called interactively, enable Editorconfig mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

To disable EditorConfig in some buffers, modify
`editorconfig-exclude-modes' or `editorconfig-exclude-regexps'.

\(fn &optional ARG)" t nil)

(autoload 'editorconfig-find-current-editorconfig "editorconfig" "\
Find the closest .editorconfig file for current file." t nil)

(autoload 'editorconfig-display-current-properties "editorconfig" "\
Display EditorConfig properties extracted for current buffer." t nil)

(defalias 'describe-editorconfig-properties 'editorconfig-display-current-properties)

(autoload 'editorconfig-format-buffer "editorconfig" "\
Format buffer according to .editorconfig indent_style and indent_width." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "editorconfig" '("editorconfig-")))

;;;***

;;;### (autoloads nil "editorconfig-conf-mode" "editorconfig-conf-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from editorconfig-conf-mode.el

(autoload 'editorconfig-conf-mode "editorconfig-conf-mode" "\
Major mode for editing .editorconfig files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.editorconfig\\'" . editorconfig-conf-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "editorconfig-conf-mode" '("editorconfig-conf-mode-syntax-table")))

;;;***

;;;### (autoloads nil "editorconfig-core" "editorconfig-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from editorconfig-core.el

(autoload 'editorconfig-core-get-nearest-editorconfig "editorconfig-core" "\
Return path to .editorconfig file that is closest to DIRECTORY.

\(fn DIRECTORY)" nil nil)

(autoload 'editorconfig-core-get-properties "editorconfig-core" "\
Get EditorConfig properties for FILE.
If FILE is not given, use currently visiting file.
Give CONFNAME for basename of config file other than .editorconfig.
If need to specify config format version, give CONFVERSION.

This functions returns alist of properties.  Each element will look like
'(KEY . VALUE) .

\(fn &optional FILE CONFNAME CONFVERSION)" nil nil)

(autoload 'editorconfig-core-get-properties-hash "editorconfig-core" "\
Get EditorConfig properties for FILE.
If FILE is not given, use currently visiting file.
Give CONFNAME for basename of config file other than .editorconfig.
If need to specify config format version, give CONFVERSION.

This function is almost same as `editorconfig-core-get-properties', but returns
hash object instead.

\(fn &optional FILE CONFNAME CONFVERSION)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "editorconfig-core" '("editorconfig-core-")))

;;;***

;;;### (autoloads nil "editorconfig-fnmatch" "editorconfig-fnmatch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from editorconfig-fnmatch.el

(autoload 'editorconfig-fnmatch-p "editorconfig-fnmatch" "\
Test whether STRING match PATTERN.

Matching ignores case if `case-fold-search' is non-nil.

PATTERN should be a shell glob pattern, and some zsh-like wildcard matchings can
be used:

*           Matches any string of characters, except path separators (/)
**          Matches any string of characters
?           Matches any single character
\[name]      Matches any single character in name
\[^name]     Matches any single character not in name
{s1,s2,s3}  Matches any of the strings given (separated by commas)
{min..max}  Matches any number between min and max

\(fn STRING PATTERN)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "editorconfig-fnmatch" '("editorconfig-fnmatch-")))

;;;***

;;;### (autoloads nil "exec-path-from-shell" "exec-path-from-shell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from exec-path-from-shell.el

(autoload 'exec-path-from-shell-copy-envs "exec-path-from-shell" "\
Set the environment variables with NAMES from the user's shell.

As a special case, if the variable is $PATH, then `exec-path' and
`eshell-path-env' are also set appropriately.  The result is an alist,
as described by `exec-path-from-shell-getenvs'.

\(fn NAMES)" nil nil)

(autoload 'exec-path-from-shell-copy-env "exec-path-from-shell" "\
Set the environment variable $NAME from the user's shell.

As a special case, if the variable is $PATH, then `exec-path' and
`eshell-path-env' are also set appropriately.  Return the value
of the environment variable.

\(fn NAME)" t nil)

(autoload 'exec-path-from-shell-initialize "exec-path-from-shell" "\
Initialize environment from the user's shell.

The values of all the environment variables named in
`exec-path-from-shell-variables' are set from the corresponding
values used in the user's shell." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "exec-path-from-shell" '("exec-path-from-shell-")))

;;;***

;;;### (autoloads nil "flx-ido" "flx-ido.el" (0 0 0 0))
;;; Generated autoloads from flx-ido.el

(defvar flx-ido-mode nil "\
Non-nil if Flx-Ido mode is enabled.
See the `flx-ido-mode' command
for a description of this minor mode.")

(custom-autoload 'flx-ido-mode "flx-ido" nil)

(autoload 'flx-ido-mode "flx-ido" "\
Toggle flx ido mode

If called interactively, enable Flx-Ido mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "flx-ido" '("flx-")))

;;;***

;;;### (autoloads nil "flycheck" "flycheck.el" (0 0 0 0))
;;; Generated autoloads from flycheck.el

(autoload 'flycheck-manual "flycheck" "\
Open the Flycheck manual." t nil)

(autoload 'flycheck-mode "flycheck" "\
Minor mode for on-the-fly syntax checking.

When called interactively, toggle `flycheck-mode'.  With prefix
ARG, enable `flycheck-mode' if ARG is positive, otherwise disable
it.

When called from Lisp, enable `flycheck-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `flycheck-mode'.
Otherwise behave as if called interactively.

In `flycheck-mode' the buffer is automatically syntax-checked
using the first suitable syntax checker from `flycheck-checkers'.
Use `flycheck-select-checker' to select a checker for the current
buffer manually.

\\{flycheck-mode-map}

\(fn &optional ARG)" t nil)

(put 'global-flycheck-mode 'globalized-minor-mode t)

(defvar global-flycheck-mode nil "\
Non-nil if Global Flycheck mode is enabled.
See the `global-flycheck-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-flycheck-mode'.")

(custom-autoload 'global-flycheck-mode "flycheck" nil)

(autoload 'global-flycheck-mode "flycheck" "\
Toggle Flycheck mode in all buffers.
With prefix ARG, enable Global Flycheck mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Flycheck mode is enabled in all buffers where
`flycheck-mode-on-safe' would do it.
See `flycheck-mode' for more information on Flycheck mode.

\(fn &optional ARG)" t nil)

(autoload 'flycheck-define-error-level "flycheck" "\
Define a new error LEVEL with PROPERTIES.

The following PROPERTIES constitute an error level:

`:severity SEVERITY'
     A number denoting the severity of this level.  The higher
     the number, the more severe is this level compared to other
     levels.  Defaults to 0.

     The severity is used by `flycheck-error-level-<' to
     determine the ordering of errors according to their levels.

`:compilation-level LEVEL'

     A number indicating the broad class of messages that errors
     at this level belong to: one of 0 (info), 1 (warning), or
     2 or nil (error).  Defaults to nil.

     This is used by `flycheck-checker-pattern-to-error-regexp'
     to map error levels into `compilation-mode''s hierarchy and
     to get proper highlighting of errors in `compilation-mode'.

`:overlay-category CATEGORY'
     A symbol denoting the overlay category to use for error
     highlight overlays for this level.  See Info
     node `(elisp)Overlay Properties' for more information about
     overlay categories.

     A category for an error level overlay should at least define
     the `face' property, for error highlighting.  Another useful
     property for error level categories is `priority', to
     influence the stacking of multiple error level overlays.

`:fringe-bitmap BITMAP'
     A fringe bitmap symbol denoting the bitmap to use for fringe
     indicators for this level.  See Info node `(elisp)Fringe
     Bitmaps' for more information about fringe bitmaps,
     including a list of built-in fringe bitmaps.

`:fringe-face FACE'
     A face symbol denoting the face to use for fringe indicators
     for this level.

`:error-list-face FACE'
     A face symbol denoting the face to use for messages of this
     level in the error list.  See `flycheck-list-errors'.

\(fn LEVEL &rest PROPERTIES)" nil nil)

(function-put 'flycheck-define-error-level 'lisp-indent-function '1)

(autoload 'flycheck-define-command-checker "flycheck" "\
Define SYMBOL as syntax checker to run a command.

Define SYMBOL as generic syntax checker via
`flycheck-define-generic-checker', which uses an external command
to check the buffer.  SYMBOL and DOCSTRING are the same as for
`flycheck-define-generic-checker'.

In addition to the properties understood by
`flycheck-define-generic-checker', the following PROPERTIES
constitute a command syntax checker.  Unless otherwise noted, all
properties are mandatory.  Note that the default `:error-filter'
of command checkers is `flycheck-sanitize-errors'.

`:command COMMAND'
     The command to run for syntax checking.

     COMMAND is a list of the form `(EXECUTABLE [ARG ...])'.

     EXECUTABLE is a string with the executable of this syntax
     checker.  It can be overridden with the variable
     `flycheck-SYMBOL-executable'.  Note that this variable is
     NOT implicitly defined by this function.  Use
     `flycheck-def-executable-var' to define this variable.

     Each ARG is an argument to the executable, either as string,
     or as special symbol or form for
     `flycheck-substitute-argument', which see.

`:error-patterns PATTERNS'
     A list of patterns to parse the output of the `:command'.

     Each ITEM in PATTERNS is a list `(LEVEL SEXP ...)', where
     LEVEL is a Flycheck error level (see
     `flycheck-define-error-level'), followed by one or more RX
     `SEXP's which parse an error of that level and extract line,
     column, file name and the message.

     See `rx' for general information about RX, and
     `flycheck-rx-to-string' for some special RX forms provided
     by Flycheck.

     All patterns are applied in the order of declaration to the
     whole output of the syntax checker.  Output already matched
     by a pattern will not be matched by subsequent patterns.  In
     other words, the first pattern wins.

     This property is optional.  If omitted, however, an
     `:error-parser' is mandatory.

`:error-parser FUNCTION'
     A function to parse errors with.

     The function shall accept three arguments OUTPUT CHECKER
     BUFFER.  OUTPUT is the syntax checker output as string,
     CHECKER the syntax checker that was used, and BUFFER a
     buffer object representing the checked buffer.  The function
     must return a list of `flycheck-error' objects parsed from
     OUTPUT.

     This property is optional.  If omitted, it defaults to
     `flycheck-parse-with-patterns'.  In this case,
     `:error-patterns' is mandatory.

`:standard-input t'
     Whether to send the buffer contents on standard input.

     If this property is given and has a non-nil value, send the
     contents of the buffer on standard input.

     Defaults to nil.

Note that you may not give `:start', `:interrupt', and
`:print-doc' for a command checker.  You can give a custom
`:verify' function, though, whose results will be appended to the
default `:verify' function of command checkers.

\(fn SYMBOL DOCSTRING &rest PROPERTIES)" nil nil)

(function-put 'flycheck-define-command-checker 'lisp-indent-function '1)

(function-put 'flycheck-define-command-checker 'doc-string-elt '2)

(autoload 'flycheck-def-config-file-var "flycheck" "\
Define SYMBOL as config file variable for CHECKER, with default FILE-NAME.

SYMBOL is declared as customizable variable using `defcustom', to
provide a configuration file for the given syntax CHECKER.
CUSTOM-ARGS are forwarded to `defcustom'.

FILE-NAME is the initial value of the new variable.  If omitted,
the default value is nil.

Use this together with the `config-file' form in the `:command'
argument to `flycheck-define-checker'.

\(fn SYMBOL CHECKER &optional FILE-NAME &rest CUSTOM-ARGS)" nil t)

(function-put 'flycheck-def-config-file-var 'lisp-indent-function '3)

(autoload 'flycheck-def-option-var "flycheck" "\
Define SYMBOL as option variable with INIT-VALUE for CHECKER.

SYMBOL is declared as customizable variable using `defcustom', to
provide an option for the given syntax CHECKERS (a checker or a
list of checkers).  INIT-VALUE is the initial value of the
variable, and DOCSTRING is its docstring.  CUSTOM-ARGS are
forwarded to `defcustom'.

Use this together with the `option', `option-list' and
`option-flag' forms in the `:command' argument to
`flycheck-define-checker'.

\(fn SYMBOL INIT-VALUE CHECKERS DOCSTRING &rest CUSTOM-ARGS)" nil t)

(function-put 'flycheck-def-option-var 'lisp-indent-function '3)

(function-put 'flycheck-def-option-var 'doc-string-elt '4)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "flycheck" '("contains-rebar-config" "flycheck-" "help-flycheck-checker-d" "list-flycheck-errors" "locate-rebar3-project-root" "read-flycheck-")))

;;;***

;;;### (autoloads nil "ghub" "ghub.el" (0 0 0 0))
;;; Generated autoloads from ghub.el

(autoload 'ghub-create-token "ghub" "\
Create, store and return a new token.

HOST is the Github instance, usually \"api.github.com\".
USERNAME is the name of a user on that instance.
PACKAGE is the package that will use the token.
SCOPES are the scopes the token is given access to.

\(fn HOST USERNAME PACKAGE SCOPES)" t nil)

(autoload 'ghub-token-scopes "ghub" "\
Return and echo the scopes of the specified token.
This is intended for debugging purposes only.  The user
has to provide several values including their password.

\(fn HOST USERNAME PACKAGE)" t nil)

(autoload 'ghub-clear-caches "ghub" "\
Clear all caches that might negatively affect Ghub.

If a library that is used by Ghub caches incorrect information
such as a mistyped password, then that can prevent Ghub from
asking the user for the correct information again.

Set `url-http-real-basic-auth-storage' to nil
and call `auth-source-forget+'." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ghub" '("auth-source-netrc-parse-next-interesting@save-match-data" "ghub-")))

;;;***

;;;### (autoloads nil "git-commit" "git-commit.el" (0 0 0 0))
;;; Generated autoloads from git-commit.el

(defvar global-git-commit-mode t "\
Non-nil if Global Git-Commit mode is enabled.
See the `global-git-commit-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-git-commit-mode'.")

(custom-autoload 'global-git-commit-mode "git-commit" nil)

(autoload 'global-git-commit-mode "git-commit" "\
Edit Git commit messages.
This global mode arranges for `git-commit-setup' to be called
when a Git commit message file is opened.  That usually happens
when Git uses the Emacsclient as $GIT_EDITOR to have the user
provide such a commit message.

If called interactively, enable Global Git-Commit mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(defconst git-commit-filename-regexp "/\\(\\(\\(COMMIT\\|NOTES\\|PULLREQ\\|TAG\\)_EDIT\\|MERGE_\\|\\)MSG\\|\\(BRANCH\\|EDIT\\)_DESCRIPTION\\)\\'")

(autoload 'git-commit-setup-check-buffer "git-commit" nil nil nil)

(autoload 'git-commit-setup "git-commit" nil nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "git-commit" '("git-commit-")))

;;;***

;;;### (autoloads nil "git-rebase" "git-rebase.el" (0 0 0 0))
;;; Generated autoloads from git-rebase.el

(autoload 'git-rebase-mode "git-rebase" "\
Major mode for editing of a Git rebase file.

Rebase files are generated when you run 'git rebase -i' or run
`magit-interactive-rebase'.  They describe how Git should perform
the rebase.  See the documentation for git-rebase (e.g., by
running 'man git-rebase' at the command line) for details.

\(fn)" t nil)

(defconst git-rebase-filename-regexp "/git-rebase-todo\\'")

(add-to-list 'auto-mode-alist (cons git-rebase-filename-regexp 'git-rebase-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "git-rebase" '("git-rebase-")))

;;;***

;;;### (autoloads nil "go-guru" "go-guru.el" (0 0 0 0))
;;; Generated autoloads from go-guru.el

(autoload 'go-guru-set-scope "go-guru" "\
Set the scope for the Go guru, prompting the user to edit the previous scope.

The scope restricts analysis to the specified packages.
Its value is a comma-separated list of patterns of these forms:
	golang.org/x/tools/cmd/guru     # a single package
	golang.org/x/tools/...          # all packages beneath dir
	...                             # the entire workspace.

A pattern preceded by '-' is negative, so the scope
	encoding/...,-encoding/xml
matches all encoding packages except encoding/xml.

\(fn)" t nil)

(autoload 'go-guru-callees "go-guru" "\
Show possible callees of the function call at the current point.

\(fn)" t nil)

(autoload 'go-guru-callers "go-guru" "\
Show the set of callers of the function containing the current point.

\(fn)" t nil)

(autoload 'go-guru-callstack "go-guru" "\
Show an arbitrary path from a root of the call graph to the
function containing the current point.

\(fn)" t nil)

(autoload 'go-guru-definition "go-guru" "\
Jump to the definition of the selected identifier.

\(fn)" t nil)

(autoload 'go-guru-describe "go-guru" "\
Describe the selected syntax, its kind, type and methods.

\(fn)" t nil)

(autoload 'go-guru-pointsto "go-guru" "\
Show what the selected expression points to.

\(fn)" t nil)

(autoload 'go-guru-implements "go-guru" "\
Describe the 'implements' relation for types in the package
containing the current point.

\(fn)" t nil)

(autoload 'go-guru-freevars "go-guru" "\
Enumerate the free variables of the current selection.

\(fn)" t nil)

(autoload 'go-guru-peers "go-guru" "\
Enumerate the set of possible corresponding sends/receives for
this channel receive/send operation.

\(fn)" t nil)

(autoload 'go-guru-referrers "go-guru" "\
Enumerate all references to the object denoted by the selected
identifier.

\(fn)" t nil)

(autoload 'go-guru-whicherrs "go-guru" "\
Show globals, constants and types to which the selected
expression (of type 'error') may refer.

\(fn)" t nil)

(autoload 'go-guru-unhighlight-identifiers "go-guru" "\
Remove highlights from previously highlighted identifier.

\(fn)" nil nil)

(autoload 'go-guru-hl-identifier "go-guru" "\
Highlight all instances of the identifier under point. Removes
highlights from previously highlighted identifier.

\(fn)" t nil)

(autoload 'go-guru-hl-identifier-mode "go-guru" "\
Highlight instances of the identifier at point after a short
timeout.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "go-guru" '("go-guru-")))

;;;***

;;;### (autoloads nil "go-mode" "go-mode.el" (0 0 0 0))
;;; Generated autoloads from go-mode.el

(autoload 'go-mode "go-mode" "\
Major mode for editing Go source text.

This mode provides (not just) basic editing capabilities for
working with Go code. It offers almost complete syntax
highlighting, indentation that is almost identical to gofmt and
proper parsing of the buffer content to allow features such as
navigation by function, manipulation of comments or detection of
strings.

In addition to these core features, it offers various features to
help with writing Go code. You can directly run buffer content
through gofmt, read godoc documentation from within Emacs, modify
and clean up the list of package imports or interact with the
Playground (uploading and downloading pastes).

The following extra functions are defined:

- `gofmt'
- `godoc' and `godoc-at-point'
- `go-import-add'
- `go-remove-unused-imports'
- `go-goto-arguments'
- `go-goto-docstring'
- `go-goto-function'
- `go-goto-function-name'
- `go-goto-imports'
- `go-goto-return-values'
- `go-goto-method-receiver'
- `go-play-buffer' and `go-play-region'
- `go-download-play'
- `godef-describe' and `godef-jump'
- `go-coverage'
- `go-set-project'
- `go-reset-gopath'

If you want to automatically run `gofmt' before saving a file,
add the following hook to your emacs configuration:

\(add-hook 'before-save-hook #'gofmt-before-save)

If you want to use `godef-jump' instead of etags (or similar),
consider binding godef-jump to `M-.', which is the default key
for `find-tag':

\(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd \"M-.\") #'godef-jump)))

Please note that godef is an external dependency. You can install
it with

go get github.com/rogpeppe/godef


If you're looking for even more integration with Go, namely
on-the-fly syntax checking, auto-completion and snippets, it is
recommended that you look at flycheck
\(see URL `https://github.com/flycheck/flycheck') or flymake in combination
with goflymake (see URL `https://github.com/dougm/goflymake'), gocode
\(see URL `https://github.com/nsf/gocode'), go-eldoc
\(see URL `github.com/syohex/emacs-go-eldoc') and yasnippet-go
\(see URL `https://github.com/dominikh/yasnippet-go')

\(fn)" t nil)

(add-to-list 'auto-mode-alist (cons "\\.go\\'" 'go-mode))

(autoload 'gofmt-before-save "go-mode" "\
Add this to .emacs to run gofmt on the current buffer when saving:
\(add-hook 'before-save-hook 'gofmt-before-save).

Note that this will cause ‘go-mode’ to get loaded the first time
you save any file, kind of defeating the point of autoloading.

\(fn)" t nil)

(autoload 'godoc "go-mode" "\
Show Go documentation for QUERY, much like \\<go-mode-map>\\[man].

\(fn QUERY)" t nil)

(autoload 'go-download-play "go-mode" "\
Download a paste from the playground and insert it in a Go buffer.
Tries to look for a URL at point.

\(fn URL)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "go-mode" '("gofmt" "god" "go-")))

;;;***

;;;### (autoloads nil "go-rename" "go-rename.el" (0 0 0 0))
;;; Generated autoloads from go-rename.el

(autoload 'go-rename "go-rename" "\
Rename the entity denoted by the identifier at point, using
the `gorename' tool. With FORCE, call `gorename' with the
`-force' flag.

\(fn NEW-NAME &optional FORCE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "go-rename" '("go-")))

;;;***

;;;### (autoloads nil "hcl-mode" "hcl-mode.el" (0 0 0 0))
;;; Generated autoloads from hcl-mode.el

(autoload 'hcl-mode "hcl-mode" "\
Major mode for editing hcl configuration file

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.hcl\\'" . hcl-mode))

(add-to-list 'auto-mode-alist '("\\.nomad\\'" . hcl-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hcl-mode" '("hcl-")))

;;;***

;;;### (autoloads nil "htmlize" "htmlize.el" (0 0 0 0))
;;; Generated autoloads from htmlize.el

(autoload 'htmlize-buffer "htmlize" "\
Convert BUFFER to HTML, preserving colors and decorations.

The generated HTML is available in a new buffer, which is returned.
When invoked interactively, the new buffer is selected in the current
window.  The title of the generated document will be set to the buffer's
file name or, if that's not available, to the buffer's name.

Note that htmlize doesn't fontify your buffers, it only uses the
decorations that are already present.  If you don't set up font-lock or
something else to fontify your buffers, the resulting HTML will be
plain.  Likewise, if you don't like the choice of colors, fix the mode
that created them, or simply alter the faces it uses.

\(fn &optional BUFFER)" t nil)

(autoload 'htmlize-region "htmlize" "\
Convert the region to HTML, preserving colors and decorations.
See `htmlize-buffer' for details.

\(fn BEG END)" t nil)

(autoload 'htmlize-file "htmlize" "\
Load FILE, fontify it, convert it to HTML, and save the result.

Contents of FILE are inserted into a temporary buffer, whose major mode
is set with `normal-mode' as appropriate for the file type.  The buffer
is subsequently fontified with `font-lock' and converted to HTML.  Note
that, unlike `htmlize-buffer', this function explicitly turns on
font-lock.  If a form of highlighting other than font-lock is desired,
please use `htmlize-buffer' directly on buffers so highlighted.

Buffers currently visiting FILE are unaffected by this function.  The
function does not change current buffer or move the point.

If TARGET is specified and names a directory, the resulting file will be
saved there instead of to FILE's directory.  If TARGET is specified and
does not name a directory, it will be used as output file name.

\(fn FILE &optional TARGET)" t nil)

(autoload 'htmlize-many-files "htmlize" "\
Convert FILES to HTML and save the corresponding HTML versions.

FILES should be a list of file names to convert.  This function calls
`htmlize-file' on each file; see that function for details.  When
invoked interactively, you are prompted for a list of files to convert,
terminated with RET.

If TARGET-DIRECTORY is specified, the HTML files will be saved to that
directory.  Normally, each HTML file is saved to the directory of the
corresponding source file.

\(fn FILES &optional TARGET-DIRECTORY)" t nil)

(autoload 'htmlize-many-files-dired "htmlize" "\
HTMLize dired-marked files.

\(fn ARG &optional TARGET-DIRECTORY)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "htmlize" '("htmlize-")))

;;;***

;;;### (autoloads nil "ido-completing-read+" "ido-completing-read+.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ido-completing-read+.el

(defvar ido-cr+-minibuffer-depth -1 "\
Minibuffer depth of the most recent ido-cr+ activation.

If this equals the current minibuffer depth, then the minibuffer
is currently being used by ido-cr+, and ido-cr+ feature will be
active. Otherwise, something else is using the minibuffer and
ido-cr+ features will be deactivated to avoid interfering with
the other command.

This is set to -1 by default, since `(minibuffer-depth)' should
never return this value.")

(defvar ido-cr+-replace-completely nil "\
If non-nil, replace `ido-completeing-read' completely with ido-cr+.

Enabling this may interfere with or cause errors in other
packages that use `ido-completing-read'. If you discover any such
incompatibilities, please file a bug report at
https://github.com/DarwinAwardWinner/ido-completing-read-plus/issues")

(custom-autoload 'ido-cr+-replace-completely "ido-completing-read+" t)

(defsubst ido-cr+-active nil "\
Returns non-nil if ido-cr+ is currently using the minibuffer." (>= ido-cr+-minibuffer-depth (minibuffer-depth)))

(autoload 'ido-completing-read+ "ido-completing-read+" "\
ido-based method for reading from the minibuffer with completion.

See `completing-read' for the meaning of the arguments.

This function is a wrapper for `ido-completing-read' designed to
be used as the value of `completing-read-function'. Importantly,
it detects edge cases that ido cannot handle and uses normal
completion for them.

\(fn PROMPT COLLECTION &optional PREDICATE REQUIRE-MATCH INITIAL-INPUT HIST DEF INHERIT-INPUT-METHOD)" nil nil)

(autoload 'ido-completing-read@ido-cr+-replace "ido-completing-read+" "\
This advice allows ido-cr+ to completely replace `ido-completing-read'.

See the varaible `ido-cr+-replace-completely' for more information.

\(fn ORIG-FUN &rest ARGS)" nil nil)

(advice-add 'ido-completing-read :around #'ido-completing-read@ido-cr+-replace)

(autoload 'call-interactively@ido-cr+-record-current-command "ido-completing-read+" "\
Let-bind the command being interactively called.

See `ido-cr+-current-command' for more information.

\(fn ORIG-FUN COMMAND &rest ARGS)" nil nil)

(advice-add 'call-interactively :around #'call-interactively@ido-cr+-record-current-command)

(defvar ido-ubiquitous-mode nil "\
Non-nil if Ido-Ubiquitous mode is enabled.
See the `ido-ubiquitous-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ido-ubiquitous-mode'.")

(custom-autoload 'ido-ubiquitous-mode "ido-completing-read+" nil)

(autoload 'ido-ubiquitous-mode "ido-completing-read+" "\
Use ido completion instead of standard completion almost everywhere.

If called interactively, enable Ido-Ubiquitous mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

If this mode causes problems for a function, you can customize
when ido completion is or is not used by customizing
`ido-cr+-function-blacklist'.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ido-completing-read+" '("define-ido-internal-var" "ido-" "minibuf-eldef-update-minibuffer@ido-cr+-compat")))

;;;***

;;;### (autoloads nil "lsp-mode" "lsp-mode.el" (0 0 0 0))
;;; Generated autoloads from lsp-mode.el

(autoload 'lsp "lsp-mode" "\
Entry point for the server startup.
When IGNORE-MULTI-FOLDER is t the lsp mode will start new
language server even if there is language server which can handle
current language. When IGNORE-MULTI-FOLDER is nil current file
will be openned in multi folder language server if there is
such.

\(fn &optional IGNORE-MULTI-FOLDER)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode" '("lsp-" "make-lsp-client" "when-lsp-workspace" "with-lsp-workspace")))

;;;***

;;;### (autoloads nil "lsp-ui" "lsp-ui.el" (0 0 0 0))
;;; Generated autoloads from lsp-ui.el

(autoload 'lsp-ui-mode "lsp-ui" "\
Toggle language server UI mode on or off.
‘lsp-ui-mode’ is a minor mode that contains a series of useful UI
integrations for ‘lsp-mode’.  With a prefix argument ARG, enable
language server UI mode if ARG is positive, and disable it
otherwise.  If called from Lisp, enable the mode if ARG is
omitted or nil, and toggle it if ARG is ‘toggle’.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-ui" '("lsp-ui-")))

;;;***

;;;### (autoloads nil "lua-mode" "lua-mode.el" (0 0 0 0))
;;; Generated autoloads from lua-mode.el

(autoload 'lua-mode "lua-mode" "\
Major mode for editing Lua code.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.lua\\'" . lua-mode))

(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(defalias 'run-lua #'lua-start-process)

(autoload 'lua-start-process "lua-mode" "\
Start a Lua process named NAME, running PROGRAM.
PROGRAM defaults to NAME, which defaults to `lua-default-application'.
When called interactively, switch to the process buffer.

\(fn &optional NAME PROGRAM STARTFILE &rest SWITCHES)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lua-mode" '("lua-")))

;;;***

;;;### (autoloads nil "magit" "magit.el" (0 0 0 0))
;;; Generated autoloads from magit.el
 (autoload 'magit-dispatch-popup "magit" nil t)
 (autoload 'magit-run-popup "magit" nil t)

(autoload 'magit-git-command "magit" "\
Execute COMMAND asynchronously; display output.

Interactively, prompt for COMMAND in the minibuffer. \"git \" is
used as initial input, but can be deleted to run another command.

With a prefix argument COMMAND is run in the top-level directory
of the current working tree, otherwise in `default-directory'.

\(fn COMMAND)" t nil)

(autoload 'magit-git-command-topdir "magit" "\
Execute COMMAND asynchronously; display output.

Interactively, prompt for COMMAND in the minibuffer. \"git \" is
used as initial input, but can be deleted to run another command.

COMMAND is run in the top-level directory of the current
working tree.

\(fn COMMAND)" t nil)

(autoload 'magit-shell-command "magit" "\
Execute COMMAND asynchronously; display output.

Interactively, prompt for COMMAND in the minibuffer.  With a
prefix argument COMMAND is run in the top-level directory of
the current working tree, otherwise in `default-directory'.

\(fn COMMAND)" t nil)

(autoload 'magit-shell-command-topdir "magit" "\
Execute COMMAND asynchronously; display output.

Interactively, prompt for COMMAND in the minibuffer.  COMMAND
is run in the top-level directory of the current working tree.

\(fn COMMAND)" t nil)

(autoload 'magit-version "magit" "\
Return the version of Magit currently in use.
If optional argument PRINT-DEST is non-nil, output
stream (interactively, the echo area, or the current buffer with
a prefix argument), also print the used versions of Magit, Git,
and Emacs to it.

\(fn &optional PRINT-DEST)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit" '("magit-")))

;;;***

;;;### (autoloads nil "magit-apply" "magit-apply.el" (0 0 0 0))
;;; Generated autoloads from magit-apply.el

(autoload 'magit-stage-file "magit-apply" "\
Stage all changes to FILE.
With a prefix argument or when there is no file at point ask for
the file to be staged.  Otherwise stage the file at point without
requiring confirmation.

\(fn FILE)" t nil)

(autoload 'magit-stage-modified "magit-apply" "\
Stage all changes to files modified in the worktree.
Stage all new content of tracked files and remove tracked files
that no longer exist in the working tree from the index also.
With a prefix argument also stage previously untracked (but not
ignored) files.

\(fn &optional ALL)" t nil)

(autoload 'magit-unstage-file "magit-apply" "\
Unstage all changes to FILE.
With a prefix argument or when there is no file at point ask for
the file to be unstaged.  Otherwise unstage the file at point
without requiring confirmation.

\(fn FILE)" t nil)

(autoload 'magit-unstage-all "magit-apply" "\
Remove all changes from the staging area." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-apply" '("magit-")))

;;;***

;;;### (autoloads nil "magit-autorevert" "magit-autorevert.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from magit-autorevert.el

(put 'magit-auto-revert-mode 'globalized-minor-mode t)

(defvar magit-auto-revert-mode (and (not global-auto-revert-mode) (not noninteractive)) "\
Non-nil if Magit-Auto-Revert mode is enabled.
See the `magit-auto-revert-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `magit-auto-revert-mode'.")

(custom-autoload 'magit-auto-revert-mode "magit-autorevert" nil)

(autoload 'magit-auto-revert-mode "magit-autorevert" "\
Toggle Auto-Revert mode in all buffers.
With prefix ARG, enable Magit-Auto-Revert mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Revert mode is enabled in all buffers where
`magit-turn-on-auto-revert-mode-if-desired' would do it.
See `auto-revert-mode' for more information on Auto-Revert mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-autorevert" '("auto-revert-buffer" "magit-")))

;;;***

;;;### (autoloads nil "magit-bisect" "magit-bisect.el" (0 0 0 0))
;;; Generated autoloads from magit-bisect.el
 (autoload 'magit-bisect-popup "magit-bisect" nil t)

(autoload 'magit-bisect-start "magit-bisect" "\
Start a bisect session.

Bisecting a bug means to find the commit that introduced it.
This command starts such a bisect session by asking for a know
good and a bad commit.  To move the session forward use the
other actions from the bisect popup (\\<magit-status-mode-map>\\[magit-bisect-popup]).

\(fn BAD GOOD)" t nil)

(autoload 'magit-bisect-reset "magit-bisect" "\
After bisecting, cleanup bisection state and return to original `HEAD'." t nil)

(autoload 'magit-bisect-good "magit-bisect" "\
While bisecting, mark the current commit as good.
Use this after you have asserted that the commit does not contain
the bug in question." t nil)

(autoload 'magit-bisect-bad "magit-bisect" "\
While bisecting, mark the current commit as bad.
Use this after you have asserted that the commit does contain the
bug in question." t nil)

(autoload 'magit-bisect-skip "magit-bisect" "\
While bisecting, skip the current commit.
Use this if for some reason the current commit is not a good one
to test.  This command lets Git choose a different one." t nil)

(autoload 'magit-bisect-run "magit-bisect" "\
Bisect automatically by running commands after each step.

Unlike `git bisect run' this can be used before bisecting has
begun.  In that case it behaves like `git bisect start; git
bisect run'.

\(fn CMDLINE &optional BAD GOOD)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-bisect" '("magit-")))

;;;***

;;;### (autoloads nil "magit-blame" "magit-blame.el" (0 0 0 0))
;;; Generated autoloads from magit-blame.el

(autoload 'magit-blame-echo "magit-blame" "\
For each line show the revision in which it was added.
Show the information about the chunk at point in the echo area
when moving between chunks.  Unlike other blaming commands, do
not turn on `read-only-mode'." t nil)

(autoload 'magit-blame-addition "magit-blame" "\
For each line show the revision in which it was added." t nil)

(autoload 'magit-blame-removal "magit-blame" "\
For each line show the revision in which it was removed." t nil)

(autoload 'magit-blame-reverse "magit-blame" "\
For each line show the last revision in which it still exists." t nil)
 (autoload 'magit-blame-popup "magit-blame" nil t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-blame" '("magit-")))

;;;***

;;;### (autoloads nil "magit-bookmark" "magit-bookmark.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from magit-bookmark.el

(autoload 'magit-bookmark--status-jump "magit-bookmark" "\
Handle a Magit status BOOKMARK.

\(fn BOOKMARK)" nil nil)

(autoload 'magit-bookmark--status-make-record "magit-bookmark" "\
Create a Magit status bookmark." nil nil)

(autoload 'magit-bookmark--refs-jump "magit-bookmark" "\
Handle a Magit refs BOOKMARK.

\(fn BOOKMARK)" nil nil)

(autoload 'magit-bookmark--refs-make-record "magit-bookmark" "\
Create a Magit refs bookmark." nil nil)

(autoload 'magit-bookmark--log-jump "magit-bookmark" "\
Handle a Magit log BOOKMARK.

\(fn BOOKMARK)" nil nil)

(autoload 'magit-bookmark--log-make-record "magit-bookmark" "\
Create a Magit log bookmark." nil nil)

(autoload 'magit-bookmark--reflog-jump "magit-bookmark" "\
Handle a Magit reflog BOOKMARK.

\(fn BOOKMARK)" nil nil)

(autoload 'magit-bookmark--reflog-make-record "magit-bookmark" "\
Create a Magit reflog bookmark." nil nil)

(autoload 'magit-bookmark--stashes-jump "magit-bookmark" "\
Handle a Magit stash list BOOKMARK.

\(fn BOOKMARK)" nil nil)

(autoload 'magit-bookmark--stashes-make-record "magit-bookmark" "\
Create a Magit stash list bookmark." nil nil)

(autoload 'magit-bookmark--cherry-jump "magit-bookmark" "\
Handle a Magit cherry BOOKMARK.

\(fn BOOKMARK)" nil nil)

(autoload 'magit-bookmark--cherry-make-record "magit-bookmark" "\
Create a Magit cherry bookmark." nil nil)

(autoload 'magit-bookmark--diff-jump "magit-bookmark" "\
Handle a Magit diff BOOKMARK.

\(fn BOOKMARK)" nil nil)

(autoload 'magit-bookmark--diff-make-record "magit-bookmark" "\
Create a Magit diff bookmark." nil nil)

(autoload 'magit-bookmark--revision-jump "magit-bookmark" "\
Handle a Magit revision BOOKMARK.

\(fn BOOKMARK)" nil nil)

(autoload 'magit-bookmark--revision-make-record "magit-bookmark" "\
Create a Magit revision bookmark." nil nil)

(autoload 'magit-bookmark--stash-jump "magit-bookmark" "\
Handle a Magit stash BOOKMARK.

\(fn BOOKMARK)" nil nil)

(autoload 'magit-bookmark--stash-make-record "magit-bookmark" "\
Create a Magit stash bookmark." nil nil)

(autoload 'magit-bookmark--submodules-jump "magit-bookmark" "\
Handle a Magit submodule list BOOKMARK.

\(fn BOOKMARK)" nil nil)

(autoload 'magit-bookmark--submodules-make-record "magit-bookmark" "\
Create a Magit submodule list bookmark." nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-bookmark" '("magit-bookmark--")))

;;;***

;;;### (autoloads nil "magit-branch" "magit-branch.el" (0 0 0 0))
;;; Generated autoloads from magit-branch.el
 (autoload 'magit-branch-popup "magit" nil t)

(autoload 'magit-checkout "magit-branch" "\
Checkout REVISION, updating the index and the working tree.
If REVISION is a local branch, then that becomes the current
branch.  If it is something else, then `HEAD' becomes detached.
Checkout fails if the working tree or the staging area contain
changes.

\(git checkout REVISION).

\(fn REVISION)" t nil)

(autoload 'magit-branch-create "magit-branch" "\
Create BRANCH at branch or revision START-POINT.

\(git branch [ARGS] BRANCH START-POINT).

\(fn BRANCH START-POINT &optional ARGS)" t nil)

(autoload 'magit-branch-and-checkout "magit-branch" "\
Create and checkout BRANCH at branch or revision START-POINT.

\(git checkout [ARGS] -b BRANCH START-POINT).

\(fn BRANCH START-POINT &optional ARGS)" t nil)

(autoload 'magit-branch-or-checkout "magit-branch" "\
Hybrid between `magit-checkout' and `magit-branch-and-checkout'.

Ask the user for an existing branch or revision.  If the user
input actually can be resolved as a branch or revision, then
check that out, just like `magit-checkout' would.

Otherwise create and checkout a new branch using the input as
its name.  Before doing so read the starting-point for the new
branch.  This is similar to what `magit-branch-and-checkout'
does.

\(fn ARG &optional START-POINT)" t nil)

(autoload 'magit-branch-checkout "magit-branch" "\
Checkout an existing or new local branch.

Read a branch name from the user offering all local branches and
a subset of remote branches as candidates.  Omit remote branches
for which a local branch by the same name exists from the list
of candidates.  The user can also enter a completely new branch
name.

- If the user selects an existing local branch, then check that
  out.

- If the user selects a remote branch, then create and checkout
  a new local branch with the same name.  Configure the selected
  remote branch as push target.

- If the user enters a new branch name, then create and check
  that out, after also reading the starting-point from the user.

In the latter two cases the upstream is also set.  Whether it is
set to the chosen START-POINT or something else depends on the
value of `magit-branch-adjust-remote-upstream-alist', just like
when using `magit-branch-and-checkout'.

\(fn BRANCH &optional START-POINT)" t nil)

(autoload 'magit-branch-orphan "magit-branch" "\
Create and checkout an orphan BRANCH with contents from revision START-POINT.

\(git checkout --orphan [ARGS] BRANCH START-POINT).

\(fn BRANCH START-POINT &optional ARGS)" t nil)

(autoload 'magit-branch-pull-request "magit-branch" "\
Create and configure a new branch from a pull-request.
Please see the manual for more information.

\(fn PR)" t nil)

(autoload 'magit-branch-spinoff "magit-branch" "\
Create new branch from the unpushed commits.

Create and checkout a new branch starting at and tracking the
current branch.  That branch in turn is reset to the last commit
it shares with its upstream.  If the current branch has no
upstream or no unpushed commits, then the new branch is created
anyway and the previously current branch is not touched.

This is useful to create a feature branch after work has already
began on the old branch (likely but not necessarily \"master\").

If the current branch is a member of the value of option
`magit-branch-prefer-remote-upstream' (which see), then the
current branch will be used as the starting point as usual, but
the upstream of the starting-point may be used as the upstream
of the new branch, instead of the starting-point itself.

If optional FROM is non-nil, then the source branch is reset
to `FROM~', instead of to the last commit it shares with its
upstream.  Interactively, FROM is only ever non-nil, if the
region selects some commits, and among those commits, FROM is
the commit that is the fewest commits ahead of the source
branch.

The commit at the other end of the selection actually does not
matter, all commits between FROM and `HEAD' are moved to the new
branch.  If FROM is not reachable from `HEAD' or is reachable
from the source branch's upstream, then an error is raised.

\(fn BRANCH &optional FROM &rest ARGS)" t nil)

(autoload 'magit-branch-reset "magit-branch" "\
Reset a branch to the tip of another branch or any other commit.

When the branch being reset is the current branch, then do a
hard reset.  If there are any uncommitted changes, then the user
has to confirm the reset because those changes would be lost.

This is useful when you have started work on a feature branch but
realize it's all crap and want to start over.

When resetting to another branch and a prefix argument is used,
then also set the target branch as the upstream of the branch
that is being reset.

\(fn BRANCH TO &optional ARGS SET-UPSTREAM)" t nil)

(autoload 'magit-branch-delete "magit-branch" "\
Delete one or multiple branches.
If the region marks multiple branches, then offer to delete
those, otherwise prompt for a single branch to be deleted,
defaulting to the branch at point.

\(fn BRANCHES &optional FORCE)" t nil)

(autoload 'magit-branch-rename "magit-branch" "\
Rename the branch named OLD to NEW.

With a prefix argument FORCE, rename even if a branch named NEW
already exists.

If `branch.OLD.pushRemote' is set, then unset it.  Depending on
the value of `magit-branch-rename-push-target' (which see) maybe
set `branch.NEW.pushRemote' and maybe rename the push-target on
the remote.

\(fn OLD NEW &optional FORCE)" t nil)

(autoload 'magit-branch-shelve "magit-branch" "\
Shelve a BRANCH.
Rename \"refs/heads/BRANCH\" to \"refs/shelved/BRANCH\",
and also rename the respective reflog file.

\(fn BRANCH)" t nil)

(autoload 'magit-branch-unshelve "magit-branch" "\
Unshelve a BRANCH
Rename \"refs/shelved/BRANCH\" to \"refs/heads/BRANCH\",
and also rename the respective reflog file.

\(fn BRANCH)" t nil)

(autoload 'magit-branch-config-popup "magit-branch" "\
Popup console for setting branch variables.

\(fn BRANCH)" t nil)

(autoload 'magit-edit-branch*description "magit-branch" "\
Edit the description of the current branch.
With a prefix argument edit the description of another branch.

The description for the branch named NAME is stored in the Git
variable `branch.<name>.description'.

\(fn BRANCH)" t nil)

(autoload 'magit-set-branch*merge/remote "magit-branch" "\
Set or unset the upstream of the current branch.
With a prefix argument do so for another branch.

When the branch in question already has an upstream then simply
unsets it.  Invoke this command again to set another upstream.

Together the Git variables `branch.<name>.remote' and
`branch.<name>.merge' define the upstream branch of the local
branch named NAME.  The value of `branch.<name>.remote' is the
name of the upstream remote.  The value of `branch.<name>.merge'
is the full reference of the upstream branch, on the remote.

Non-interactively, when UPSTREAM is non-nil, then always set it
as the new upstream, regardless of whether another upstream was
already set.  When nil, then always unset.

\(fn BRANCH UPSTREAM)" t nil)

(autoload 'magit-cycle-branch*rebase "magit-branch" "\
Cycle the value of `branch.<name>.rebase' for the current branch.
With a prefix argument cycle the value for another branch.

The Git variables `branch.<name>.rebase' controls whether pulling
into the branch named NAME is done by rebasing that branch onto
the fetched branch or by merging that branch.

When `true' then pulling is done by rebasing.
When `false' then pulling is done by merging.

When that variable is undefined then the value of `pull.rebase'
is used instead.  It defaults to `false'.

\(fn BRANCH)" t nil)

(autoload 'magit-cycle-branch*pushRemote "magit-branch" "\
Cycle the value of `branch.<name>.pushRemote' for the current branch.
With a prefix argument cycle the value for another branch.

The Git variable `branch.<name>.pushRemote' specifies the remote
that the branch named NAME is usually pushed to.  The value has
to be the name of an existing remote.

If that variable is undefined, then the value of the Git variable
`remote.pushDefault' is used instead, provided that it is defined,
which by default it is not.

\(fn BRANCH)" t nil)

(autoload 'magit-cycle-pull\.rebase "magit-branch" "\
Cycle the repository-local value of `pull.rebase'.

The Git variable `pull.rebase' specifies whether pulling is done
by rebasing or by merging.  It can be overwritten using the Git
variable `branch.<name>.rebase'.

When `true' then pulling is done by rebasing.
When `false' (the default) then pulling is done by merging." t nil)

(autoload 'magit-cycle-remote\.pushDefault "magit-branch" "\
Cycle the repository-local value of `remote.pushDefault'.

The Git variable `remote.pushDefault' specifies the remote that
local branches are usually pushed to.  It can be overwritten
using the Git variable `branch.<name>.pushRemote'." t nil)

(autoload 'magit-cycle-branch*autoSetupMerge "magit-branch" "\
Cycle the repository-local value of `branch.autoSetupMerge'.

The Git variable `branch.autoSetupMerge' under what circumstances
creating a branch (named NAME) should result in the variables
`branch.<name>.merge' and `branch.<name>.remote' being set
according to the starting point used to create the branch.  If
the starting point isn't a branch, then these variables are never
set.

When `always' then the variables are set regardless of whether
the starting point is a local or a remote branch.

When `true' (the default) then the variable are set when the
starting point is a remote branch, but not when it is a local
branch.

When `false' then the variables are never set." t nil)

(autoload 'magit-cycle-branch*autoSetupRebase "magit-branch" "\
Cycle the repository-local value of `branch.autoSetupRebase'.

The Git variable `branch.autoSetupRebase' specifies whether
creating a branch (named NAME) should result in the variable
`branch.<name>.rebase' being set to `true'.

When `always' then the variable is set regardless of whether the
starting point is a local or a remote branch.

When `local' then the variable are set when the starting point
is a local branch, but not when it is a remote branch.

When `remote' then the variable are set when the starting point
is a remote branch, but not when it is a local branch.

When `never' (the default) then the variable is never set." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-branch" '("magit-")))

;;;***

;;;### (autoloads nil "magit-clone" "magit-clone.el" (0 0 0 0))
;;; Generated autoloads from magit-clone.el

(autoload 'magit-clone "magit-clone" "\
Clone the REPOSITORY to DIRECTORY.
Then show the status buffer for the new repository.

\(fn REPOSITORY DIRECTORY)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-clone" '("magit-clone-")))

;;;***

;;;### (autoloads nil "magit-collab" "magit-collab.el" (0 0 0 0))
;;; Generated autoloads from magit-collab.el

(autoload 'magit-browse-pull-request "magit-collab" "\
Visit pull-request PR using `browse-url'.

Currently this only supports Github, but that restriction will
be lifted eventually to support other Git forges.

\(fn PR)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-collab" '("magit-")))

;;;***

;;;### (autoloads nil "magit-commit" "magit-commit.el" (0 0 0 0))
;;; Generated autoloads from magit-commit.el

(autoload 'magit-commit-create "magit-commit" "\
Create a new commit on `HEAD'.
With a prefix argument, amend to the commit at `HEAD' instead.

\(git commit [--amend] ARGS)

\(fn &optional ARGS)" t nil)

(autoload 'magit-commit-amend "magit-commit" "\
Amend the last commit.

\(git commit --amend ARGS)

\(fn &optional ARGS)" t nil)

(autoload 'magit-commit-extend "magit-commit" "\
Amend the last commit, without editing the message.

With a prefix argument keep the committer date, otherwise change
it.  The option `magit-commit-extend-override-date' can be used
to inverse the meaning of the prefix argument.  
\(git commit
--amend --no-edit)

\(fn &optional ARGS OVERRIDE-DATE)" t nil)

(autoload 'magit-commit-reword "magit-commit" "\
Reword the last commit, ignoring staged changes.

With a prefix argument keep the committer date, otherwise change
it.  The option `magit-commit-reword-override-date' can be used
to inverse the meaning of the prefix argument.

Non-interactively respect the optional OVERRIDE-DATE argument
and ignore the option.

\(git commit --amend --only)

\(fn &optional ARGS OVERRIDE-DATE)" t nil)

(autoload 'magit-commit-fixup "magit-commit" "\
Create a fixup commit.

With a prefix argument the target COMMIT has to be confirmed.
Otherwise the commit at point may be used without confirmation
depending on the value of option `magit-commit-squash-confirm'.

\(fn &optional COMMIT ARGS)" t nil)

(autoload 'magit-commit-squash "magit-commit" "\
Create a squash commit, without editing the squash message.

With a prefix argument the target COMMIT has to be confirmed.
Otherwise the commit at point may be used without confirmation
depending on the value of option `magit-commit-squash-confirm'.

\(fn &optional COMMIT ARGS)" t nil)

(autoload 'magit-commit-augment "magit-commit" "\
Create a squash commit, editing the squash message.

With a prefix argument the target COMMIT has to be confirmed.
Otherwise the commit at point may be used without confirmation
depending on the value of option `magit-commit-squash-confirm'.

\(fn &optional COMMIT ARGS)" t nil)

(autoload 'magit-commit-instant-fixup "magit-commit" "\
Create a fixup commit targeting COMMIT and instantly rebase.

\(fn &optional COMMIT ARGS)" t nil)

(autoload 'magit-commit-instant-squash "magit-commit" "\
Create a squash commit targeting COMMIT and instantly rebase.

\(fn &optional COMMIT ARGS)" t nil)

(autoload 'magit-commit-reshelve "magit-commit" "\
Change the committer date and possibly the author date of `HEAD'.

If you are the author of `HEAD', then both dates are changed,
otherwise only the committer date.  The current time is used
as the initial minibuffer input and the original author (if
that is you) or committer date is available as the previous
history element.

\(fn DATE)" t nil)
 (autoload 'magit-commit-absorb-popup "magit-commit" nil t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-commit" '("magit-")))

;;;***

;;;### (autoloads nil "magit-diff" "magit-diff.el" (0 0 0 0))
;;; Generated autoloads from magit-diff.el

(autoload 'magit-diff-popup "magit-diff" "\
Popup console for diff commands.

\(fn ARG)" t nil)

(autoload 'magit-diff-buffer-file-popup "magit-diff" "\
Popup console for diff commands.

This is a variant of `magit-diff-popup' which shows the same popup
but which limits the diff to the file being visited in the current
buffer." t nil)

(autoload 'magit-diff-dwim "magit-diff" "\
Show changes for the thing at point.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-diff-range "magit-diff" "\
Show differences between two commits.

REV-OR-RANGE should be a range or a single revision.  If it is a
revision, then show changes in the working tree relative to that
revision.  If it is a range, but one side is omitted, then show
changes relative to `HEAD'.

If the region is active, use the revisions on the first and last
line of the region as the two sides of the range.  With a prefix
argument, instead of diffing the revisions, choose a revision to
view changes along, starting at the common ancestor of both
revisions (i.e., use a \"...\" range).

\(fn REV-OR-RANGE &optional ARGS FILES)" t nil)

(autoload 'magit-diff-working-tree "magit-diff" "\
Show changes between the current working tree and the `HEAD' commit.
With a prefix argument show changes between the working tree and
a commit read from the minibuffer.

\(fn &optional REV ARGS FILES)" t nil)

(autoload 'magit-diff-staged "magit-diff" "\
Show changes between the index and the `HEAD' commit.
With a prefix argument show changes between the index and
a commit read from the minibuffer.

\(fn &optional REV ARGS FILES)" t nil)

(autoload 'magit-diff-unstaged "magit-diff" "\
Show changes between the working tree and the index.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-diff-unmerged "magit-diff" "\
Show changes that are being merged.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-diff-while-committing "magit-diff" "\
While committing, show the changes that are about to be committed.
While amending, invoking the command again toggles between
showing just the new changes or all the changes that will
be committed.

\(fn &optional ARGS)" t nil)

(autoload 'magit-diff-buffer-file "magit-diff" "\
Show diff for the blob or file visited in the current buffer." t nil)

(autoload 'magit-diff-paths "magit-diff" "\
Show changes between any two files on disk.

\(fn A B)" t nil)

(autoload 'magit-show-commit "magit-diff" "\
Visit the revision at point in another buffer.
If there is no revision at point or with a prefix argument prompt
for a revision.

\(fn REV &optional ARGS FILES MODULE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-diff" '("magit-")))

;;;***

;;;### (autoloads nil "magit-ediff" "magit-ediff.el" (0 0 0 0))
;;; Generated autoloads from magit-ediff.el
 (autoload 'magit-ediff-popup "magit-ediff" nil t)

(autoload 'magit-ediff-resolve "magit-ediff" "\
Resolve outstanding conflicts in FILE using Ediff.
FILE has to be relative to the top directory of the repository.

In the rare event that you want to manually resolve all
conflicts, including those already resolved by Git, use
`ediff-merge-revisions-with-ancestor'.

\(fn FILE)" t nil)

(autoload 'magit-ediff-stage "magit-ediff" "\
Stage and unstage changes to FILE using Ediff.
FILE has to be relative to the top directory of the repository.

\(fn FILE)" t nil)

(autoload 'magit-ediff-compare "magit-ediff" "\
Compare REVA:FILEA with REVB:FILEB using Ediff.

FILEA and FILEB have to be relative to the top directory of the
repository.  If REVA or REVB is nil, then this stands for the
working tree state.

If the region is active, use the revisions on the first and last
line of the region.  With a prefix argument, instead of diffing
the revisions, choose a revision to view changes along, starting
at the common ancestor of both revisions (i.e., use a \"...\"
range).

\(fn REVA REVB FILEA FILEB)" t nil)

(autoload 'magit-ediff-dwim "magit-ediff" "\
Compare, stage, or resolve using Ediff.
This command tries to guess what file, and what commit or range
the user wants to compare, stage, or resolve using Ediff.  It
might only be able to guess either the file, or range or commit,
in which case the user is asked about the other.  It might not
always guess right, in which case the appropriate `magit-ediff-*'
command has to be used explicitly.  If it cannot read the user's
mind at all, then it asks the user for a command to run." t nil)

(autoload 'magit-ediff-show-staged "magit-ediff" "\
Show staged changes using Ediff.

This only allows looking at the changes; to stage, unstage,
and discard changes using Ediff, use `magit-ediff-stage'.

FILE must be relative to the top directory of the repository.

\(fn FILE)" t nil)

(autoload 'magit-ediff-show-unstaged "magit-ediff" "\
Show unstaged changes using Ediff.

This only allows looking at the changes; to stage, unstage,
and discard changes using Ediff, use `magit-ediff-stage'.

FILE must be relative to the top directory of the repository.

\(fn FILE)" t nil)

(autoload 'magit-ediff-show-working-tree "magit-ediff" "\
Show changes between `HEAD' and working tree using Ediff.
FILE must be relative to the top directory of the repository.

\(fn FILE)" t nil)

(autoload 'magit-ediff-show-commit "magit-ediff" "\
Show changes introduced by COMMIT using Ediff.

\(fn COMMIT)" t nil)

(autoload 'magit-ediff-show-stash "magit-ediff" "\
Show changes introduced by STASH using Ediff.
`magit-ediff-show-stash-with-index' controls whether a
three-buffer Ediff is used in order to distinguish changes in the
stash that were staged.

\(fn STASH)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-ediff" '("magit-ediff-")))

;;;***

;;;### (autoloads nil "magit-extras" "magit-extras.el" (0 0 0 0))
;;; Generated autoloads from magit-extras.el

(autoload 'magit-run-git-gui "magit-extras" "\
Run `git gui' for the current git repository." t nil)

(autoload 'magit-run-git-gui-blame "magit-extras" "\
Run `git gui blame' on the given FILENAME and COMMIT.
Interactively run it for the current file and the `HEAD', with a
prefix or when the current file cannot be determined let the user
choose.  When the current buffer is visiting FILENAME instruct
blame to center around the line point is on.

\(fn COMMIT FILENAME &optional LINENUM)" t nil)

(autoload 'magit-run-gitk "magit-extras" "\
Run `gitk' in the current repository." t nil)

(autoload 'magit-run-gitk-branches "magit-extras" "\
Run `gitk --branches' in the current repository." t nil)

(autoload 'magit-run-gitk-all "magit-extras" "\
Run `gitk --all' in the current repository." t nil)

(autoload 'ido-enter-magit-status "magit-extras" "\
Drop into `magit-status' from file switching.

This command does not work in Emacs 26.  It does work in Emacs 25
and Emacs 27.  See https://github.com/magit/magit/issues/3634 and
https://debbugs.gnu.org/cgi/bugreport.cgi?bug=31707.

To make this command available use something like:

  (add-hook \\='ido-setup-hook
            (lambda ()
              (define-key ido-completion-map
                (kbd \"C-x g\") \\='ido-enter-magit-status)))

Starting with Emacs 25.1 the Ido keymaps are defined just once
instead of every time Ido is invoked, so now you can modify it
like pretty much every other keymap:

  (define-key ido-common-completion-map
    (kbd \"C-x g\") \\='ido-enter-magit-status)" t nil)

(autoload 'magit-dired-jump "magit-extras" "\
Visit file at point using Dired.
With a prefix argument, visit in another window.  If there
is no file at point, then instead visit `default-directory'.

\(fn &optional OTHER-WINDOW)" t nil)

(autoload 'magit-dired-log "magit-extras" "\
Show log for all marked files, or the current file.

\(fn &optional FOLLOW)" t nil)

(autoload 'magit-do-async-shell-command "magit-extras" "\
Open FILE with `dired-do-async-shell-command'.
Interactively, open the file at point.

\(fn FILE)" t nil)

(autoload 'magit-previous-line "magit-extras" "\
Like `previous-line' but with Magit-specific shift-selection.

Magit's selection mechanism is based on the region but selects an
area that is larger than the region.  This causes `previous-line'
when invoked while holding the shift key to move up one line and
thereby select two lines.  When invoked inside a hunk body this
command does not move point on the first invocation and thereby
it only selects a single line.  Which inconsistency you prefer
is a matter of preference.

\(fn &optional ARG TRY-VSCROLL)" t nil)

(function-put 'magit-previous-line 'interactive-only '"use `forward-line' with negative argument instead.")

(autoload 'magit-next-line "magit-extras" "\
Like `next-line' but with Magit-specific shift-selection.

Magit's selection mechanism is based on the region but selects
an area that is larger than the region.  This causes `next-line'
when invoked while holding the shift key to move down one line
and thereby select two lines.  When invoked inside a hunk body
this command does not move point on the first invocation and
thereby it only selects a single line.  Which inconsistency you
prefer is a matter of preference.

\(fn &optional ARG TRY-VSCROLL)" t nil)

(function-put 'magit-next-line 'interactive-only 'forward-line)

(autoload 'magit-clean "magit-extras" "\
Remove untracked files from the working tree.
With a prefix argument also remove ignored files,
with two prefix arguments remove ignored files only.

\(git clean -f -d [-x|-X])

\(fn &optional ARG)" t nil)

(autoload 'magit-add-change-log-entry "magit-extras" "\
Find change log file and add date entry and item for current change.
This differs from `add-change-log-entry' (which see) in that
it acts on the current hunk in a Magit buffer instead of on
a position in a file-visiting buffer.

\(fn &optional WHOAMI FILE-NAME OTHER-WINDOW)" t nil)

(autoload 'magit-add-change-log-entry-other-window "magit-extras" "\
Find change log file in other window and add entry and item.
This differs from `add-change-log-entry-other-window' (which see)
in that it acts on the current hunk in a Magit buffer instead of
on a position in a file-visiting buffer.

\(fn &optional WHOAMI FILE-NAME)" t nil)

(autoload 'magit-edit-line-commit "magit-extras" "\
Edit the commit that added the current line.

With a prefix argument edit the commit that removes the line,
if any.  The commit is determined using `git blame' and made
editable using `git rebase --interactive' if it is reachable
from `HEAD', or by checking out the commit (or a branch that
points at it) otherwise.

\(fn &optional TYPE)" t nil)

(autoload 'magit-reshelve-since "magit-extras" "\
Change the author and committer dates of the commits since REV.

Ask the user for the first reachable commit whose dates should
be changed.  The read the new date for that commit.  The initial
minibuffer input and the previous history element offer good
values.  The next commit will be created one minute later and so
on.

This command is only intended for interactive use and should only
be used on highly rearranged and unpublished history.

\(fn REV)" t nil)

(autoload 'magit-pop-revision-stack "magit-extras" "\
Insert a representation of a revision into the current buffer.

Pop a revision from the `magit-revision-stack' and insert it into
the current buffer according to `magit-pop-revision-stack-format'.
Revisions can be put on the stack using `magit-copy-section-value'
and `magit-copy-buffer-revision'.

If the stack is empty or with a prefix argument, instead read a
revision in the minibuffer.  By using the minibuffer history this
allows selecting an item which was popped earlier or to insert an
arbitrary reference or revision without first pushing it onto the
stack.

When reading the revision from the minibuffer, then it might not
be possible to guess the correct repository.  When this command
is called inside a repository (e.g. while composing a commit
message), then that repository is used.  Otherwise (e.g. while
composing an email) then the repository recorded for the top
element of the stack is used (even though we insert another
revision).  If not called inside a repository and with an empty
stack, or with two prefix arguments, then read the repository in
the minibuffer too.

\(fn REV TOPLEVEL)" t nil)

(autoload 'magit-copy-section-value "magit-extras" "\
Save the value of the current section for later use.

Save the section value to the `kill-ring', and, provided that
the current section is a commit, branch, or tag section, push
the (referenced) revision to the `magit-revision-stack' for use
with `magit-pop-revision-stack'.

When the current section is a branch or a tag, and a prefix
argument is used, then save the revision at its tip to the
`kill-ring' instead of the reference name.

When the region is active, then save that to the `kill-ring',
like `kill-ring-save' would, instead of behaving as described
above." t nil)

(autoload 'magit-copy-buffer-revision "magit-extras" "\
Save the revision of the current buffer for later use.

Save the revision shown in the current buffer to the `kill-ring'
and push it to the `magit-revision-stack'.

This command is mainly intended for use in `magit-revision-mode'
buffers, the only buffers where it is always unambiguous exactly
which revision should be saved.

Most other Magit buffers usually show more than one revision, in
some way or another, so this command has to select one of them,
and that choice might not always be the one you think would have
been the best pick.

In such buffers it is often more useful to save the value of
the current section instead, using `magit-copy-section-value'.

When the region is active, then save that to the `kill-ring',
like `kill-ring-save' would, instead of behaving as described
above." t nil)

(autoload 'magit-abort-dwim "magit-extras" "\
Abort current operation.
Depending on the context, this will abort a merge, a rebase, a
patch application, a cherry-pick, a revert, or a bisect." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-extras" '("magit-")))

;;;***

;;;### (autoloads nil "magit-fetch" "magit-fetch.el" (0 0 0 0))
;;; Generated autoloads from magit-fetch.el
 (autoload 'magit-fetch-popup "magit-fetch" nil t)

(autoload 'magit-fetch-from-pushremote "magit-fetch" "\
Fetch from the push-remote of the current branch.

\(fn ARGS)" t nil)

(autoload 'magit-fetch-from-upstream "magit-fetch" "\
Fetch from the upstream repository of the current branch.

\(fn ARGS)" t nil)

(autoload 'magit-fetch-other "magit-fetch" "\
Fetch from another repository.

\(fn REMOTE ARGS)" t nil)

(autoload 'magit-fetch-branch "magit-fetch" "\
Fetch a BRANCH from a REMOTE.

\(fn REMOTE BRANCH ARGS)" t nil)

(autoload 'magit-fetch-refspec "magit-fetch" "\
Fetch a REFSPEC from a REMOTE.

\(fn REMOTE REFSPEC ARGS)" t nil)

(autoload 'magit-fetch-all "magit-fetch" "\
Fetch from all remotes.

\(fn ARGS)" t nil)

(autoload 'magit-fetch-all-prune "magit-fetch" "\
Fetch from all remotes, and prune.
Prune remote tracking branches for branches that have been
removed on the respective remote." t nil)

(autoload 'magit-fetch-all-no-prune "magit-fetch" "\
Fetch from all remotes." t nil)

(autoload 'magit-fetch-modules "magit-fetch" "\
Fetch all submodules.

Option `magit-fetch-modules-jobs' controls how many submodules
are being fetched in parallel.  Also fetch the super-repository,
because `git-fetch' does not support not doing that.  With a
prefix argument fetch all remotes.

\(fn &optional ALL)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-fetch" '("magit-")))

;;;***

;;;### (autoloads nil "magit-files" "magit-files.el" (0 0 0 0))
;;; Generated autoloads from magit-files.el

(autoload 'magit-find-file "magit-files" "\
View FILE from REV.
Switch to a buffer visiting blob REV:FILE,
creating one if none already exists.

\(fn REV FILE)" t nil)

(autoload 'magit-find-file-other-window "magit-files" "\
View FILE from REV, in another window.
Like `magit-find-file', but create a new window or reuse an
existing one.

\(fn REV FILE)" t nil)
 (autoload 'magit-file-popup "magit" nil t)

(put 'global-magit-file-mode 'globalized-minor-mode t)

(defvar global-magit-file-mode t "\
Non-nil if Global Magit-File mode is enabled.
See the `global-magit-file-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-magit-file-mode'.")

(custom-autoload 'global-magit-file-mode "magit-files" nil)

(autoload 'global-magit-file-mode "magit-files" "\
Toggle Magit-File mode in all buffers.
With prefix ARG, enable Global Magit-File mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Magit-File mode is enabled in all buffers where
`magit-file-mode-turn-on' would do it.
See `magit-file-mode' for more information on Magit-File mode.

\(fn &optional ARG)" t nil)

(autoload 'magit-file-checkout "magit-files" "\
Checkout FILE from REV.

\(fn REV FILE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-files" '("magit-")))

;;;***

;;;### (autoloads nil "magit-gitignore" "magit-gitignore.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from magit-gitignore.el
 (autoload 'magit-gitignore-popup "magit-gitignore" nil t)

(autoload 'magit-gitignore-globally "magit-gitignore" "\
Instruct Git to globally ignore FILE-OR-PATTERN.

\(fn FILE-OR-PATTERN)" t nil)

(autoload 'magit-gitignore-locally "magit-gitignore" "\
Instruct Git to locally ignore FILE-OR-PATTERN.

\(fn FILE-OR-PATTERN)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-gitignore" '("magit-")))

;;;***

;;;### (autoloads nil "magit-imenu" "magit-imenu.el" (0 0 0 0))
;;; Generated autoloads from magit-imenu.el

(autoload 'magit-imenu--log-prev-index-position-function "magit-imenu" "\
Move point to previous line in current buffer.
This function is used as a value for
`imenu-prev-index-position-function'." nil nil)

(autoload 'magit-imenu--log-extract-index-name-function "magit-imenu" "\
Return imenu name for line at point.
This function is used as a value for
`imenu-extract-index-name-function'.  Point should be at the
beginning of the line." nil nil)

(autoload 'magit-imenu--diff-prev-index-position-function "magit-imenu" "\
Move point to previous file line in current buffer.
This function is used as a value for
`imenu-prev-index-position-function'." nil nil)

(autoload 'magit-imenu--diff-extract-index-name-function "magit-imenu" "\
Return imenu name for line at point.
This function is used as a value for
`imenu-extract-index-name-function'.  Point should be at the
beginning of the line." nil nil)

(autoload 'magit-imenu--status-create-index-function "magit-imenu" "\
Return an alist of all imenu entries in current buffer.
This function is used as a value for
`imenu-create-index-function'." nil nil)

(autoload 'magit-imenu--refs-create-index-function "magit-imenu" "\
Return an alist of all imenu entries in current buffer.
This function is used as a value for
`imenu-create-index-function'." nil nil)

(autoload 'magit-imenu--cherry-create-index-function "magit-imenu" "\
Return an alist of all imenu entries in current buffer.
This function is used as a value for
`imenu-create-index-function'." nil nil)

(autoload 'magit-imenu--submodule-prev-index-position-function "magit-imenu" "\
Move point to previous line in magit-submodule-list buffer.
This function is used as a value for
`imenu-prev-index-position-function'." nil nil)

(autoload 'magit-imenu--submodule-extract-index-name-function "magit-imenu" "\
Return imenu name for line at point.
This function is used as a value for
`imenu-extract-index-name-function'.  Point should be at the
beginning of the line." nil nil)

(autoload 'magit-imenu--repolist-prev-index-position-function "magit-imenu" "\
Move point to previous line in magit-repolist buffer.
This function is used as a value for
`imenu-prev-index-position-function'." nil nil)

(autoload 'magit-imenu--repolist-extract-index-name-function "magit-imenu" "\
Return imenu name for line at point.
This function is used as a value for
`imenu-extract-index-name-function'.  Point should be at the
beginning of the line." nil nil)

(autoload 'magit-imenu--process-prev-index-position-function "magit-imenu" "\
Move point to previous process in magit-process buffer.
This function is used as a value for
`imenu-prev-index-position-function'." nil nil)

(autoload 'magit-imenu--process-extract-index-name-function "magit-imenu" "\
Return imenu name for line at point.
This function is used as a value for
`imenu-extract-index-name-function'.  Point should be at the
beginning of the line." nil nil)

(autoload 'magit-imenu--rebase-prev-index-position-function "magit-imenu" "\
Move point to previous commit in git-rebase buffer.
This function is used as a value for
`imenu-prev-index-position-function'." nil nil)

(autoload 'magit-imenu--rebase-extract-index-name-function "magit-imenu" "\
Return imenu name for line at point.
This function is used as a value for
`imenu-extract-index-name-function'.  Point should be at the
beginning of the line." nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-imenu" '("magit-imenu--index-function")))

;;;***

;;;### (autoloads nil "magit-log" "magit-log.el" (0 0 0 0))
;;; Generated autoloads from magit-log.el

(autoload 'magit-log-buffer-file-popup "magit-log" "\
Popup console for log commands.

This is a variant of `magit-log-popup' which shows the same popup
but which limits the log to the file being visited in the current
buffer." t nil)

(autoload 'magit-log-current "magit-log" "\
Show log for the current branch.
When `HEAD' is detached or with a prefix argument show log for
one or more revs read from the minibuffer.

\(fn REVS &optional ARGS FILES)" t nil)

(autoload 'magit-log-other "magit-log" "\
Show log for one or more revs read from the minibuffer.
The user can input any revision or revisions separated by a
space, or even ranges, but only branches and tags, and a
representation of the commit at point, are available as
completion candidates.

\(fn REVS &optional ARGS FILES)" t nil)

(autoload 'magit-log-head "magit-log" "\
Show log for `HEAD'.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-log-branches "magit-log" "\
Show log for all local branches and `HEAD'.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-log-all-branches "magit-log" "\
Show log for all local and remote branches and `HEAD'.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-log-all "magit-log" "\
Show log for all references and `HEAD'.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-log-buffer-file "magit-log" "\
Show log for the blob or file visited in the current buffer.
With a prefix argument or when `--follow' is part of
`magit-log-arguments', then follow renames.  When the region is
active, restrict the log to the lines that the region touches.

\(fn &optional FOLLOW BEG END)" t nil)

(autoload 'magit-log-trace-definition "magit-log" "\
Show log for the definition at point.

\(fn FILE FN REV)" t nil)

(autoload 'magit-log-merged "magit-log" "\
Show log for the merge of COMMIT into BRANCH.
More precisely, find merge commit M that brought COMMIT into
BRANCH, and show the log of the range \"M^..M\".  This command
requires git-when-merged, which is available from
https://github.com/mhagger/git-when-merged.

\(fn COMMIT BRANCH &optional ARGS FILES)" t nil)

(autoload 'magit-reflog-current "magit-log" "\
Display the reflog of the current branch.

\(fn ARGS)" t nil)

(autoload 'magit-reflog-other "magit-log" "\
Display the reflog of a branch or another ref.

\(fn REF ARGS)" t nil)

(autoload 'magit-reflog-head "magit-log" "\
Display the `HEAD' reflog.

\(fn ARGS)" t nil)

(autoload 'magit-log-move-to-parent "magit-log" "\
Move to the Nth parent of the current commit.

\(fn &optional N)" t nil)

(autoload 'magit-cherry "magit-log" "\
Show commits in a branch that are not merged in the upstream branch.

\(fn HEAD UPSTREAM)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-log" '("magit-")))

;;;***

;;;### (autoloads nil "magit-merge" "magit-merge.el" (0 0 0 0))
;;; Generated autoloads from magit-merge.el
 (autoload 'magit-merge-popup "magit" nil t)

(autoload 'magit-merge-plain "magit-merge" "\
Merge commit REV into the current branch; using default message.

Unless there are conflicts or a prefix argument is used create a
merge commit using a generic commit message and without letting
the user inspect the result.  With a prefix argument pretend the
merge failed to give the user the opportunity to inspect the
merge.

\(git merge --no-edit|--no-commit [ARGS] REV)

\(fn REV &optional ARGS NOCOMMIT)" t nil)

(autoload 'magit-merge-editmsg "magit-merge" "\
Merge commit REV into the current branch; and edit message.
Perform the merge and prepare a commit message but let the user
edit it.

\(git merge --edit --no-ff [ARGS] REV)

\(fn REV &optional ARGS)" t nil)

(autoload 'magit-merge-nocommit "magit-merge" "\
Merge commit REV into the current branch; pretending it failed.
Pretend the merge failed to give the user the opportunity to
inspect the merge and change the commit message.

\(git merge --no-commit --no-ff [ARGS] REV)

\(fn REV &optional ARGS)" t nil)

(autoload 'magit-merge-into "magit-merge" "\
Merge the current branch into BRANCH and remove the former.

Before merging, force push the source branch to its push-remote,
provided the respective remote branch already exists, ensuring
that the respective pull-request (if any) won't get stuck on some
obsolete version of the commits that are being merged.  Finally
if `magit-branch-pull-request' was used to create the merged
branch, then also remove the respective remote branch.

\(fn BRANCH &optional ARGS)" t nil)

(autoload 'magit-merge-absorb "magit-merge" "\
Merge BRANCH into the current branch and remove the former.

Before merging, force push the source branch to its push-remote,
provided the respective remote branch already exists, ensuring
that the respective pull-request (if any) won't get stuck on some
obsolete version of the commits that are being merged.  Finally
if `magit-branch-pull-request' was used to create the merged
branch, then also remove the respective remote branch.

\(fn BRANCH &optional ARGS)" t nil)

(autoload 'magit-merge-squash "magit-merge" "\
Squash commit REV into the current branch; don't create a commit.

\(git merge --squash REV)

\(fn REV)" t nil)

(autoload 'magit-merge-preview "magit-merge" "\
Preview result of merging REV into the current branch.

\(fn REV)" t nil)

(autoload 'magit-merge-abort "magit-merge" "\
Abort the current merge operation.

\(git merge --abort)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-merge" '("magit-")))

;;;***

;;;### (autoloads nil "magit-notes" "magit-notes.el" (0 0 0 0))
;;; Generated autoloads from magit-notes.el
 (autoload 'magit-notes-popup "magit" nil t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-notes" '("magit-")))

;;;***

;;;### (autoloads nil "magit-patch" "magit-patch.el" (0 0 0 0))
;;; Generated autoloads from magit-patch.el
 (autoload 'magit-patch-popup "magit-patch" nil t)

(autoload 'magit-format-patch "magit-patch" "\
Create patches for the commits in RANGE.
When a single commit is given for RANGE, create a patch for the
changes introduced by that commit (unlike 'git format-patch'
which creates patches for all commits that are reachable from
`HEAD' but not from the specified commit).

\(fn RANGE ARGS FILES)" t nil)

(autoload 'magit-request-pull "magit-patch" "\
Request upstream to pull from you public repository.

URL is the url of your publically accessible repository.
START is a commit that already is in the upstream repository.
END is the last commit, usually a branch name, which upstream
is asked to pull.  START has to be reachable from that commit.

\(fn URL START END)" t nil)
 (autoload 'magit-patch-apply-popup "magit-patch" nil t)

(autoload 'magit-patch-apply "magit-patch" "\
Apply the patch file FILE.

\(fn FILE &rest ARGS)" t nil)

(autoload 'magit-patch-save "magit-patch" "\
Write current diff into patch FILE.

What arguments are used to create the patch depends on the value
of `magit-patch-save-arguments' and whether a prefix argument is
used.

If the value is the symbol `buffer', then use the same arguments
as the buffer.  With a prefix argument use no arguments.

If the value is a list beginning with the symbol `exclude', then
use the same arguments as the buffer except for those matched by
entries in the cdr of the list.  The comparison is done using
`string-prefix-p'.  With a prefix argument use the same arguments
as the buffer.

If the value is a list of strings (including the empty list),
then use those arguments.  With a prefix argument use the same
arguments as the buffer.

Of course the arguments that are required to actually show the
same differences as those shown in the buffer are always used.

\(fn FILE &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-patch" '("magit-patch-save-arguments")))

;;;***

;;;### (autoloads nil "magit-pull" "magit-pull.el" (0 0 0 0))
;;; Generated autoloads from magit-pull.el
 (autoload 'magit-pull-popup "magit-pull" nil t)
 (autoload 'magit-pull-and-fetch-popup "magit-pull" nil t)

(autoload 'magit-pull-from-pushremote "magit-pull" "\
Pull from the push-remote of the current branch.

\(fn ARGS)" t nil)

(autoload 'magit-pull-from-upstream "magit-pull" "\
Pull from the upstream of the current branch.

\(fn ARGS)" t nil)

(autoload 'magit-pull-branch "magit-pull" "\
Pull from a branch read in the minibuffer.

\(fn SOURCE ARGS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-pull" '("magit-")))

;;;***

;;;### (autoloads nil "magit-push" "magit-push.el" (0 0 0 0))
;;; Generated autoloads from magit-push.el
 (autoload 'magit-push-popup "magit-push" nil t)

(autoload 'magit-push-current-to-pushremote "magit-push" "\
Push the current branch to `branch.<name>.pushRemote'.
If that variable is unset, then push to `remote.pushDefault'.

When `magit-push-current-set-remote-if-missing' is non-nil and
the push-remote is not configured, then read the push-remote from
the user, set it, and then push to it.  With a prefix argument
the push-remote can be changed before pushed to it.

\(fn ARGS &optional PUSH-REMOTE)" t nil)

(autoload 'magit-push-current-to-upstream "magit-push" "\
Push the current branch to its upstream branch.

When `magit-push-current-set-remote-if-missing' is non-nil and
the upstream is not configured, then read the upstream from the
user, set it, and then push to it.  With a prefix argument the
upstream can be changed before pushed to it.

\(fn ARGS &optional UPSTREAM)" t nil)

(autoload 'magit-push-current "magit-push" "\
Push the current branch to a branch read in the minibuffer.

\(fn TARGET ARGS)" t nil)

(autoload 'magit-push-other "magit-push" "\
Push an arbitrary branch or commit somewhere.
Both the source and the target are read in the minibuffer.

\(fn SOURCE TARGET ARGS)" t nil)

(autoload 'magit-push-refspecs "magit-push" "\
Push one or multiple REFSPECS to a REMOTE.
Both the REMOTE and the REFSPECS are read in the minibuffer.  To
use multiple REFSPECS, separate them with commas.  Completion is
only available for the part before the colon, or when no colon
is used.

\(fn REMOTE REFSPECS ARGS)" t nil)

(autoload 'magit-push-matching "magit-push" "\
Push all matching branches to another repository.
If multiple remotes exist, then read one from the user.
If just one exists, use that without requiring confirmation.

\(fn REMOTE &optional ARGS)" t nil)

(autoload 'magit-push-tags "magit-push" "\
Push all tags to another repository.
If only one remote exists, then push to that.  Otherwise prompt
for a remote, offering the remote configured for the current
branch as default.

\(fn REMOTE &optional ARGS)" t nil)

(autoload 'magit-push-tag "magit-push" "\
Push a tag to another repository.

\(fn TAG REMOTE &optional ARGS)" t nil)

(autoload 'magit-push-implicitly "magit-push" "\
Push somewhere without using an explicit refspec.

This command simply runs \"git push -v [ARGS]\".  ARGS are the
arguments specified in the popup buffer.  No explicit refspec
arguments are used.  Instead the behavior depends on at least
these Git variables: `push.default', `remote.pushDefault',
`branch.<branch>.pushRemote', `branch.<branch>.remote',
`branch.<branch>.merge', and `remote.<remote>.push'.

To add this command to the push popup add this to your init file:

  (with-eval-after-load \\='magit-remote
    (magit-define-popup-action \\='magit-push-popup ?P
      \\='magit-push-implicitly--desc
      \\='magit-push-implicitly ?p t))

The function `magit-push-implicitly--desc' attempts to predict
what this command will do.  The value it returns is displayed in
the popup buffer.

\(fn ARGS)" t nil)

(autoload 'magit-push-to-remote "magit-push" "\
Push to REMOTE without using an explicit refspec.
The REMOTE is read in the minibuffer.

This command simply runs \"git push -v [ARGS] REMOTE\".  ARGS
are the arguments specified in the popup buffer.  No refspec
arguments are used.  Instead the behavior depends on at least
these Git variables: `push.default', `remote.pushDefault',
`branch.<branch>.pushRemote', `branch.<branch>.remote',
`branch.<branch>.merge', and `remote.<remote>.push'.

To add this command to the push popup add this to your init file:

  (with-eval-after-load \\='magit-remote
    (magit-define-popup-action \\='magit-push-popup ?r
      \\='magit-push-to-remote--desc
      \\='magit-push-to-remote ?p t))

\(fn REMOTE ARGS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-push" '("magit-")))

;;;***

;;;### (autoloads nil "magit-refs" "magit-refs.el" (0 0 0 0))
;;; Generated autoloads from magit-refs.el

(autoload 'magit-show-refs-popup "magit-refs" "\
Popup console for `magit-show-refs'.

\(fn &optional ARG)" t nil)

(autoload 'magit-show-refs-head "magit-refs" "\
List and compare references in a dedicated buffer.
Refs are compared with `HEAD'.

\(fn &optional ARGS)" t nil)

(autoload 'magit-show-refs-current "magit-refs" "\
List and compare references in a dedicated buffer.
Refs are compared with the current branch or `HEAD' if
it is detached.

\(fn &optional ARGS)" t nil)

(autoload 'magit-show-refs "magit-refs" "\
List and compare references in a dedicated buffer.
Refs are compared with a branch read from the user.

\(fn &optional REF ARGS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-refs" '("magit-")))

;;;***

;;;### (autoloads nil "magit-remote" "magit-remote.el" (0 0 0 0))
;;; Generated autoloads from magit-remote.el
 (autoload 'magit-remote-popup "magit-remote" nil t)

(autoload 'magit-remote-add "magit-remote" "\
Add a remote named REMOTE and fetch it.

\(fn REMOTE URL &optional ARGS)" t nil)

(autoload 'magit-remote-rename "magit-remote" "\
Rename the remote named OLD to NEW.

\(fn OLD NEW)" t nil)

(autoload 'magit-remote-remove "magit-remote" "\
Delete the remote named REMOTE.

\(fn REMOTE)" t nil)

(autoload 'magit-remote-prune "magit-remote" "\
Remove stale remote-tracking branches for REMOTE.

\(fn REMOTE)" t nil)

(autoload 'magit-remote-prune-refspecs "magit-remote" "\
Remove stale refspecs for REMOTE.

A refspec is stale if there no longer exists at least one branch
on the remote that would be fetched due to that refspec.  A stale
refspec is problematic because its existence causes Git to refuse
to fetch according to the remaining non-stale refspecs.

If only stale refspecs remain, then offer to either delete the
remote or to replace the stale refspecs with the default refspec.

Also remove the remote-tracking branches that were created due to
the now stale refspecs.  Other stale branches are not removed.

\(fn REMOTE)" t nil)

(autoload 'magit-remote-set-head "magit-remote" "\
Set the local representation of REMOTE's default branch.
Query REMOTE and set the symbolic-ref refs/remotes/<remote>/HEAD
accordingly.  With a prefix argument query for the branch to be
used, which allows you to select an incorrect value if you fancy
doing that.

\(fn REMOTE &optional BRANCH)" t nil)

(autoload 'magit-remote-unset-head "magit-remote" "\
Unset the local representation of REMOTE's default branch.
Delete the symbolic-ref \"refs/remotes/<remote>/HEAD\".

\(fn REMOTE)" t nil)

(autoload 'magit-remote-config-popup "magit-remote" "\
Popup console for setting remote variables.

\(fn REMOTE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-remote" '("magit-")))

;;;***

;;;### (autoloads nil "magit-repos" "magit-repos.el" (0 0 0 0))
;;; Generated autoloads from magit-repos.el

(autoload 'magit-list-repositories "magit-repos" "\
Display a list of repositories.

Use the options `magit-repository-directories' to control which
repositories are displayed." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-repos" '("magit-")))

;;;***

;;;### (autoloads nil "magit-reset" "magit-reset.el" (0 0 0 0))
;;; Generated autoloads from magit-reset.el
 (autoload 'magit-reset-popup "magit" nil t)

(autoload 'magit-reset-mixed "magit-reset" "\
Reset the `HEAD' and index to COMMIT, but not the working tree.

\(git reset --mixed COMMIT)

\(fn COMMIT)" t nil)

(autoload 'magit-reset-soft "magit-reset" "\
Reset the `HEAD' to COMMIT, but not the index and working tree.

\(git reset --soft REVISION)

\(fn COMMIT)" t nil)

(autoload 'magit-reset-hard "magit-reset" "\
Reset the `HEAD', index, and working tree to COMMIT.

\(git reset --hard REVISION)

\(fn COMMIT)" t nil)

(autoload 'magit-reset-index "magit-reset" "\
Reset the index to COMMIT.
Keep the `HEAD' and working tree as-is, so if COMMIT refers to the
head this effectively unstages all changes.

\(git reset COMMIT .)

\(fn COMMIT)" t nil)

(autoload 'magit-reset-worktree "magit-reset" "\
Reset the worktree to COMMIT.
Keep the `HEAD' and index as-is.

\(fn COMMIT)" t nil)

(autoload 'magit-reset-quickly "magit-reset" "\
Reset the `HEAD' and index to COMMIT, and possibly the working tree.
With a prefix argument reset the working tree otherwise don't.

\(git reset --mixed|--hard COMMIT)

\(fn COMMIT &optional HARD)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-reset" '("magit-reset-")))

;;;***

;;;### (autoloads nil "magit-sequence" "magit-sequence.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from magit-sequence.el

(autoload 'magit-sequencer-continue "magit-sequence" "\
Resume the current cherry-pick or revert sequence." t nil)

(autoload 'magit-sequencer-skip "magit-sequence" "\
Skip the stopped at commit during a cherry-pick or revert sequence." t nil)

(autoload 'magit-sequencer-abort "magit-sequence" "\
Abort the current cherry-pick or revert sequence.
This discards all changes made since the sequence started." t nil)
 (autoload 'magit-cherry-pick-popup "magit-sequence" nil t)

(autoload 'magit-cherry-copy "magit-sequence" "\
Copy COMMITS from another branch onto the current branch.
Prompt for a commit, defaulting to the commit at point.  If
the region selects multiple commits, then pick all of them,
without prompting.

\(fn COMMITS &optional ARGS)" t nil)

(autoload 'magit-cherry-apply "magit-sequence" "\
Apply the changes in COMMITS but do not commit them.
Prompt for a commit, defaulting to the commit at point.  If
the region selects multiple commits, then apply all of them,
without prompting.

\(fn COMMITS &optional ARGS)" t nil)

(autoload 'magit-cherry-harvest "magit-sequence" "\
Move COMMITS from another BRANCH onto the current branch.
Remove the COMMITS from BRANCH and stay on the current branch.
If a conflict occurs, then you have to fix that and finish the
process manually.

\(fn COMMITS BRANCH &optional ARGS)" t nil)

(autoload 'magit-cherry-donate "magit-sequence" "\
Move COMMITS from the current branch onto another existing BRANCH.
Remove COMMITS from the current branch and stay on that branch.
If a conflict occurs, then you have to fix that and finish the
process manually.

\(fn COMMITS BRANCH &optional ARGS)" t nil)

(autoload 'magit-cherry-spinout "magit-sequence" "\
Move COMMITS from the current branch onto a new BRANCH.
Remove COMMITS from the current branch and stay on that branch.
If a conflict occurs, then you have to fix that and finish the
process manually.

\(fn COMMITS BRANCH START-POINT &optional ARGS)" t nil)

(autoload 'magit-cherry-spinoff "magit-sequence" "\
Move COMMITS from the current branch onto a new BRANCH.
Remove COMMITS from the current branch and checkout BRANCH.
If a conflict occurs, then you have to fix that and finish
the process manually.

\(fn COMMITS BRANCH START-POINT &optional ARGS)" t nil)
 (autoload 'magit-revert-popup "magit-sequence" nil t)

(autoload 'magit-revert-and-commit "magit-sequence" "\
Revert COMMIT by creating a new commit.
Prompt for a commit, defaulting to the commit at point.  If
the region selects multiple commits, then revert all of them,
without prompting.

\(fn COMMIT &optional ARGS)" t nil)

(autoload 'magit-revert-no-commit "magit-sequence" "\
Revert COMMIT by applying it in reverse to the worktree.
Prompt for a commit, defaulting to the commit at point.  If
the region selects multiple commits, then revert all of them,
without prompting.

\(fn COMMIT &optional ARGS)" t nil)
 (autoload 'magit-am-popup "magit-sequence" nil t)

(autoload 'magit-am-apply-patches "magit-sequence" "\
Apply the patches FILES.

\(fn &optional FILES ARGS)" t nil)

(autoload 'magit-am-apply-maildir "magit-sequence" "\
Apply the patches from MAILDIR.

\(fn &optional MAILDIR ARGS)" t nil)

(autoload 'magit-am-continue "magit-sequence" "\
Resume the current patch applying sequence." t nil)

(autoload 'magit-am-skip "magit-sequence" "\
Skip the stopped at patch during a patch applying sequence." t nil)

(autoload 'magit-am-abort "magit-sequence" "\
Abort the current patch applying sequence.
This discards all changes made since the sequence started." t nil)
 (autoload 'magit-rebase-popup "magit-sequence" nil t)

(autoload 'magit-rebase-onto-pushremote "magit-sequence" "\
Rebase the current branch onto `branch.<name>.pushRemote'.
If that variable is unset, then rebase onto `remote.pushDefault'.

\(fn ARGS)" t nil)

(autoload 'magit-rebase-onto-upstream "magit-sequence" "\
Rebase the current branch onto its upstream branch.

\(fn ARGS)" t nil)

(autoload 'magit-rebase-branch "magit-sequence" "\
Rebase the current branch onto a branch read in the minibuffer.
All commits that are reachable from `HEAD' but not from the
selected branch TARGET are being rebased.

\(fn TARGET ARGS)" t nil)

(autoload 'magit-rebase-subset "magit-sequence" "\
Rebase a subset of the current branch's history onto a new base.
Rebase commits from START to `HEAD' onto NEWBASE.
START has to be selected from a list of recent commits.

\(fn NEWBASE START ARGS)" t nil)

(autoload 'magit-rebase-interactive "magit-sequence" "\
Start an interactive rebase sequence.

\(fn COMMIT ARGS)" t nil)

(autoload 'magit-rebase-autosquash "magit-sequence" "\
Combine squash and fixup commits with their intended targets.

\(fn ARGS)" t nil)

(autoload 'magit-rebase-edit-commit "magit-sequence" "\
Edit a single older commit using rebase.

\(fn COMMIT ARGS)" t nil)

(autoload 'magit-rebase-reword-commit "magit-sequence" "\
Reword a single older commit using rebase.

\(fn COMMIT ARGS)" t nil)

(autoload 'magit-rebase-remove-commit "magit-sequence" "\
Remove a single older commit using rebase.

\(fn COMMIT ARGS)" t nil)

(autoload 'magit-rebase-continue "magit-sequence" "\
Restart the current rebasing operation.
In some cases this pops up a commit message buffer for you do
edit.  With a prefix argument the old message is reused as-is.

\(fn &optional NOEDIT)" t nil)

(autoload 'magit-rebase-skip "magit-sequence" "\
Skip the current commit and restart the current rebase operation." t nil)

(autoload 'magit-rebase-edit "magit-sequence" "\
Edit the todo list of the current rebase operation." t nil)

(autoload 'magit-rebase-abort "magit-sequence" "\
Abort the current rebase operation, restoring the original branch." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-sequence" '("magit-")))

;;;***

;;;### (autoloads nil "magit-stash" "magit-stash.el" (0 0 0 0))
;;; Generated autoloads from magit-stash.el
 (autoload 'magit-stash-popup "magit-stash" nil t)

(autoload 'magit-stash-both "magit-stash" "\
Create a stash of the index and working tree.
Untracked files are included according to popup arguments.
One prefix argument is equivalent to `--include-untracked'
while two prefix arguments are equivalent to `--all'.

\(fn MESSAGE &optional INCLUDE-UNTRACKED)" t nil)

(autoload 'magit-stash-index "magit-stash" "\
Create a stash of the index only.
Unstaged and untracked changes are not stashed.  The stashed
changes are applied in reverse to both the index and the
worktree.  This command can fail when the worktree is not clean.
Applying the resulting stash has the inverse effect.

\(fn MESSAGE)" t nil)

(autoload 'magit-stash-worktree "magit-stash" "\
Create a stash of unstaged changes in the working tree.
Untracked files are included according to popup arguments.
One prefix argument is equivalent to `--include-untracked'
while two prefix arguments are equivalent to `--all'.

\(fn MESSAGE &optional INCLUDE-UNTRACKED)" t nil)

(autoload 'magit-stash-keep-index "magit-stash" "\
Create a stash of the index and working tree, keeping index intact.
Untracked files are included according to popup arguments.
One prefix argument is equivalent to `--include-untracked'
while two prefix arguments are equivalent to `--all'.

\(fn MESSAGE &optional INCLUDE-UNTRACKED)" t nil)

(autoload 'magit-snapshot-both "magit-stash" "\
Create a snapshot of the index and working tree.
Untracked files are included according to popup arguments.
One prefix argument is equivalent to `--include-untracked'
while two prefix arguments are equivalent to `--all'.

\(fn &optional INCLUDE-UNTRACKED)" t nil)

(autoload 'magit-snapshot-index "magit-stash" "\
Create a snapshot of the index only.
Unstaged and untracked changes are not stashed." t nil)

(autoload 'magit-snapshot-worktree "magit-stash" "\
Create a snapshot of unstaged changes in the working tree.
Untracked files are included according to popup arguments.
One prefix argument is equivalent to `--include-untracked'
while two prefix arguments are equivalent to `--all'.

\(fn &optional INCLUDE-UNTRACKED)" t nil)

(autoload 'magit-stash-apply "magit-stash" "\
Apply a stash to the working tree.
Try to preserve the stash index.  If that fails because there
are staged changes, apply without preserving the stash index.

\(fn STASH)" t nil)

(autoload 'magit-stash-drop "magit-stash" "\
Remove a stash from the stash list.
When the region is active offer to drop all contained stashes.

\(fn STASH)" t nil)

(autoload 'magit-stash-clear "magit-stash" "\
Remove all stashes saved in REF's reflog by deleting REF.

\(fn REF)" t nil)

(autoload 'magit-stash-branch "magit-stash" "\
Create and checkout a new BRANCH from STASH.

\(fn STASH BRANCH)" t nil)

(autoload 'magit-stash-branch-here "magit-stash" "\
Create and checkout a new BRANCH and apply STASH.
The branch is created using `magit-branch', using the current
branch or `HEAD' as the string-point.

\(fn STASH BRANCH)" t nil)

(autoload 'magit-stash-format-patch "magit-stash" "\
Create a patch from STASH

\(fn STASH)" t nil)

(autoload 'magit-stash-list "magit-stash" "\
List all stashes in a buffer." t nil)

(autoload 'magit-stash-show "magit-stash" "\
Show all diffs of a stash in a buffer.

\(fn STASH &optional ARGS FILES)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-stash" '("magit-")))

;;;***

;;;### (autoloads nil "magit-status" "magit-status.el" (0 0 0 0))
;;; Generated autoloads from magit-status.el

(autoload 'magit-init "magit-status" "\
Initialize a Git repository, then show its status.

If the directory is below an existing repository, then the user
has to confirm that a new one should be created inside.  If the
directory is the root of the existing repository, then the user
has to confirm that it should be reinitialized.

Non-interactively DIRECTORY is (re-)initialized unconditionally.

\(fn DIRECTORY)" t nil)

(autoload 'magit-status "magit-status" "\
Show the status of the current Git repository in a buffer.
With a prefix argument prompt for a repository to be shown.
With two prefix arguments prompt for an arbitrary directory.
If that directory isn't the root of an existing repository,
then offer to initialize it as a new repository.

\(fn &optional DIRECTORY CACHE)" t nil)

(autoload 'magit-status-internal "magit-status" "\


\(fn DIRECTORY)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-status" '("magit")))

;;;***

;;;### (autoloads nil "magit-submodule" "magit-submodule.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from magit-submodule.el
 (autoload 'magit-submodule-popup "magit-submodule" nil t)

(autoload 'magit-submodule-add "magit-submodule" "\
Add the repository at URL as a module.

Optional PATH is the path to the module relative to the root of
the superproject.  If it is nil, then the path is determined
based on the URL.  Optional NAME is the name of the module.  If
it is nil, then PATH also becomes the name.

\(fn URL &optional PATH NAME ARGS)" t nil)

(autoload 'magit-submodule-read-name-for-path "magit-submodule" "\


\(fn PATH &optional PREFER-SHORT)" nil nil)

(autoload 'magit-submodule-register "magit-submodule" "\
Register MODULES.

With a prefix argument act on all suitable modules.  Otherwise,
if the region selects modules, then act on those.  Otherwise, if
there is a module at point, then act on that.  Otherwise read a
single module from the user.

\(fn MODULES)" t nil)

(autoload 'magit-submodule-populate "magit-submodule" "\
Create MODULES working directories, checking out the recorded commits.

With a prefix argument act on all suitable modules.  Otherwise,
if the region selects modules, then act on those.  Otherwise, if
there is a module at point, then act on that.  Otherwise read a
single module from the user.

\(fn MODULES)" t nil)

(autoload 'magit-submodule-update "magit-submodule" "\
Update MODULES by checking out the recorded commits.

With a prefix argument act on all suitable modules.  Otherwise,
if the region selects modules, then act on those.  Otherwise, if
there is a module at point, then act on that.  Otherwise read a
single module from the user.

\(fn MODULES ARGS)" t nil)

(autoload 'magit-submodule-synchronize "magit-submodule" "\
Synchronize url configuration of MODULES.

With a prefix argument act on all suitable modules.  Otherwise,
if the region selects modules, then act on those.  Otherwise, if
there is a module at point, then act on that.  Otherwise read a
single module from the user.

\(fn MODULES ARGS)" t nil)

(autoload 'magit-submodule-unpopulate "magit-submodule" "\
Remove working directories of MODULES.

With a prefix argument act on all suitable modules.  Otherwise,
if the region selects modules, then act on those.  Otherwise, if
there is a module at point, then act on that.  Otherwise read a
single module from the user.

\(fn MODULES ARGS)" t nil)

(autoload 'magit-submodule-remove "magit-submodule" "\
Unregister MODULES and remove their working directories.

For safety reasons, do not remove the gitdirs and if a module has
uncomitted changes, then do not remove it at all.  If a module's
gitdir is located inside the working directory, then move it into
the gitdir of the superproject first.

With the \"--force\" argument offer to remove dirty working
directories and with a prefix argument offer to delete gitdirs.
Both actions are very dangerous and have to be confirmed.  There
are additional safety precautions in place, so you might be able
to recover from making a mistake here, but don't count on it.

\(fn MODULES ARGS TRASH-GITDIRS)" t nil)

(autoload 'magit-insert-modules "magit-submodule" "\
Insert submodule sections.
Hook `magit-module-sections-hook' controls which module sections
are inserted, and option `magit-module-sections-nested' controls
whether they are wrapped in an additional section." nil nil)

(autoload 'magit-insert-modules-overview "magit-submodule" "\
Insert sections for all modules.
For each section insert the path and the output of `git describe --tags',
or, failing that, the abbreviated HEAD commit hash." nil nil)

(autoload 'magit-insert-modules-unpulled-from-upstream "magit-submodule" "\
Insert sections for modules that haven't been pulled from the upstream.
These sections can be expanded to show the respective commits." nil nil)

(autoload 'magit-insert-modules-unpulled-from-pushremote "magit-submodule" "\
Insert sections for modules that haven't been pulled from the push-remote.
These sections can be expanded to show the respective commits." nil nil)

(autoload 'magit-insert-modules-unpushed-to-upstream "magit-submodule" "\
Insert sections for modules that haven't been pushed to the upstream.
These sections can be expanded to show the respective commits." nil nil)

(autoload 'magit-insert-modules-unpushed-to-pushremote "magit-submodule" "\
Insert sections for modules that haven't been pushed to the push-remote.
These sections can be expanded to show the respective commits." nil nil)

(autoload 'magit-list-submodules "magit-submodule" "\
Display a list of the current repository's submodules." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-submodule" '("magit-")))

;;;***

;;;### (autoloads nil "magit-subtree" "magit-subtree.el" (0 0 0 0))
;;; Generated autoloads from magit-subtree.el
 (autoload 'magit-subtree-popup "magit-subtree" nil t)

(autoload 'magit-subtree-add "magit-subtree" "\
Add REF from REPOSITORY as a new subtree at PREFIX.

\(fn PREFIX REPOSITORY REF ARGS)" t nil)

(autoload 'magit-subtree-add-commit "magit-subtree" "\
Add COMMIT as a new subtree at PREFIX.

\(fn PREFIX COMMIT ARGS)" t nil)

(autoload 'magit-subtree-merge "magit-subtree" "\
Merge COMMIT into the PREFIX subtree.

\(fn PREFIX COMMIT ARGS)" t nil)

(autoload 'magit-subtree-pull "magit-subtree" "\
Pull REF from REPOSITORY into the PREFIX subtree.

\(fn PREFIX REPOSITORY REF ARGS)" t nil)

(autoload 'magit-subtree-push "magit-subtree" "\
Extract the history of the subtree PREFIX and push it to REF on REPOSITORY.

\(fn PREFIX REPOSITORY REF ARGS)" t nil)

(autoload 'magit-subtree-split "magit-subtree" "\
Extract the history of the subtree PREFIX.

\(fn PREFIX COMMIT ARGS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-subtree" '("magit-")))

;;;***

;;;### (autoloads nil "magit-tag" "magit-tag.el" (0 0 0 0))
;;; Generated autoloads from magit-tag.el
 (autoload 'magit-tag-popup "magit" nil t)

(autoload 'magit-tag-create "magit-tag" "\
Create a new tag with the given NAME at REV.
With a prefix argument annotate the tag.

\(git tag [--annotate] NAME REV)

\(fn NAME REV &optional ARGS)" t nil)

(autoload 'magit-tag-delete "magit-tag" "\
Delete one or more tags.
If the region marks multiple tags (and nothing else), then offer
to delete those, otherwise prompt for a single tag to be deleted,
defaulting to the tag at point.

\(git tag -d TAGS)

\(fn TAGS)" t nil)

(autoload 'magit-tag-prune "magit-tag" "\
Offer to delete tags missing locally from REMOTE, and vice versa.

\(fn TAGS REMOTE-TAGS REMOTE)" t nil)

(autoload 'magit-tag-release "magit-tag" "\
Create an opinionated release tag.

Assume version tags that match \"\\\\`v?[0-9]\\\\(\\\\.[0-9]\\\\)*\\\\'\".
Prompt for the name of the new tag using the highest existing tag
as initial input and call \"git tag --annotate --sign -m MSG\" TAG,
regardless of whether these arguments are enabled in the popup.
Given a TAG \"v1.2.3\" and a repository \"/path/to/foo-bar\", the
MESSAGE would be \"Foo-Bar 1.2.3\".

Because it is so opinionated, this command is not available from
the tag popup by default.

\(fn TAG)" t nil)

;;;***

;;;### (autoloads nil "magit-utils" "magit-utils.el" (0 0 0 0))
;;; Generated autoloads from magit-utils.el

(autoload 'magit-emacs-Q-command "magit-utils" "\
Show a shell command that runs an uncustomized Emacs with only Magit loaded.
See info node `(magit)Debugging Tools' for more information." t nil)

(autoload 'Info-follow-nearest-node--magit-gitman "magit-utils" "\


\(fn FN &optional FORK)" nil nil)

(advice-add 'Info-follow-nearest-node :around 'Info-follow-nearest-node--magit-gitman)

(autoload 'org-man-export--magit-gitman "magit-utils" "\


\(fn FN LINK DESCRIPTION FORMAT)" nil nil)

(advice-add 'org-man-export :around 'org-man-export--magit-gitman)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-utils" '("magit-" "whitespace-dont-turn-on-in-magit-mode")))

;;;***

;;;### (autoloads nil "magit-wip" "magit-wip.el" (0 0 0 0))
;;; Generated autoloads from magit-wip.el

(put 'magit-wip-after-save-mode 'globalized-minor-mode t)

(defvar magit-wip-after-save-mode nil "\
Non-nil if Magit-Wip-After-Save mode is enabled.
See the `magit-wip-after-save-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `magit-wip-after-save-mode'.")

(custom-autoload 'magit-wip-after-save-mode "magit-wip" nil)

(autoload 'magit-wip-after-save-mode "magit-wip" "\
Toggle Magit-Wip-After-Save-Local mode in all buffers.
With prefix ARG, enable Magit-Wip-After-Save mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Magit-Wip-After-Save-Local mode is enabled in all buffers where
`magit-wip-after-save-local-mode-turn-on' would do it.
See `magit-wip-after-save-local-mode' for more information on Magit-Wip-After-Save-Local mode.

\(fn &optional ARG)" t nil)

(defvar magit-wip-after-apply-mode nil "\
Non-nil if Magit-Wip-After-Apply mode is enabled.
See the `magit-wip-after-apply-mode' command
for a description of this minor mode.")

(custom-autoload 'magit-wip-after-apply-mode "magit-wip" nil)

(autoload 'magit-wip-after-apply-mode "magit-wip" "\
Commit to work-in-progress refs.

If called interactively, enable Magit-Wip-After-Apply mode if ARG
is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

After applying a change using any \"apply variant\"
command (apply, stage, unstage, discard, and reverse) commit the
affected files to the current wip refs.  For each branch there
may be two wip refs; one contains snapshots of the files as found
in the worktree and the other contains snapshots of the entries
in the index.

\(fn &optional ARG)" t nil)

(defvar magit-wip-before-change-mode nil "\
Non-nil if Magit-Wip-Before-Change mode is enabled.
See the `magit-wip-before-change-mode' command
for a description of this minor mode.")

(custom-autoload 'magit-wip-before-change-mode "magit-wip" nil)

(autoload 'magit-wip-before-change-mode "magit-wip" "\
Commit to work-in-progress refs before certain destructive changes.

If called interactively, enable Magit-Wip-Before-Change mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

Before invoking a revert command or an \"apply variant\"
command (apply, stage, unstage, discard, and reverse) commit the
affected tracked files to the current wip refs.  For each branch
there may be two wip refs; one contains snapshots of the files
as found in the worktree and the other contains snapshots of the
entries in the index.

Only changes to files which could potentially be affected by the
command which is about to be called are committed.

\(fn &optional ARG)" t nil)

(autoload 'magit-wip-commit-initial-backup "magit-wip" "\
Before saving, commit current file to a worktree wip ref.

The user has to add this function to `before-save-hook'.

Commit the current state of the visited file before saving the
current buffer to that file.  This backs up the same version of
the file as `backup-buffer' would, but stores the backup in the
worktree wip ref, which is also used by the various Magit Wip
modes, instead of in a backup file as `backup-buffer' would.

This function ignores the variables that affect `backup-buffer'
and can be used along-side that function, which is recommended
because this function only backs up files that are tracked in
a Git repository." nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-wip" '("magit-")))

;;;***

;;;### (autoloads nil "magit-worktree" "magit-worktree.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from magit-worktree.el
 (autoload 'magit-worktree-popup "magit-worktree" nil t)

(autoload 'magit-worktree-checkout "magit-worktree" "\
Checkout BRANCH in a new worktree at PATH.

\(fn PATH BRANCH)" t nil)

(autoload 'magit-worktree-branch "magit-worktree" "\
Create a new BRANCH and check it out in a new worktree at PATH.

\(fn PATH BRANCH START-POINT &optional FORCE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-worktree" '("magit-")))

;;;***

;;;### (autoloads nil "markdown-mode" "markdown-mode.el" (0 0 0 0))
;;; Generated autoloads from markdown-mode.el

(autoload 'markdown-mode "markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode" "\
Major mode for editing GitHub Flavored Markdown files.

\(fn)" t nil)

(autoload 'markdown-view-mode "markdown-mode" "\
Major mode for viewing Markdown content.

\(fn)" t nil)

(autoload 'gfm-view-mode "markdown-mode" "\
Major mode for viewing GitHub Flavored Markdown content.

\(fn)" t nil)

(autoload 'markdown-live-preview-mode "markdown-mode" "\
Toggle native previewing on save for a specific markdown file.

If called interactively, enable Markdown-Live-Preview mode if ARG
is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "markdown-mode" '("defun-markdown-" "gfm-" "markdown")))

;;;***

;;;### (autoloads nil "org-hugo-auto-export-mode" "org-hugo-auto-export-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from org-hugo-auto-export-mode.el

(autoload 'org-hugo-auto-export-mode "org-hugo-auto-export-mode" "\
Toggle auto exporting the Org file using `ox-hugo'.

If called interactively, enable Org-Hugo-Auto-Export mode if ARG
is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-hugo-auto-export-mode" '("org-hugo-export-wim-to-md-after-save")))

;;;***

;;;### (autoloads nil "org-journal" "org-journal.el" (0 0 0 0))
;;; Generated autoloads from org-journal.el

(autoload 'org-journal-update-auto-mode-alist "org-journal" "\
Update `auto-mode-alist' to open journal files in `org-journal-mode'.

\(fn)" nil nil)

(add-hook 'org-mode-hook 'org-journal-update-auto-mode-alist)

(autoload 'org-journal-dir-and-format->regex "org-journal" "\
Update `org-journal-file-pattern' with the current `org-journal-file-format'.

\(fn DIR FORMAT)" nil nil)

(autoload 'org-journal-mode "org-journal" "\
Mode for writing or viewing entries written in the journal.

\(fn)" t nil)

(eval-after-load "calendar" '(progn (define-key calendar-mode-map "m" 'org-journal-mark-entries) (define-key calendar-mode-map "j" 'org-journal-read-entry) (define-key calendar-mode-map (kbd "C-j") 'org-journal-display-entry) (define-key calendar-mode-map "]" 'org-journal-next-entry) (define-key calendar-mode-map "[" 'org-journal-previous-entry) (define-key calendar-mode-map (kbd "i j") 'org-journal-new-date-entry) (define-key calendar-mode-map (kbd "f f") 'org-journal-search-forever) (define-key calendar-mode-map (kbd "f F") 'org-journal-search-future) (define-key calendar-mode-map (kbd "f w") 'org-journal-search-calendar-week) (define-key calendar-mode-map (kbd "f m") 'org-journal-search-calendar-month) (define-key calendar-mode-map (kbd "f y") 'org-journal-search-calendar-year)))

(autoload 'org-journal-new-entry "org-journal" "\
Open today's journal file and start a new entry.

With a PREFIX arg, open the today's file, create a heading if it doesn't exist yet,
but do not create a new entry.

If given a TIME, create an entry for the time's day. If no TIME was given,
use the current time (which is interpreted as belonging to yesterday if
smaller than `org-extend-today-until`).

Whenever a journal entry is created the `org-journal-after-entry-create-hook'
hook is run.

\(fn PREFIX &optional TIME)" t nil)

(autoload 'org-journal-new-date-entry "org-journal" "\
Open the journal for the date indicated by point and start a new entry.

If the date is not today, it won't be given a time heading. With one prefix (C-u),
don't add a new heading.

If the date is in the future, create a schedule entry, unless two universal prefix
arguments (C-u C-u) are given. In that case insert just the heading.

\(fn PREFIX &optional EVENT)" t nil)

(autoload 'org-journal-new-scheduled-entry "org-journal" "\
Create a new entry in the future.

\(fn PREFIX &optional SCHEDULED-TIME)" t nil)

(autoload 'org-journal-list-files "org-journal" "\
Returns a list of all files in the journal directory.

\(fn)" nil nil)

(autoload 'org-journal-invalidate-cache "org-journal" "\
Reset `org-journal-journals', `org-journal-dates' and remove the
file `org-journal-cache-file'.

\(fn)" t nil)

(autoload 'org-journal-mark-entries "org-journal" "\
Mark days in the calendar for which a diary entry is present

\(fn)" t nil)

(autoload 'org-journal-read-entry "org-journal" "\
Open journal entry for selected date for viewing

\(fn ARG &optional EVENT)" t nil)

(autoload 'org-journal-display-entry "org-journal" "\
Display journal entry for selected date in another window.

\(fn ARG &optional EVENT)" t nil)

(autoload 'org-journal-read-or-display-entry "org-journal" "\
Read an entry for the TIME and either select the new window when NOSELECT
is nil or avoid switching when NOSELECT is non-nil.

\(fn TIME &optional NOSELECT)" nil nil)

(autoload 'org-journal-next-entry "org-journal" "\
Go to the next date with a journal entry.

\(fn)" t nil)

(autoload 'org-journal-previous-entry "org-journal" "\
Go to the previous date with a journal entry.

\(fn)" t nil)

(autoload 'org-journal-search "org-journal" "\
Search for a string in the journal files.

See `org-read-date' for information on ways to specify dates.
If a prefix argument is given, search all dates.

\(fn STR &optional PERIOD-NAME)" t nil)

(autoload 'org-journal-search-calendar-week "org-journal" "\
Search for a string within a current calendar-mode week entries.

\(fn STR)" t nil)

(autoload 'org-journal-search-calendar-month "org-journal" "\
Search for a string within a current calendar-mode month entries.

\(fn STR)" t nil)

(autoload 'org-journal-search-calendar-year "org-journal" "\
Search for a string within a current calendar-mode year entries.

\(fn STR)" t nil)

(autoload 'org-journal-search-forever "org-journal" "\
Search for a string within all entries.

\(fn STR)" t nil)

(autoload 'org-journal-search-future "org-journal" "\
Search for a string within all future entries.

\(fn STR)" t nil)

(add-hook 'org-journal-mode-hook (lambda nil (add-hook org-journal-encrypt-on 'org-journal-encryption-hook nil t)))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-journal" '("org-journal-")))

;;;***

;;;### (autoloads nil "ox-blackfriday" "ox-blackfriday.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from ox-blackfriday.el

(autoload 'org-blackfriday-export-as-markdown "ox-blackfriday" "\
Export current buffer to a Github Flavored Markdown buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Export is done in a buffer named \"*Org BLACKFRIDAY Export*\", which will
be displayed when `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-blackfriday-convert-region-to-md "ox-blackfriday" "\
Convert text in the current region to Blackfriday Markdown.
The text is assumed to be in Org mode format.

This can be used in any buffer.  For example, you can write an
itemized list in Org mode syntax in a Markdown buffer and use
this command to convert it." t nil)

(autoload 'org-blackfriday-export-to-markdown "ox-blackfriday" "\
Export current buffer to a Github Flavored Markdown file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-blackfriday-publish-to-blackfriday "ox-blackfriday" "\
Publish an Org file to Blackfriday Markdown file.

PLIST is the property list for the given project.  FILENAME is
the filename of the Org file to be published.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-blackfriday" '("org-blackfriday-")))

;;;***

;;;### (autoloads nil "ox-hugo" "ox-hugo.el" (0 0 0 0))
;;; Generated autoloads from ox-hugo.el
 (put 'org-hugo-section 'safe-local-variable 'stringp)
 (put 'org-hugo-front-matter-format 'safe-local-variable 'stringp)
 (put 'org-hugo-footer 'safe-local-variable 'stringp)
 (put 'org-hugo-preserve-filling 'safe-local-variable 'booleanp)
 (put 'org-hugo-delete-trailing-ws 'safe-local-variable 'booleanp)
 (put 'org-hugo-use-code-for-kbd 'safe-local-variable 'booleanp)
 (put 'org-hugo-allow-spaces-in-tags 'safe-local-variable 'booleanp)
 (put 'org-hugo-prefer-hyphen-in-tags 'safe-local-variable 'booleanp)
 (put 'org-hugo-auto-set-lastmod 'safe-local-variable 'booleanp)
 (put 'org-hugo-suppress-lastmod-period 'safe-local-variable 'floatp)
 (put 'org-hugo-export-with-toc 'safe-local-variable (lambda (x) (or (booleanp x) (integerp x))))
 (put 'org-hugo-export-with-section-numbers 'safe-local-variable (lambda (x) (or (booleanp x) (equal 'onlytoc x) (integerp x))))
 (put 'org-hugo-default-static-subdirectory-for-externals 'safe-local-variable 'stringp)
 (put 'org-hugo-export-creator-string 'safe-local-variable 'stringp)
 (put 'org-hugo-date-format 'safe-local-variable 'stringp)
 (put 'org-hugo-paired-shortcodes 'safe-local-variable 'stringp)
 (put 'org-hugo-link-desc-insert-type 'safe-local-variable 'booleanp)

(autoload 'org-hugo-slug "ox-hugo" "\
Convert string STR to a `slug' and return that string.

A `slug' is the part of a URL which identifies a particular page
on a website in an easy to read form.

Example: If STR is \"My First Post\", it will be converted to a
slug \"my-first-post\", which can become part of an easy to read
URL like \"https://example.com/posts/my-first-post/\".

In general, STR is a string.  But it can also be a string with
Markdown markup as that string passed to this function is often
the sub-headings of a post (which can contain bold, italics,
link, etc markup).

The `slug' generated from that STR follows these rules:

- Contain only lower case alphabet, number and hyphen characters
  ([[:alnum:]-]).
- Not have *any* HTML tag like \"<code>..</code>\",
  \"<span class=..>..</span>\", etc.
- Not contain any URLs (if STR happens to be a Markdown link).
- Replace \".\" in STR with \"dot\", \"&\" with \"and\",
  \"+\" with \"plus\".
- Replace parentheses with double-hyphens.  So \"foo (bar) baz\"
  becomes \"foo--bar--baz\".
- Replace non [[:alnum:]-] chars with spaces, and then one or
  more consecutive spaces with a single hyphen.
- At most two consecutive hyphens are allowed.
- No hyphens allowed at the leading or trailing end of the slug.

\(fn STR)" nil nil)

(autoload 'org-hugo-export-as-md "ox-hugo" "\
Export current buffer to a Hugo-compatible Markdown buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Export is done in a buffer named \"*Org Hugo Export*\", which
will be displayed when `org-export-show-temporary-export-buffer'
is non-nil.

Return the buffer the export happened to.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-hugo-export-to-md "ox-hugo" "\
Export current buffer to a Hugo-compatible Markdown file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-hugo-export-wim-to-md "ox-hugo" "\
Export the current subtree/all subtrees/current file to a Hugo post.

This is an Export \"What I Mean\" function:

- If the current subtree has the \"EXPORT_FILE_NAME\" property, export
  that subtree.
- If the current subtree doesn't have that property, but one of its
  parent subtrees has, then export from that subtree's scope.
- If none of the subtrees have that property (or if there are no Org
  subtrees at all), call `org-hugo--export-file-to-md'.

- If ALL-SUBTREES is non-nil, export all valid Hugo post subtrees
  (that have the \"EXPORT_FILE_NAME\" property) in the current file
  to multiple Markdown posts.
- If ALL-SUBTREES is non-nil, and again if none of the subtrees have
  that property (or if there are no Org subtrees), call
  `org-hugo--export-file-to-md'.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

The optional argument NOERROR is passed to
`org-hugo--export-file-to-md'.

- If ALL-SUBTREES is non-nil:
  - If valid subtrees are found, return the list of output files.
  - If no valid subtrees are found, return value is the same as
    that of `org-hugo--export-file-to-md'.

- If ALL-SUBTREES is nil:
  - If `org-hugo--export-subtree-to-md' returns a non-nil value, return that.
  - Else return the value of `org-hugo--export-file-to-md'.

\(fn &optional ALL-SUBTREES ASYNC VISIBLE-ONLY NOERROR)" t nil)

(autoload 'org-hugo-debug-info "ox-hugo" "\
Get Emacs, Org and Hugo version and ox-hugo customization info.
The information is converted to Markdown format and copied to the
kill ring.  The same information is displayed in the Messages
buffer and returned as a string in Org format." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-hugo" '("org-hugo-")))

;;;***

;;;### (autoloads nil "perspective" "perspective.el" (0 0 0 0))
;;; Generated autoloads from perspective.el

(defvar persp-mode nil "\
Non-nil if Persp mode is enabled.
See the `persp-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `persp-mode'.")

(custom-autoload 'persp-mode "perspective" nil)

(autoload 'persp-mode "perspective" "\
Toggle perspective mode.
When active, keeps track of multiple 'perspectives',
named collections of buffers and window configurations.

If called interactively, enable Persp mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "perspective" '("check-persp" "make-persp" "persp" "quick-perspective-keys" "with-perspective")))

;;;***

;;;### (autoloads nil "projectile" "projectile.el" (0 0 0 0))
;;; Generated autoloads from projectile.el

(autoload 'projectile-version "projectile" "\
Get the Projectile version as string.

If called interactively or if SHOW-VERSION is non-nil, show the
version in the echo area and the messages buffer.

The returned string includes both, the version from package.el
and the library version, if both a present and different.

If the version number could not be determined, signal an error,
if called interactively, or if SHOW-VERSION is non-nil, otherwise
just return nil.

\(fn &optional SHOW-VERSION)" t nil)

(autoload 'projectile-invalidate-cache "projectile" "\
Remove the current project's files from `projectile-projects-cache'.

With a prefix argument PROMPT prompts for the name of the project whose cache
to invalidate.

\(fn PROMPT)" t nil)

(autoload 'projectile-purge-file-from-cache "projectile" "\
Purge FILE from the cache of the current project.

\(fn FILE)" t nil)

(autoload 'projectile-purge-dir-from-cache "projectile" "\
Purge DIR from the cache of the current project.

\(fn DIR)" t nil)

(autoload 'projectile-cache-current-file "projectile" "\
Add the currently visited file to the cache." t nil)

(autoload 'projectile-discover-projects-in-directory "projectile" "\
Discover any projects in DIRECTORY and add them to the projectile cache.
This function is not recursive and only adds projects with roots
at the top level of DIRECTORY.

\(fn DIRECTORY)" t nil)

(autoload 'projectile-discover-projects-in-search-path "projectile" "\
Discover projects in `projectile-project-search-path'.
Invoked automatically when `projectile-mode' is enabled." t nil)

(autoload 'projectile-switch-to-buffer "projectile" "\
Switch to a project buffer." t nil)

(autoload 'projectile-switch-to-buffer-other-window "projectile" "\
Switch to a project buffer and show it in another window." t nil)

(autoload 'projectile-switch-to-buffer-other-frame "projectile" "\
Switch to a project buffer and show it in another window." t nil)

(autoload 'projectile-display-buffer "projectile" "\
Display a project buffer in another window without selecting it." t nil)

(autoload 'projectile-project-buffers-other-buffer "projectile" "\
Switch to the most recently selected buffer project buffer.
Only buffers not visible in windows are returned." t nil)

(autoload 'projectile-multi-occur "projectile" "\
Do a `multi-occur' in the project's buffers.
With a prefix argument, show NLINES of context.

\(fn &optional NLINES)" t nil)

(autoload 'projectile-find-other-file "projectile" "\
Switch between files with the same name but different extensions.
With FLEX-MATCHING, match any file that contains the base name of current file.
Other file extensions can be customized with the variable `projectile-other-file-alist'.

\(fn &optional FLEX-MATCHING)" t nil)

(autoload 'projectile-find-other-file-other-window "projectile" "\
Switch between files with the same name but different extensions in other window.
With FLEX-MATCHING, match any file that contains the base name of current file.
Other file extensions can be customized with the variable `projectile-other-file-alist'.

\(fn &optional FLEX-MATCHING)" t nil)

(autoload 'projectile-find-other-file-other-frame "projectile" "\
Switch between files with the same name but different extensions in other window.
With FLEX-MATCHING, match any file that contains the base name of current file.
Other file extensions can be customized with the variable `projectile-other-file-alist'.

\(fn &optional FLEX-MATCHING)" t nil)

(autoload 'projectile-find-file-dwim "projectile" "\
Jump to a project's files using completion based on context.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

If point is on a filename, Projectile first tries to search for that
file in project:

- If it finds just a file, it switches to that file instantly.  This works even
if the filename is incomplete, but there's only a single file in the current project
that matches the filename at point.  For example, if there's only a single file named
\"projectile/projectile.el\" but the current filename is \"projectile/proj\" (incomplete),
`projectile-find-file-dwim' still switches to \"projectile/projectile.el\" immediately
 because this is the only filename that matches.

- If it finds a list of files, the list is displayed for selecting.  A list of
files is displayed when a filename appears more than one in the project or the
filename at point is a prefix of more than two files in a project.  For example,
if `projectile-find-file-dwim' is executed on a filepath like \"projectile/\", it lists
the content of that directory.  If it is executed on a partial filename like
 \"projectile/a\", a list of files with character 'a' in that directory is presented.

- If it finds nothing, display a list of all files in project for selecting.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-file-dwim-other-window "projectile" "\
Jump to a project's files using completion based on context in other window.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

If point is on a filename, Projectile first tries to search for that
file in project:

- If it finds just a file, it switches to that file instantly.  This works even
if the filename is incomplete, but there's only a single file in the current project
that matches the filename at point.  For example, if there's only a single file named
\"projectile/projectile.el\" but the current filename is \"projectile/proj\" (incomplete),
`projectile-find-file-dwim-other-window' still switches to \"projectile/projectile.el\"
immediately because this is the only filename that matches.

- If it finds a list of files, the list is displayed for selecting.  A list of
files is displayed when a filename appears more than one in the project or the
filename at point is a prefix of more than two files in a project.  For example,
if `projectile-find-file-dwim-other-window' is executed on a filepath like \"projectile/\", it lists
the content of that directory.  If it is executed on a partial filename
like \"projectile/a\", a list of files with character 'a' in that directory
is presented.

- If it finds nothing, display a list of all files in project for selecting.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-file-dwim-other-frame "projectile" "\
Jump to a project's files using completion based on context in other frame.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

If point is on a filename, Projectile first tries to search for that
file in project:

- If it finds just a file, it switches to that file instantly.  This works even
if the filename is incomplete, but there's only a single file in the current project
that matches the filename at point.  For example, if there's only a single file named
\"projectile/projectile.el\" but the current filename is \"projectile/proj\" (incomplete),
`projectile-find-file-dwim-other-frame' still switches to \"projectile/projectile.el\"
immediately because this is the only filename that matches.

- If it finds a list of files, the list is displayed for selecting.  A list of
files is displayed when a filename appears more than one in the project or the
filename at point is a prefix of more than two files in a project.  For example,
if `projectile-find-file-dwim-other-frame' is executed on a filepath like \"projectile/\", it lists
the content of that directory.  If it is executed on a partial filename
like \"projectile/a\", a list of files with character 'a' in that directory
is presented.

- If it finds nothing, display a list of all files in project for selecting.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-file "projectile" "\
Jump to a project's file using completion.
With a prefix arg INVALIDATE-CACHE invalidates the cache first.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-file-other-window "projectile" "\
Jump to a project's file using completion and show it in another window.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-file-other-frame "projectile" "\
Jump to a project's file using completion and show it in another frame.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-toggle-project-read-only "projectile" "\
Toggle project read only." t nil)

(autoload 'projectile-find-dir "projectile" "\
Jump to a project's directory using completion.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-dir-other-window "projectile" "\
Jump to a project's directory in other window using completion.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-dir-other-frame "projectile" "\
Jump to a project's directory in other window using completion.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-test-file "projectile" "\
Jump to a project's test file using completion.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-project-info "projectile" "\
Display info for current project." t nil)

(autoload 'projectile-find-implementation-or-test-other-window "projectile" "\
Open matching implementation or test file in other window." t nil)

(autoload 'projectile-find-implementation-or-test-other-frame "projectile" "\
Open matching implementation or test file in other frame." t nil)

(autoload 'projectile-toggle-between-implementation-and-test "projectile" "\
Toggle between an implementation file and its test file." t nil)

(autoload 'projectile-grep "projectile" "\
Perform rgrep in the project.

With a prefix ARG asks for files (globbing-aware) which to grep in.
With prefix ARG of `-' (such as `M--'), default the files (without prompt),
to `projectile-grep-default-files'.

With REGEXP given, don't query the user for a regexp.

\(fn &optional REGEXP ARG)" t nil)

(autoload 'projectile-ag "projectile" "\
Run an ag search with SEARCH-TERM in the project.

With an optional prefix argument ARG SEARCH-TERM is interpreted as a
regular expression.

\(fn SEARCH-TERM &optional ARG)" t nil)

(autoload 'projectile-ripgrep "projectile" "\
Run a Ripgrep search with `SEARCH-TERM' at current project root.

SEARCH-TERM is a regexp.

\(fn SEARCH-TERM)" t nil)

(autoload 'projectile-regenerate-tags "projectile" "\
Regenerate the project's [e|g]tags." t nil)

(autoload 'projectile-find-tag "projectile" "\
Find tag in project." t nil)

(autoload 'projectile-run-command-in-root "projectile" "\
Invoke `execute-extended-command' in the project's root." t nil)

(autoload 'projectile-run-shell-command-in-root "projectile" "\
Invoke `shell-command' in the project's root." t nil)

(autoload 'projectile-run-async-shell-command-in-root "projectile" "\
Invoke `async-shell-command' in the project's root." t nil)

(autoload 'projectile-run-shell "projectile" "\
Invoke `shell' in the project's root.

Switch to the project specific shell buffer if it already exists." t nil)

(autoload 'projectile-run-eshell "projectile" "\
Invoke `eshell' in the project's root.

Switch to the project specific eshell buffer if it already exists." t nil)

(autoload 'projectile-run-ielm "projectile" "\
Invoke `ielm' in the project's root.

Switch to the project specific ielm buffer if it already exists." t nil)

(autoload 'projectile-run-term "projectile" "\
Invoke `term' in the project's root.

Switch to the project specific term buffer if it already exists.

\(fn PROGRAM)" t nil)

(autoload 'projectile-replace "projectile" "\
Replace literal string in project using non-regexp `tags-query-replace'.

With a prefix argument ARG prompts you for a directory on which
to run the replacement.

\(fn &optional ARG)" t nil)

(autoload 'projectile-replace-regexp "projectile" "\
Replace a regexp in the project using `tags-query-replace'.

With a prefix argument ARG prompts you for a directory on which
to run the replacement.

\(fn &optional ARG)" t nil)

(autoload 'projectile-kill-buffers "projectile" "\
Kill project buffers.

The buffer are killed according to the value of
`projectile-kill-buffers-filter'." t nil)

(autoload 'projectile-save-project-buffers "projectile" "\
Save all project buffers." t nil)

(autoload 'projectile-dired "projectile" "\
Open `dired' at the root of the project." t nil)

(autoload 'projectile-dired-other-window "projectile" "\
Open `dired'  at the root of the project in another window." t nil)

(autoload 'projectile-dired-other-frame "projectile" "\
Open `dired' at the root of the project in another frame." t nil)

(autoload 'projectile-vc "projectile" "\
Open `vc-dir' at the root of the project.

For git projects `magit-status-internal' is used if available.
For hg projects `monky-status' is used if available.

If PROJECT-ROOT is given, it is opened instead of the project
root directory of the current buffer file.  If interactively
called with a prefix argument, the user is prompted for a project
directory to open.

\(fn &optional PROJECT-ROOT)" t nil)

(autoload 'projectile-recentf "projectile" "\
Show a list of recently visited files in a project." t nil)

(autoload 'projectile-configure-project "projectile" "\
Run project configure command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

\(fn ARG)" t nil)

(autoload 'projectile-compile-project "projectile" "\
Run project compilation command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

\(fn ARG)" t nil)

(autoload 'projectile-test-project "projectile" "\
Run project test command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

\(fn ARG)" t nil)

(autoload 'projectile-run-project "projectile" "\
Run project run command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

\(fn ARG)" t nil)

(autoload 'projectile-repeat-last-command "projectile" "\
Run last projectile external command.

External commands are: `projectile-configure-project',
`projectile-compile-project', `projectile-test-project' and
`projectile-run-project'.

If the prefix argument SHOW_PROMPT is non nil, the command can be edited.

\(fn SHOW-PROMPT)" t nil)

(autoload 'projectile-switch-project "projectile" "\
Switch to a project we have visited before.
Invokes the command referenced by `projectile-switch-project-action' on switch.
With a prefix ARG invokes `projectile-commander' instead of
`projectile-switch-project-action.'

\(fn &optional ARG)" t nil)

(autoload 'projectile-switch-open-project "projectile" "\
Switch to a project we have currently opened.
Invokes the command referenced by `projectile-switch-project-action' on switch.
With a prefix ARG invokes `projectile-commander' instead of
`projectile-switch-project-action.'

\(fn &optional ARG)" t nil)

(autoload 'projectile-find-file-in-directory "projectile" "\
Jump to a file in a (maybe regular) DIRECTORY.

This command will first prompt for the directory the file is in.

\(fn &optional DIRECTORY)" t nil)

(autoload 'projectile-find-file-in-known-projects "projectile" "\
Jump to a file in any of the known projects." t nil)

(autoload 'projectile-cleanup-known-projects "projectile" "\
Remove known projects that don't exist anymore." t nil)

(autoload 'projectile-clear-known-projects "projectile" "\
Clear both `projectile-known-projects' and `projectile-known-projects-file'." t nil)

(autoload 'projectile-remove-known-project "projectile" "\
Remove PROJECT from the list of known projects.

\(fn &optional PROJECT)" t nil)

(autoload 'projectile-remove-current-project-from-known-projects "projectile" "\
Remove the current project from the list of known projects." t nil)

(autoload 'projectile-ibuffer "projectile" "\
Open an IBuffer window showing all buffers in the current project.

Let user choose another project when PROMPT-FOR-PROJECT is supplied.

\(fn PROMPT-FOR-PROJECT)" t nil)

(autoload 'projectile-commander "projectile" "\
Execute a Projectile command with a single letter.
The user is prompted for a single character indicating the action to invoke.
The `?' character describes then
available actions.

See `def-projectile-commander-method' for defining new methods." t nil)

(autoload 'projectile-browse-dirty-projects "projectile" "\
Browse dirty version controlled projects.

With a prefix argument, or if CACHED is non-nil, try to use the cached
dirty project list.

\(fn &optional CACHED)" t nil)

(autoload 'projectile-edit-dir-locals "projectile" "\
Edit or create a .dir-locals.el file of the project." t nil)

(defvar projectile-mode nil "\
Non-nil if Projectile mode is enabled.
See the `projectile-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `projectile-mode'.")

(custom-autoload 'projectile-mode "projectile" nil)

(autoload 'projectile-mode "projectile" "\
Minor mode to assist project management and navigation.

When called interactively, toggle `projectile-mode'.  With prefix
ARG, enable `projectile-mode' if ARG is positive, otherwise disable
it.

When called from Lisp, enable `projectile-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `projectile-mode'.
Otherwise behave as if called interactively.

\\{projectile-mode-map}

\(fn &optional ARG)" t nil)

(define-obsolete-function-alias 'projectile-global-mode 'projectile-mode "1.0")

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "projectile" '("??" "compilation-find-file-projectile-find-compilation-buffer" "def-projectile-commander-method" "delete-file-projectile-remove-from-cache" "projectile-")))

;;;***

;;;### (autoloads nil "rainbow-delimiters" "rainbow-delimiters.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from rainbow-delimiters.el

(autoload 'rainbow-delimiters-mode "rainbow-delimiters" "\
Highlight nested parentheses, brackets, and braces according to their depth.

If called interactively, enable Rainbow-Delimiters mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'rainbow-delimiters-mode-enable "rainbow-delimiters" "\
Enable `rainbow-delimiters-mode'." nil nil)

(autoload 'rainbow-delimiters-mode-disable "rainbow-delimiters" "\
Disable `rainbow-delimiters-mode'." nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rainbow-delimiters" '("rainbow-delimiters-")))

;;;***

;;;### (autoloads nil "smex" "smex.el" (0 0 0 0))
;;; Generated autoloads from smex.el

(autoload 'smex "smex" nil t nil)

(autoload 'smex-major-mode-commands "smex" "\
Like `smex', but limited to commands that are relevant to the active major mode." t nil)

(autoload 'smex-initialize "smex" nil t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smex" '("smex-")))

;;;***

;;;### (autoloads nil "spinner" "spinner.el" (0 0 0 0))
;;; Generated autoloads from spinner.el

(autoload 'spinner-create "spinner" "\
Create a spinner of the given TYPE.
The possible TYPEs are described in `spinner--type-to-frames'.

FPS, if given, is the number of desired frames per second.
Default is `spinner-frames-per-second'.

If BUFFER-LOCAL is non-nil, the spinner will be automatically
deactivated if the buffer is killed.  If BUFFER-LOCAL is a
buffer, use that instead of current buffer.

When started, in order to function properly, the spinner runs a
timer which periodically calls `force-mode-line-update' in the
curent buffer.  If BUFFER-LOCAL was set at creation time, then
`force-mode-line-update' is called in that buffer instead.  When
the spinner is stopped, the timer is deactivated.

DELAY, if given, is the number of seconds to wait after starting
the spinner before actually displaying it. It is safe to cancel
the spinner before this time, in which case it won't display at
all.

\(fn &optional TYPE BUFFER-LOCAL FPS DELAY)" nil nil)

(autoload 'spinner-start "spinner" "\
Start a mode-line spinner of given TYPE-OR-OBJECT.
If TYPE-OR-OBJECT is an object created with `make-spinner',
simply activate it.  This method is designed for minor modes, so
they can use the spinner as part of their lighter by doing:
    '(:eval (spinner-print THE-SPINNER))
To stop this spinner, call `spinner-stop' on it.

If TYPE-OR-OBJECT is anything else, a buffer-local spinner is
created with this type, and it is displayed in the
`mode-line-process' of the buffer it was created it.  Both
TYPE-OR-OBJECT and FPS are passed to `make-spinner' (which see).
To stop this spinner, call `spinner-stop' in the same buffer.

Either way, the return value is a function which can be called
anywhere to stop this spinner.  You can also call `spinner-stop'
in the same buffer where the spinner was created.

FPS, if given, is the number of desired frames per second.
Default is `spinner-frames-per-second'.

DELAY, if given, is the number of seconds to wait until actually
displaying the spinner. It is safe to cancel the spinner before
this time, in which case it won't display at all.

\(fn &optional TYPE-OR-OBJECT FPS DELAY)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "spinner" '("spinner")))

;;;***

;;;### (autoloads nil "terraform-mode" "terraform-mode.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from terraform-mode.el

(autoload 'terraform-mode "terraform-mode" "\
Major mode for editing terraform configuration file

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.tf\\(vars\\)?\\'" . terraform-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "terraform-mode" '("terraform-")))

;;;***

;;;### (autoloads nil "treepy" "treepy.el" (0 0 0 0))
;;; Generated autoloads from treepy.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treepy" '("treepy-")))

;;;***

;;;### (autoloads nil "which-key" "which-key.el" (0 0 0 0))
;;; Generated autoloads from which-key.el

(defvar which-key-mode nil "\
Non-nil if Which-Key mode is enabled.
See the `which-key-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `which-key-mode'.")

(custom-autoload 'which-key-mode "which-key" nil)

(autoload 'which-key-mode "which-key" "\
Toggle which-key-mode.

If called interactively, enable Which-Key mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'which-key-setup-side-window-right "which-key" "\
Apply suggested settings for side-window that opens on right." t nil)

(autoload 'which-key-setup-side-window-right-bottom "which-key" "\
Apply suggested settings for side-window that opens on right
if there is space and the bottom otherwise." t nil)

(autoload 'which-key-setup-side-window-bottom "which-key" "\
Apply suggested settings for side-window that opens on
bottom." t nil)

(autoload 'which-key-setup-minibuffer "which-key" "\
Apply suggested settings for minibuffer.
Do not use this setup if you use the paging commands. Instead use
`which-key-setup-side-window-bottom', which is nearly identical
but more functional." t nil)

(autoload 'which-key-add-key-based-replacements "which-key" "\
Replace the description of KEY-SEQUENCE with REPLACEMENT.
KEY-SEQUENCE is a string suitable for use in `kbd'. REPLACEMENT
may either be a string, as in

\(which-key-add-key-based-replacements \"C-x 1\" \"maximize\")

a cons of two strings as in

\(which-key-add-key-based-replacements \"C-x 8\"
                                        '(\"unicode\" . \"Unicode keys\"))

or a function that takes a (KEY . BINDING) cons and returns a
replacement.

In the second case, the second string is used to provide a longer
name for the keys under a prefix.

MORE allows you to specifcy additional KEY REPLACEMENT pairs.  All
replacements are added to
`which-key-key-based-description-replacement-alist'.

\(fn KEY-SEQUENCE REPLACEMENT &rest MORE)" nil nil)

(autoload 'which-key-add-major-mode-key-based-replacements "which-key" "\
Functions like `which-key-add-key-based-replacements'.
The difference is that MODE specifies the `major-mode' that must
be active for KEY-SEQUENCE and REPLACEMENT (MORE contains
addition KEY-SEQUENCE REPLACEMENT pairs) to apply.

\(fn MODE KEY-SEQUENCE REPLACEMENT &rest MORE)" nil nil)

(autoload 'which-key-reload-key-sequence "which-key" "\
Simulate entering the key sequence KEY-SEQ.
KEY-SEQ should be a list of events as produced by
`listify-key-sequence'. If nil, KEY-SEQ defaults to
`which-key--current-key-list'. Any prefix arguments that were
used are reapplied to the new key sequence.

\(fn &optional KEY-SEQ)" nil nil)

(autoload 'which-key-show-standard-help "which-key" "\
Call the command in `which-key--prefix-help-cmd-backup'.
Usually this is `describe-prefix-bindings'.

\(fn &optional _)" t nil)

(autoload 'which-key-show-next-page-no-cycle "which-key" "\
Show next page of keys unless on the last page, in which case
call `which-key-show-standard-help'." t nil)

(autoload 'which-key-show-previous-page-no-cycle "which-key" "\
Show previous page of keys unless on the first page, in which
case do nothing." t nil)

(autoload 'which-key-show-next-page-cycle "which-key" "\
Show the next page of keys, cycling from end to beginning
after last page.

\(fn &optional _)" t nil)

(autoload 'which-key-show-previous-page-cycle "which-key" "\
Show the previous page of keys, cycling from beginning to end
after first page.

\(fn &optional _)" t nil)

(autoload 'which-key-show-top-level "which-key" "\
Show top-level bindings.

\(fn &optional _)" t nil)

(autoload 'which-key-show-major-mode "which-key" "\
Show top-level bindings in the map of the current major mode.

This function will also detect evil bindings made using
`evil-define-key' in this map. These bindings will depend on the
current evil state. " t nil)

(autoload 'which-key-undo-key "which-key" "\
Undo last keypress and force which-key update.

\(fn &optional _)" t nil)

(autoload 'which-key-C-h-dispatch "which-key" "\
Dispatch C-h commands by looking up key in
`which-key-C-h-map'. This command is always accessible (from any
prefix) if `which-key-use-C-h-commands' is non nil." t nil)

(autoload 'which-key-show-keymap "which-key" "\
Show the top-level bindings in KEYMAP using which-key. KEYMAP
is selected interactively from all available keymaps.

\(fn KEYMAP)" t nil)

(autoload 'which-key-show-full-keymap "which-key" "\
Show all bindings in KEYMAP using which-key. KEYMAP is
selected interactively from all available keymaps.

\(fn KEYMAP)" t nil)

(autoload 'which-key-show-minor-mode-keymap "which-key" "\
Show the top-level bindings in KEYMAP using which-key. KEYMAP
is selected interactively by mode in `minor-mode-map-alist'." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "which-key" '("which-key-")))

;;;***

;;;### (autoloads nil "with-editor" "with-editor.el" (0 0 0 0))
;;; Generated autoloads from with-editor.el

(autoload 'with-editor-export-editor "with-editor" "\
Teach subsequent commands to use current Emacs instance as editor.

Set and export the environment variable ENVVAR, by default
\"EDITOR\".  The value is automatically generated to teach
commands to use the current Emacs instance as \"the editor\".

This works in `shell-mode', `term-mode' and `eshell-mode'.

\(fn &optional (ENVVAR \"EDITOR\"))" t nil)

(autoload 'with-editor-export-git-editor "with-editor" "\
Like `with-editor-export-editor' but always set `$GIT_EDITOR'." t nil)

(autoload 'with-editor-export-hg-editor "with-editor" "\
Like `with-editor-export-editor' but always set `$HG_EDITOR'." t nil)

(defvar shell-command-with-editor-mode nil "\
Non-nil if Shell-Command-With-Editor mode is enabled.
See the `shell-command-with-editor-mode' command
for a description of this minor mode.")

(custom-autoload 'shell-command-with-editor-mode "with-editor" nil)

(autoload 'shell-command-with-editor-mode "with-editor" "\
Teach `shell-command' to use current Emacs instance as editor.

If called interactively, enable Shell-Command-With-Editor mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

Teach `shell-command', and all commands that ultimately call that
command, to use the current Emacs instance as editor by executing
\"EDITOR=CLIENT COMMAND&\" instead of just \"COMMAND&\".

CLIENT is automatically generated; EDITOR=CLIENT instructs
COMMAND to use to the current Emacs instance as \"the editor\",
assuming no other variable overrides the effect of \"$EDITOR\".
CLIENT may be the path to an appropriate emacsclient executable
with arguments, or a script which also works over Tramp.

Alternatively you can use the `with-editor-async-shell-command',
which also allows the use of another variable instead of
\"EDITOR\".

\(fn &optional ARG)" t nil)

(autoload 'with-editor-async-shell-command "with-editor" "\
Like `async-shell-command' but with `$EDITOR' set.

Execute string \"ENVVAR=CLIENT COMMAND\" in an inferior shell;
display output, if any.  With a prefix argument prompt for an
environment variable, otherwise the default \"EDITOR\" variable
is used.  With a negative prefix argument additionally insert
the COMMAND's output at point.

CLIENT is automatically generated; ENVVAR=CLIENT instructs
COMMAND to use to the current Emacs instance as \"the editor\",
assuming it respects ENVVAR as an \"EDITOR\"-like variable.
CLIENT may be the path to an appropriate emacsclient executable
with arguments, or a script which also works over Tramp.

Also see `async-shell-command' and `shell-command'.

\(fn COMMAND &optional OUTPUT-BUFFER ERROR-BUFFER ENVVAR)" t nil)

(autoload 'with-editor-shell-command "with-editor" "\
Like `shell-command' or `with-editor-async-shell-command'.
If COMMAND ends with \"&\" behave like the latter,
else like the former.

\(fn COMMAND &optional OUTPUT-BUFFER ERROR-BUFFER ENVVAR)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "with-editor" '("server-" "shell-command--shell-command-with-editor-mode" "start-file-process--with-editor-process-filter" "with-editor")))

;;;***

;;;### (autoloads nil "xclip" "xclip.el" (0 0 0 0))
;;; Generated autoloads from xclip.el

(defvar xclip-mode nil "\
Non-nil if Xclip mode is enabled.
See the `xclip-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `xclip-mode'.")

(custom-autoload 'xclip-mode "xclip" nil)

(autoload 'xclip-mode "xclip" "\
Minor mode to use the `xclip' program to copy&paste.

If called interactively, enable Xclip mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "xclip" '("xclip-")))

;;;***

;;;### (autoloads nil "yaml-mode" "yaml-mode.el" (0 0 0 0))
;;; Generated autoloads from yaml-mode.el

(let ((loads (get 'yaml 'custom-loads))) (if (member '"yaml-mode" loads) nil (put 'yaml 'custom-loads (cons '"yaml-mode" loads))))

(autoload 'yaml-mode "yaml-mode" "\
Simple mode to edit YAML.

\\{yaml-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(e?ya?\\|ra\\)ml\\'" . yaml-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "yaml-mode" '("yaml-")))

;;;***

;;;### (autoloads nil "zenburn-theme" "zenburn-theme.el" (0 0 0 0))
;;; Generated autoloads from zenburn-theme.el

(defvar zenburn-override-colors-alist 'nil "\
Place to override default theme colors.

You can override a subset of the theme's default colors by
defining them in this alist.")

(custom-autoload 'zenburn-override-colors-alist "zenburn-theme" t)

(and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "zenburn-theme" '("zenburn")))

;;;***

;;;### (autoloads nil nil ("buck.el" "company-capf.el" "dash-functional.el"
;;;;;;  "dash.el" "editorconfig-core-handle.el" "f.el" "flx.el" "ghub-graphql.el"
;;;;;;  "glab.el" "gogs.el" "graphql.el" "gtea.el" "ht.el" "lsp-clients.el"
;;;;;;  "lsp-ui-doc.el" "lsp-ui-flycheck.el" "lsp-ui-imenu.el" "lsp-ui-peek.el"
;;;;;;  "lsp-ui-sideline.el" "lsp.el" "magit-core.el" "magit-git.el"
;;;;;;  "magit-margin.el" "magit-mode.el" "magit-obsolete.el" "magit-pkg.el"
;;;;;;  "magit-popup.el" "magit-process.el" "magit-section.el" "memoize.el"
;;;;;;  "ox-hugo-pandoc-cite.el" "s.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; third-party-autoloads.el ends here
