(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(use-package magit :ensure t)
(use-package super-save
  :ensure t)
(use-package crux :ensure t)
;;(use-package dash :ensure t)
(use-package company :ensure t)
(use-package dumb-jump :ensure t)
(use-package web-mode :ensure t)
(use-package smartparens :ensure t)
(use-package flycheck :ensure t)
(use-package projectile :ensure t)
(use-package projectile-ripgrep :ensure t)
(use-package undo-tree :ensure t)
(use-package yasnippet :ensure t)
(use-package yasnippet-snippets :ensure t)
(use-package mmm-mode :ensure t)
(use-package zenburn-theme :ensure t)
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))
(use-package exec-path-from-shell :ensure t)
(use-package vterm
  :ensure t)
(use-package diff-hl :ensure t)

(use-package rspec-mode :ensure t)
(use-package avy :ensure t)
(use-package prescient :ensure t)
(use-package selectrum-prescient :ensure t)
(use-package selectrum :ensure t)
;;(use-package add-node-modules-path :ensure t)

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         ;; (vue-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp :ensure t)

;;(setq persp-state-default-file "~/.emacs.d/perspective")
(setq prefix-help-command #'embark-prefix-help-command)

(use-package embark :ensure t :bind (("C-;" . embark-act)
                                     ("M-." . embark-dwim)
                                     ("C-h B" . embark-bindings)
                                     ))

;; optionally
(use-package lsp-ui :commands lsp-ui-mode :ensure t)

;; optional if you want which-key integration
(use-package which-key :ensure t)

(use-package neotree :ensure t)
(use-package yaml-mode :ensure t)
(use-package org :ensure t)
(use-package org-download
  :ensure t
  :config
  ;; add support to dired
  (add-hook 'dired-mode-hook 'org-download-enable))
(use-package org-cliplink :ensure t)
(use-package evil :ensure t)
(use-package evil-surround :ensure t)
(use-package deadgrep :ensure t)
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
(setq dashboard-items '((recents  . 10)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 10)
                        (registers . 5)))

(global-set-key (kbd "<f5>") #'deadgrep)
;; (use-package evil-org
;;   :ensure t
;;   :after org
;;   :hook (org-mode . (lambda () evil-org-mode))
;;   :config
;;   (require 'evil-org-agenda)
;;   (evil-org-agenda-set-keys))

;;(autoload 'projectile-project-root "projectile")
;;(setq consult-project-root-function projectile-project-root)
(setq consult-project-root-function #'vc-root-dir)
;; Always load newest byte code
(setq load-prefer-newer t)
;; reduce the frequency of garbage collection by making it happen on
;; each 50MB of allocated data (the default is on every 0.76MB)
(setq gc-cons-threshold 50000000)

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)
;;(desktop-change-dir default-directory)

(scroll-bar-mode -1)
(global-hl-line-mode t)
(global-auto-revert-mode 1)
(global-flycheck-mode t)
(global-undo-tree-mode t)
(yas-global-mode 1)
(show-paren-mode t)

;;(tab-width 4)

(projectile-mode t)
(delete-selection-mode t)
;; (smartparens-global-mode t)
;; (global-linum-mode t)
(save-place-mode t)
;;(ido-mode t)
(tool-bar-mode -1)
(set-input-method "russian-computer")
(electric-indent-mode +1)

;;(fido-mode 1)
(recentf-mode t)
(savehist-mode t)
(global-diff-hl-mode t)
(which-key-mode t)
(selectrum-mode t)
(selectrum-prescient-mode +1)
(prescient-persist-mode +1)
;(desktop-save-mode t)
(super-save-mode t)


(setq x-select-enable-clipboard t)
(setq ns-pop-up-frames nil)
(setq-default indent-tabs-mode nil)

(setq inhibit-startup-message t)
(setq org-directory "~/Dropbox/orgfiles/org")
(setq org-default-notes-file (concat org-directory "/todo.org"))
(setq org-capture-templates
      '(("t" "Todo"  entry
               (file "~/Dropbox/orgfiles/org/todo.org")
               "* TODO %?" :empty-lines 0)
        ("n" "Note"  entry
               (file "~/Dropbox/orgfiles/org/notes.org")
               "* %?%u" :empty-lines 0)
        ("w" "Work"  entry
               (file "~/Dropbox/orgfiles/org/work.org")
               "* %?" :empty-lines 0)
        ("i" "Idea"  entry
               (file "~/Dropbox/orgfiles/org/ideas.org")
               "* %?" :empty-lines 0)
        ("m" "Maybe"  entry
               (file "~/Dropbox/orgfiles/org/maybe.org")
               "* %?" :empty-lines 0)
        ("e" "English words"  entry
               (file "~/Dropbox/orgfiles/org/english.words.org")
               "* %?" :empty-lines 0)
        ))

;; (add-to-list 'org-capture-templates
;;              '("n" "Note"  entry
;;                (file "~/Dropbox/orgfiles/org/notes.org")
;;                "* %?" :empty-lines 1))

;; (add-to-list 'org-capture-templates
;;              '("t" "Task"  entry
;;                (file "~/Dropbox/orgfiles/org/todo.org")
;;                "* TODO %?" :empty-lines 1))

(setq org-startup-indented t)
(setq org-src-fontify-natively t)
(setq org-agenda-start-with-log-mode t)
(setq org-log-done 'time)
(setq org-startup-folded t)
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(setq org-roam-directory "~/Dropbox/orgfiles/roam")

(setq-default org-download-image-dir "~/Dropbox/orgfiles/org/.attach")
;;(require 'org-download)
(setq org-agenda-files '("~/Dropbox/orgfiles/org"))
(setq org-todo-keywords '((sequence "TODO(t)" "DOING(o)" "WAIT(w)" "|" "DONE(d)")))

(setq frame-title-format
    '(""
      "%b"
      (:eval
       (let ((project-name (projectile-project-name)))
         (unless (string= "-" project-name)
           (format " in [%s]" project-name))))))

(setq diff-hl-show-staged-changes nil)
;;(setq flycheck-check-syntax-automatically '(mode-enabled save))
(setq company-auto-commit nil)

(setq-default flycheck-disabled-checkers '(ruby-reek))

;; Hooks
;(add-hook 'kill-emacs-hook #'persp-state-save)
(add-hook 'magit-pre-refresh-hook 'diff-hl-magit-pre-refresh)
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)

(add-hook 'ruby-mode-hook
          (lambda () projectile-project-root
            (setq-local flycheck-command-wrapper-function
                        (lambda (command) (append '("bundle" "exec") command)))))

(flycheck-add-mode 'javascript-eslint 'vue-mode)
(flycheck-add-mode 'javascript-eslint 'vue-html-mode)
;;(flycheck-add-mode 'javascript-eslint 'css-mode)
;;(flycheck-add-mode 'javascript-eslint 'web-mode)
;;(add-hook 'vue-mode-hook 'flycheck-mode)


(add-hook 'xref-backend-functions #'dumb-jump-xref-activate)
(add-hook 'after-init-hook 'global-company-mode)

(eval-after-load 'rspec-mode
 '(rspec-install-snippets))

(setq web-mode-content-types-alist
  '(("jsx" . "\\.js[x]?\\'")))

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))

(setq web-mode-script-padding 0)

(setq-default
 web-mode-code-indent-offset 2
 web-mode-markup-indent-offset 2
 web-mode-enable-current-element-highlight t
 )

;; Custom functions

;; begin Hotkeys
(global-set-key (kbd "C-:") 'avy-goto-char)
(global-set-key (kbd "C-,") 'ibuffer)
;;(global-set-key (kbd "M-g w") 'avy-goto-word-1)

;; end Hotkeys

;; TODO: extract
(defun my/copy-file-name-to-clipboard ()
  "Copy the current buffer file name to the clipboard."
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (buffer-file-name))))
    (when filename
      (kill-new filename)
      (message "Copied buffer file name '%s' to the clipboard." filename))))

(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint
          (and root
               (expand-file-name "node_modules/.bin/eslint"
                                 root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))

(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)

;; (flycheck-add-mode 'javascript-eslint 'web-mode)

;; (defun my/configure-web-mode-flycheck-checkers ()
;;   ;; in order to have flycheck enabled in web-mode, add an entry to this
;;   ;; cond that matches the web-mode engine/content-type/etc and returns the
;;   ;; appropriate checker.
;;   (-when-let (checker (cond
;;                        ((string= web-mode-content-type "vue")
;;                         'javascript-eslint)))
;;     (flycheck-mode)
;;     (flycheck-select-checker checker)))

;; (add-hook 'web-mode-hook #'my/configure-web-mode-flycheck-checkers)


;(load-theme 'zenburn t)
;; (load-theme 'doom-one-light t)
;; (load-theme 'doom-gruvbox t)
(fset 'yes-or-no-p 'y-or-n-p)

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

(setq show-trailing-whitespace 1)
(setq set-mark-command-repeat-pop t)
(set-register ?E '(file . "~/.emacs"))

;;(setq desktop-path '("." "~/.emacs.d/" "~"))

;(add-to-list 'desktop-globals-to-save 'register-alist)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#222222" "#d7d5d1" "#d7d5d1" "#d7d5d1" "#d7d5d1" "#d7d5d1" "#d7d5d1" "#d7d5d1"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-safe-themes
   '("e19ac4ef0f028f503b1ccafa7c337021834ce0d1a2bca03fcebc1ef635776bea" "d268b67e0935b9ebc427cad88ded41e875abfcc27abd409726a92e55459e0d01" "e6f3a4a582ffb5de0471c9b640a5f0212ccf258a987ba421ae2659f1eaa39b09" "5784d048e5a985627520beb8a101561b502a191b52fa401139f4dd20acb07607" "7eea50883f10e5c6ad6f81e153c640b3a288cd8dc1d26e4696f7d40f754cc703" "745d03d647c4b118f671c49214420639cb3af7152e81f132478ed1c649d4597d" "f7fed1aadf1967523c120c4c82ea48442a51ac65074ba544a5aefc5af490893b" "234dbb732ef054b109a9e5ee5b499632c63cc24f7c2383a849815dacc1727cb6" "d6844d1e698d76ef048a53cefe713dbbe3af43a1362de81cdd3aefa3711eae0d" "846b3dc12d774794861d81d7d2dcdb9645f82423565bfb4dad01204fa322dbd5" "c2aeb1bd4aa80f1e4f95746bda040aafb78b1808de07d340007ba898efa484f5" "8146edab0de2007a99a2361041015331af706e7907de9d6a330a3493a541e5a6" "246a9596178bb806c5f41e5b571546bb6e0f4bd41a9da0df5dfbca7ec6e2250c" "613aedadd3b9e2554f39afe760708fc3285bf594f6447822dd29f947f0775d6c" "835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" "b0e446b48d03c5053af28908168262c3e5335dcad3317215d9fdeb8bac5bacf9" "9b54ba84f245a59af31f90bc78ed1240fca2f5a93f667ed54bbf6c6d71f664ac" "1d5e33500bc9548f800f9e248b57d1b2a9ecde79cb40c0b1398dec51ee820daf" "1704976a1797342a1b4ea7a75bdbb3be1569f4619134341bd5a4c1cfb16abad4" "3b8284e207ff93dfc5e5ada8b7b00a3305351a3fb222782d8033a400a48eca48" default))
 '(exwm-floating-border-color "#d7d5d1")
 '(fci-rule-color "#545053")
 '(highlight-tail-colors ((("#343333") . 0) (("#343333") . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#838083" "#bbbbbb"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#838083" "#d7d5d1"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#838083" "#d7d5d1"))
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(objed-cursor-color "#d7d5d1")
 '(package-selected-packages
   '(dashboard deadgrep evil-mode evil-surround evil-org evil org-cliplink org-download embark-mode embark-consult embark doom-themes perspective rvm neotree yaml-mode projectile-ripgrep company-web company-box lsp-ui lsp-mode selectrum-prescient prescient selectrum consult avy rspec-mode which-key diff-hl vterm exec-path-from-shell zenburn-theme yasnippet-snippets web-mode vue-mode use-package undo-tree super-save smartparens projectile markdown-mode magit flycheck dumb-jump crux company))
 '(pdf-view-midnight-colors (cons "#d7d5d1" "#222222"))
 '(rustic-ansi-faces
   ["#222222" "#d7d5d1" "#d7d5d1" "#d7d5d1" "#d7d5d1" "#d7d5d1" "#d7d5d1" "#d7d5d1"])
 '(tool-bar-mode nil)
 '(tool-bar-position 'top)
 '(vc-annotate-background "#222222")
 '(vc-annotate-color-map
   (list
    (cons 20 "#d7d5d1")
    (cons 40 "#d7d5d1")
    (cons 60 "#d7d5d1")
    (cons 80 "#d7d5d1")
    (cons 100 "#d7d5d1")
    (cons 120 "#d7d5d1")
    (cons 140 "#d7d5d1")
    (cons 160 "#d7d5d1")
    (cons 180 "#d7d5d1")
    (cons 200 "#d7d5d1")
    (cons 220 "#d7d5d1")
    (cons 240 "#d7d5d1")
    (cons 260 "#d7d5d1")
    (cons 280 "#d7d5d1")
    (cons 300 "#d7d5d1")
    (cons 320 "#d7d5d1")
    (cons 340 "#545053")
    (cons 360 "#545053")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)
