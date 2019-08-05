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

(eval-when-compile (require 'cl-lib))

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
(add-hook 'after-init-hook 'ido-everywhere)

(require 'ido-completing-read+)

(add-hook 'after-init-hook 'ido-ubiquitous-mode)

;; flx is a flexible matcher like in sublime
(add-hook 'after-init-hook 'flx-ido-mode)
;; smex allows to run an interactive command through ido interface
(global-set-key (kbd "M-x") 'smex)

(defun my-ido-find-tag ()
  "Find a tag using ido"
  (interactive)
  (tags-completion-table)
  (let (tag-names)
    (mapcar (lambda (x)
              (push (prin1-to-string x t) tag-names))
            tags-completion-table)
    (find-tag (ido-completing-read "Tag: " tag-names))))

(global-set-key (kbd "C-c t") 'my-ido-find-tag)

;; Navigation when in russian layout

(cl-loop
 for from across "йцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖ\ЭЯЧСМИТЬБЮ№"
 for to   across "qwertyuiop[]asdfghjkl;'zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>#"
 do
 (eval `(define-key key-translation-map (kbd ,(concat "C-" (string from))) (kbd ,(concat     "C-" (string to)))))
 (eval `(define-key key-translation-map (kbd ,(concat "M-" (string from))) (kbd ,(concat     "M-" (string to))))))


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
                            org-rmail org-checklist org-mu4e))

;; navigate with (org-goto) by offering the full list of targets in ido-mode
(setq org-goto-interface 'outline-path-completion) ;; don't search incrementally
(setq org-outline-path-complete-in-steps nil) ;; see whole path at once

;; avoid inadvertently editing hidden text
(setq org-catch-invisible-edits 'show-and-error)

;; hide empty spaces between folded subtrees
(setq org-cycle-separator-lines 0)

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
(setq org-journal-file-format "%Y%m%d.org")
;;(setq org-journal-file-pattern (org-journal-dir-and-format->regex
;;                                org-journal-dir org-journal-file-format))

(setq org-journal-file-pattern
      (concat (file-truename org-journal-dir)
              "\\(?1:[0-9]\\{4\\}\\)\\(?2:[0-9][0-9]\\)\\(?3:[0-9][0-9]\\).org\\(\\.gpg\\)?\\'"))

(add-to-list 'auto-mode-alist
             (cons org-journal-file-pattern 'org-journal-mode))

;; -------- Email --------

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu/mu4e")

(autoload 'mu4e "mu4e" "\
If mu4e is not running yet, start it. Then, show the main
window, unless BACKGROUND (prefix-argument) is non-nil.
" t nil)

(setq message-citation-line-format "On %d %b %Y at %R, %f wrote:\n")
(setq message-citation-line-function 'message-insert-formatted-citation-line)

(setq mu4e-attachment-dir  "~/Downloads")

(setq mu4e-html2text-command 'mu4e-shr2text)

(setq mu4e-user-mail-address-list '("mail@knazarov.com" "k.nazarov@corp.mail.ru"))

;; exlude myself from the email replies
(setq mu4e-compose-dont-reply-to-self t)

;; set mu4e as a default mail agent
(setq mail-user-agent 'mu4e-user-agent)

(setq mu4e-maildir "/Users/knazarov/Maildir")

(setq
 mu4e-view-show-images t
 mu4e-image-max-width 800
 mu4e-view-prefer-html t
 mu4e-change-filenames-when-moving t ;; prevent duplicate UIDs
 mu4e-get-mail-command "mbsync -a -q")

(setq mu4e-sent-folder "/knazarov/Sent"
      mu4e-drafts-folder "/knazarov/Drafts"
      mu4e-trash-folder "/knazarov/Trash"
      mu4e-refile-folder "/knazarov/Archive"
      user-full-name "Konstantin Nazarov"
      user-mail-address "mail@knazarov.com"
      smtpmail-default-smtp-server "smtp.fastmail.com"
      smtpmail-local-domain "knazarov.com"
      smtpmail-smtp-server "smtp.fastmail.com"
      smtpmail-stream-type 'starttls
      smtpmail-smtp-service 993
      send-mail-function 'sendmail-send-it)

(setq mu4e-compose-signature
  "<#part type=text/html><html><body><p>Hello ! I am the html signature which can contains anything in html !</p></body></html><#/part>" )

(defvar my-mu4e-account-alist
  `(("knazarov"
     (mu4e-sent-folder "/knazarov/Sent")
     (mu4e-drafts-folder "/knazarov/Drafts")
     (mu4e-trash-folder "/knazarov/Trash")
     (mu4e-refile-folder "/knazarov/Archive")
     (user-mail-address "mail@knazarov.com")
     (message-sendmail-envelope-from "mail@knazarov.com")
     (smtpmail-default-smtp-server "smtp.fastmail.com")
     (smtpmail-local-domain "knazarov.com")
     (smtpmail-smtp-user "mail@knazarov.com")
     (smtpmail-smtp-server "smtp.fastmail.com")
     (smtpmail-stream-type starttls)
     (smtpmail-smtp-service 587)
     ;;(mu4e-compose-signature-auto-include nil)
     (mu4e-compose-signature ,(with-temp-buffer
                                     (insert-file-contents "~/.mail-sig.txt")
                                     (buffer-string)))
     (message-signature-file "~/.mail-sig.txt")
     (message-cite-reply-position above)
     (message-cite-style message-cite-style-outlook))
    ("mailru"
     (mu4e-sent-folder "/mailru/Sent")
     (mu4e-drafts-folder "/mailru/Drafts")
     (mu4e-trash-folder "/mailru/Trash")
     (mu4e-refile-folder "/mailru/Archive")
     (user-mail-address "k.nazarov@corp.mail.ru")
     (message-sendmail-envelope-from "k.nazarov@corp.mail.ru")
     (smtpmail-default-smtp-server "smtp.mail.ru")
     (smtpmail-local-domain "corp.mail.ru")
     (smtpmail-smtp-user "k.nazarov@corp.mail.ru")
     (smtpmail-smtp-server "smtp.mail.ru")
     (smtpmail-stream-type starttls)
     (smtpmail-smtp-service 587)
     (mu4e-compose-signature-auto-include nil)
     (message-signature-file "~/.mail-sig.txt")
     (mu4e-compose-signature ,(with-temp-buffer
                                     (insert-file-contents "~/.mail-sig.txt")
                                     (buffer-string)))
     (message-cite-reply-position above)
     (message-cite-style message-cite-style-outlook))
    ))

(defun my-mu4e-set-account ()
  "Set the account for composing a message."
  (let* ((account
          (if mu4e-compose-parent-message
              (let ((maildir (mu4e-message-field mu4e-compose-parent-message :maildir)))
                (string-match "/\\(.*?\\)/" maildir)
                (match-string 1 maildir))
            (completing-read (format "Compose with account: (%s) "
                                     (mapconcat #'(lambda (var) (car var))
                                                my-mu4e-account-alist "/"))
                             (mapcar #'(lambda (var) (car var)) my-mu4e-account-alist)
                             nil t nil nil (caar my-mu4e-account-alist))))
         (account-vars (cdr (assoc account my-mu4e-account-alist))))
    (if account-vars
        (mapc #'(lambda (var)
                  (set (car var) (cadr var)))
              account-vars)
      (error "No email account found"))))

(defun my-mu4e-refile-folder-function (msg)
  (let ((mu4e-accounts my-mu4e-account-alist)
        (current-message msg)
        (account))
    (setq account (catch 'found
                    (dolist (candidate mu4e-accounts)
                      (if (string-match (car candidate)
                                        (mu4e-message-field current-message :maildir))
                          (throw 'found candidate)
                        ))))
    (if account
        (cadr (assoc 'mu4e-refile-folder account))
      (throw 'account_not_found (mu4e-message-field current-message :maildir))
      )
    )
  )

(setq mu4e-refile-folder 'my-mu4e-refile-folder-function)

(add-hook 'mu4e-compose-pre-hook 'my-mu4e-set-account)

;; Be smart about inserting signature for either cite-reply-position used
(defun insert-signature ()
  "Insert signature where you are replying"
  ;; Do not insert if already done - needed when switching modes back/forth
  (unless (save-excursion (message-goto-signature))
    (save-excursion
      (if (eq message-cite-reply-position 'below)
          (goto-char (point-max))
        (message-goto-body))
      (insert-file-contents message-signature-file)
      (save-excursion (insert "\n-- \n")))))
(add-hook 'mu4e-compose-mode-hook 'insert-signature)

;;(add-to-list 'mu4e-bookmarks
;;             '("maildir:/mailru/INBOX"       "work inbox"     ?w))

;;(add-to-list 'mu4e-bookmarks
;;             '("maildir:/knazarov/INBOX"       "personal inbox"     ?p))

(setq mu4e-bookmarks
             '(("maildir:/knazarov/INBOX OR maildir:/mailru/INBOX"       "inbox"     ?i)))


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
(add-hook 'mu4e-compose-mode-hook #'company-mode)


;; Can't live without magit. It makes working with git sooo much easie

(global-set-key (kbd "C-x g") 'magit-status)

(setq magit-completing-read-function 'magit-ido-completing-read)


;; LSP

(defvar lsp-lua-tarantool-lsp-path nil
  "Path to language server directory.
This is the directory containing lua-lsp.")


(setq lsp-lua-tarantool-lsp-path (expand-file-name "~/dev/lua-lsp/bin/lua-lsp"))

(defun lsp-lua-tarantool--find-tarantool()
  "Get the path to tarantool."
  (cond
   ((boundp 'lsp-lua-tarantool-tarantool) lsp-lua-tarantool-tarantool)
   ((executable-find "tarantool"))
   (t nil))
  )

(defvar lsp-lua-tarantool-tarantool
  (lsp-lua-tarantool--find-tarantool)
  "Full path to tarantool executeable.
You only need to set this if tarantool is not on your path.")

(defun lsp-lua-tarantool--command-string()
  "Return the command to start the server."
  (cond
   ((boundp 'lsp-lua-tarantool-lsp-path) (list lsp-lua-tarantool-tarantool
                                          lsp-lua-tarantool-lsp-path))
   (t (error "Cound not find lsp-lua"))))

(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection 'lsp-lua-tarantool--command-string)
                  :major-modes '(lua-mode)
                  :server-id 'tarantool-lua-ls
                  :notification-handlers
                  (lsp-ht
                   ("tarantool-lsp/progressReport" 'ignore))))

(add-hook 'lua-mode-hook #'lsp)

;; vterm

(add-to-list 'load-path (expand-file-name "~/dev/emacs-libvterm/"))
(require 'vterm)
