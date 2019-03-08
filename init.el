;; -------- Speed up load time -------

;; I don't use emacs-server, so startup times are very important to me.

;; Garbage collection is triggered very often during start up, and it
;; slows the whole thing down. It is safe to increase threshold
;; temporarily to prevent aggressive GC, and then re-enable it at the
;; end.

(setq gc-cons-threshold 402653184
      gc-cons-percentage 0.6)


;; There are special ways to handle files (via SSH or in archives),
;; but this is not necessary during startup, and it also slows down
;; the load significantly, as emacs is going through lots of files.
(defvar saved--file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)

;; Restore defaults after initialization has completed
(add-hook 'after-init-hook #'(lambda ()
                               (setq gc-cons-threshold 16777216
                                     gc-cons-percentage 0.1)
                               (setq file-name-handler-alist saved--file-name-handler-alist)))


;; -------- Packages --------

(add-to-list 'load-path "~/.emacs.d/third-party")

;;(require 'async-autoloads)
;; update-directory-autoloads

(setq custom-file (file-truename "~/.emacs.d/custom.el"))
(load custom-file 'noerror)

;; Disable package initialize after us.  We either initialize it
;; anyway in case of interpreted .emacs, or we don't want slow
;; initizlization in case of byte-compiled .emacs.elc.
(setq package-enable-at-startup nil)

;; Ask package.el to not add (package-initialize) to .emacs.
(setq package--init-file-ensured t)


;; -------- State files --------

;; By default emacs leaves lots of trash around your filesystem while
;; you are editing. This section cleans up the basics.

;; Don't leave =yourfile~= temporary files nearby, and put them to a
;; separate directory instead.

(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq auto-save-file-name-transforms
      '((".*" "~/.emacs.d/backups" t)))

;; -------- Command history --------

;; Save command history so that when emacs is restarted, the history
;; is preserved.

(setq savehist-file "~/.emacs.d/savehist")
(savehist-mode +1)
(setq savehist-save-minibuffer-history +1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))

;; -------- Recent files --------

;; Recent files are convenient to record because you can use them to
;; quickly jump to what you've been editing recently.

(setq recentf-save-file "~/.emacs.d/recentf"
      recentf-max-menu-items 0
      recentf-max-saved-items 300
      recentf-filename-handlers '(file-truename)
      recentf-exclude
      (list "^/tmp/" "^/ssh:" "\\.?ido\\.last$" "\\.revive$" "/TAGS$"
            "^/var/folders/.+$"
            ))

(recentf-mode 1)

;; State file holds variables changed via =custom-set-variable=. By
;; default custom variables are appended to =init.el=.

(setq custom-file "~/.emacs.d/custom.el")

;; -------- De-clutter --------

;; Toolbar and scrollbars are only useful to novices. The same for
;; startup screen and menu bar.

(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)
(menu-bar-mode -1)

;; More reliable inter-window border
;; The native border "consumes" a pixel of the fringe on righter-most splits,
;; ~window-divider~ does not. Available since Emacs 25.1.

(setq-default window-divider-default-places t
              window-divider-default-bottom-width 0
              window-divider-default-right-width 1)
(window-divider-mode +1)

;; Remove continuation arrow on right fringe

(setq fringe-indicator-alist (delq (assq 'continuation fringe-indicator-alist)
                                   fringe-indicator-alist))

;; No more typing the whole yes or no. Just y or n will do.
;;(fset 'yes-or-no-p 'y-or-n-p)

;; Makes *scratch* empty.
;;(setq initial-scratch-message "")

;; -------- Cursor and movement --------

;; Blinking cursor is inconvenient

(blink-cursor-mode -1)

;; Disable bell ring when moving outside of available area

(setq ring-bell-function 'ignore)

;; Disable annoying blink-matching-paren

(setq blink-matching-paren nil)

;; -------- Window decoration --------

;; This makes the header transparent on Emacs 26.1+ under OS X

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

;; -------- Theme --------

;; I mostly use Zenburn today, with a few modifications:
;; - I don't like that fringes are visible, so I set them to regular
;;   background color
;; - Panels look better without outset/inset shadows

(require 'zenburn-theme)

(zenburn-with-color-variables
  (set-face-background 'fringe zenburn-bg))


;; On many OSs the modeline has an outset border (lighter on top and
;; darker on the bottom). This doesn't look pretty on a flat theme.

(set-face-attribute 'mode-line nil :box nil)
(set-face-attribute 'mode-line-inactive nil :box nil)


;; -------- Font --------

;; Some time ago I've purchased a great font called Pragmata Pro,
;; which is easy on the eyes and tailored for programmers. It may
;; not be available everywhere though, hence conditional load.

(when window-system
  (if (not (null (x-list-fonts "PragmataPro")))
      (add-to-list 'default-frame-alist
                   '(font . "PragmataPro-15"))))


;;

(defvar autoload-file (concat user-emacs-directory "third-party/third-party-autoloads.el"))
(load autoload-file)

;; -------- Navigation --------

;; Quickly find my way around emacs

;; Default scheme for uniquifying buffer names is not convenient.
;; It's better to have a regular path-like structure.

;;(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)    ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers


;; If you stop after typing a part of keybinding, shows available
;; options in minibuffer.

(add-hook 'after-init-hook 'which-key-mode)
(with-eval-after-load 'which-key
  (which-key-setup-side-window-bottom))

;; persp-mode allows you to have tagged workspaces akin to
;; Linux tiled-window managers.


(add-hook 'after-init-hook 'persp-mode)

;; ido-mode allows for easy navigation between buffers and files

(setq ido-use-virtual-buffers t)
(add-hook 'after-init-hook 'ido-mode)


;; -------- Editor basics --------

;; Use 4 spaces to indent by default

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Clean up trailing whitespace on file save

(add-hook 'before-save-hook 'whitespace-cleanup)

;; But use editorconfig to guess proper project-wide indentation rules

(require 'editorconfig)
(add-hook 'prog-mode-hook #'editorconfig-mode)


;; Speed up comint buffers by disabling bidirectional language support

(setq-default bidi-display-reordering nil)

;; -------- Tools and environment --------

;; By default, Emacs doesn't add system path to its search places

(require 'exec-path-from-shell)
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))

;; On a mac, this will set up PATH and MANPATH from your environment
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; -------- Org mode --------

(setq org-modules '(org-w3m org-bbdb org-bibtex org-docview
                            org-gnus org-info org-irc org-mhe
                            org-rmail org-checklist))
;; use hours in clocktable instead of days and hours
(setq org-time-clocksum-format "%d:%02d")

;; After a recurring task is marked as done, reset it to TODO.  This
;; is important because I have the "INBOX" state first in the sequence
;; of states.
(setq org-todo-repeat-to-state "TODO")

;; Default format for column view
(setq org-columns-default-format "%38ITEM(Details) %TAGS(Context) %7TODO(To Do) %5Effort(Time){:} %6CLOCKSUM(Total){:}")

;; Default tags
(setq org-tag-alist '((:startgroup . nil)
                      ("WORK" . ?w) ("HOME" . ?h)
                      (:endgroup . nil)
                      ("PROJECT" . ?p)
                      ("PHONE" . ?n)
                      ("MEETING" . ?m)
                      ("DOC" . ?d)
                      ("GOOGLE" . ?g)
                      ("QUICK" . ?q)))

;; Default todo sequence
(setq org-todo-keywords
      '((sequence "INBOX(i)" "TODO(t)" "ERRAND(k)"
                  "SOMEDAY(s)" "WAITING(w@/!)" "APPT(a)" "|"
                  "DONE(d!)" "CANCELLED(c!)")))

;; Babel and code block embedding
(setq org-confirm-babel-evaluate nil)
;;(org-babel-do-load-languages
;; 'org-babel-load-languages
;; '((emacs-lisp . nil)
;;   (plantuml . t)))

;; Log TODO state changes and clock-ins into the LOGBOOK drawer
(setq org-clock-into-drawer t)
(setq org-log-into-drawer t)

;; Quickly creating new tasks
(global-set-key (kbd "\C-c r") 'org-capture)
(setq org-capture-templates
      `(("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
         "* TODO %?\n  %U\n  %a")
        ("i" "Inbox" entry (file+headline "~/org/gtd.org" "Tasks")
         "* INBOX %?\n  %U")
        ("f" "Follow-up" entry (file+headline "~/org/gtd.org" "Tasks")
         ,(concat "* TODO %? :EMAIL:\n"
                  "  %U\n"
                  "  %a"))
        ("c" "Contacts" entry (file "~/org/contacts.org")
         (concat "* %(org-contacts-template-name)\n"
                 ":PROPERTIES:\n"
                 ":EMAIL: %(org-contacts-template-email)\n"
                 ":END:"))

        ("q"
         "Org capture template"
         entry
         (file+headline "~/org/capture.org" "Notes")
         "* %:description\n\n  Source: %u, %:link\n\n  %i"
         :empty-lines 1)
        )
      )
;; org-protocol allows you to capture stuff into your system from web
;; browsers
;;(require 'org-protocol)

;; Refiling allows you to quickly move an element with its children to
;; another location.

;; By default, refile works up to 2-level sections, which is not very
;; convenient if you have project-based organization
;; (/Projects/ProjectName).
(setq org-refile-targets '((org-agenda-files :maxlevel . 3)))

;; Then, it's nice to have a full path to the target element appear in
;; completion
(setq org-refile-use-outline-path 'file)

;; But, when using helm, we also need to tell org mode to present the
;; whole list of possible completions right away, and not use
;; incremental search:
(setq org-outline-path-complete-in-steps nil)

;; It may also be useful to be able to create elements, if the refile
;; target doesn't already exist.
(setq org-refile-allow-creating-parent-nodes 'confirm)

;; Agenda
(global-set-key "\C-ca" 'org-agenda)
(setq org-agenda-files '("~/org/gtd.org"
                         "~/org/weeklyreview.org"
                         ;; org journal is excluded because it spams
                         ;; agenda clock report with large amount of
                         ;; file entries
                         ;;"~/org/journal"
                         ))

(setq org-agenda-custom-commands nil)
(add-to-list 'org-agenda-custom-commands
             '("h" "Work todos" tags-todo
               "-personal-doat={.+}-dowith={.+}/!-ERRAND"
               ((org-agenda-todo-ignore-scheduled t))))
(add-to-list 'org-agenda-custom-commands
             '("H" "All work todos" tags-todo "-personal/!-ERRAND-MAYBE"
               ((org-agenda-todo-ignore-scheduled nil))))
(add-to-list 'org-agenda-custom-commands
             '("A" "Work todos with doat or dowith" tags-todo
               "-personal+doat={.+}|dowith={.+}/!-ERRAND"
               ((org-agenda-todo-ignore-scheduled nil))))
(add-to-list 'org-agenda-custom-commands
             '("P" "Projects"
               tags "+PROJECT-TODO=\"SOMEDAY\""))

(add-to-list 'org-agenda-custom-commands
             '("i" "Inbox"
               todo "INBOX"))

(add-to-list 'org-agenda-custom-commands
             '("o" "Someday"
               todo "SOMEDAY"))

(add-to-list 'org-agenda-custom-commands
             '("c" "Simple agenda view"
               (
                (agenda ""
                        )
                (todo ""
                      (
                       (org-agenda-overriding-header "\nUnscheduled TODO")
                       (org-agenda-skip-function '(org-agenda-skip-entry-if
                                                   'timestamp 'todo '("SOMEDAY" "ERRAND")))
                       (org-agenda-sorting-strategy
                        (quote ((agenda time-up priority-down tag-up))))
                       ))
                )
               ((org-agenda-overriding-columns-format
                 "%38ITEM(Details) %TAGS(Context) %7TODO(To Do) %5Effort(Time){:} %6CLOCKSUM_T(Total){:}")
                (org-agenda-view-columns-initially t))
               )
             )

(setq org-todo-keyword-faces
      '(("ERRAND" . (:foreground "light sea green" :weight bold))
        ("INBOX" . (:foreground "DarkGoldenrod" :weight bold))))

;;(set-face-foreground 'org-scheduled-previously "DarkGoldenrod")

(setq org-tags-exclude-from-inheritance '("PROJECT")
      org-stuck-projects '("+PROJECT/-MAYBE-DONE-SOMEDAY"
                           ("TODO" "ERRAND" "WAITING") () ()))


;; I use org-journal to take arbitrary notes.

;;(require 'org-journal)
(setq org-journal-dir (expand-file-name "~/org/journal/"))

(add-hook 'org-mode-hook
          #'(lambda ()
              (local-set-key (kbd "C-c C-j") 'org-journal-new-entry)))

(global-set-key (kbd "C-c C-j") 'org-journal-new-entry)

;; org-journal-file-pattern can be generated like this:
;;(setq org-journal-file-format "%Y%m%d.org")
;;(setq org-journal-file-pattern (org-journal-dir-and-format->regex
;;                                org-journal-dir org-journal-file-format))

(setq org-journal-file-pattern
      (concat org-journal-dir
              "\\(?1:[0-9]\\{4\\}\\)\\(?2:[0-9][0-9]\\)\\(?3:[0-9][0-9]\\).org\\(\\.gpg\\)?\\'"))

(add-to-list 'auto-mode-alist
             (cons org-journal-file-pattern 'org-journal-mode))

;; -------- Programming --------

;; Rainbow delimeters highlight matching pairs of braces in different colors

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; Flycheck is an on-the-fly syntax checker for emacs with pluggable backengs.

(add-hook 'prog-mode-hook #'flycheck-mode)

;; Scroll compilation buffer with the output

(setq compilation-scroll-output t)

;; Projectile auto-detects projects and allows to run project-wide commands

(setq projectile-cache-file "~/.emacs.d/projectile.cache")
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Company mode is an advanced auto completion framework with
;; pluggable backends

(setq company-backends '(company-capf (company-dabbrev-code) company-dabbrev))
(add-hook 'prog-mode-hook #'company-mode)
