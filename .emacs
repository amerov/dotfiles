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

(setq persp-state-default-file "~/.emacs.d/perspective")
(setq prefix-help-command #'embark-prefix-help-command)

(use-package embark :ensure t :bind (("C-," . embark-act)
                                     ("M-." . embark-dwim)
                                     ("C-h B" . embark-bindings)
                                     ))




;; optionally
(use-package lsp-ui :commands lsp-ui-mode :ensure t)
;; if you are helm user
;;(use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; if you are ivy user
;;(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
;;(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
;;(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; optional if you want which-key integration
(use-package which-key :ensure t)
(use-package neotree :ensure t)
(use-package yaml-mode :ensure t)

(setq consult-project-root-function projectile-project-root)
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
(global-undo-tree-mode)
(yas-global-mode 1)
(show-paren-mode t)
;;(show-trailing-whitespace t)
;;(tab-width 4)
(tool-bar-mode -1)
(projectile-mode t)
(delete-selection-mode t)
(smartparens-global-mode t)
;; (global-linum-mode t)
(save-place-mode t)
(ido-mode t)
(tool-bar-mode -1)
(set-input-method "russian-computer")
(electric-indent-mode +1)
(ido-everywhere t)
(icomplete-mode t)
(recentf-mode t)
(global-diff-hl-mode t)
(which-key-mode t)
(selectrum-mode t)
(selectrum-prescient-mode +1)
(prescient-persist-mode +1)
(electric-indent-mode t)
;(desktop-save-mode t)
(super-save-mode t)
;(auto-save-mode nil)
(persp-mode t)
(setq persp-state-default-file "~/.emacs.d/perspective")
(setq x-select-enable-clipboard t)
(setq ns-pop-up-frames nil)
(setq-default indent-tabs-mode nil)
(setq ido-auto-merge-work-directories-length -1)
(setq inhibit-startup-message t)
(setq org-directory "~/Dropbox/orgfiles/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-startup-indented t)
(setq org-src-fontify-natively t)

(setq frame-title-format
    '(""
      "%b"
      (:eval
       (let ((project-name (projectile-project-name)))
         (unless (string= "-" project-name)
           (format " in [%s]" project-name))))))

(setq diff-hl-show-staged-changes nil)
(setq flycheck-check-syntax-automatically '(mode-enabled save))
(setq company-auto-commit nil)
;(add-to-list 'flycheck-disabled-checkers 'ruby-reek)

(setq-default flycheck-disabled-checkers '(ruby-reek))

;; Hooks
(add-hook 'kill-emacs-hook #'persp-state-save)
(add-hook 'magit-pre-refresh-hook 'diff-hl-magit-pre-refresh)
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)

(add-hook 'ruby-mode-hook
  (lambda ()
    (setq-local flycheck-command-wrapper-function
                (lambda (command) (append '("bundle" "exec") command)))))

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
(global-set-key (kbd "M-g w") 'avy-goto-word-1)

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

;; (load-theme 'zenburn t)

(fset 'yes-or-no-p 'y-or-n-p)

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

(setq show-trailing-whitespace t)
(setq set-mark-command-repeat-pop t)
(set-register ?E '(file . "~/.emacs"))


;;(setq desktop-path '("." "~/.emacs.d/" "~"))

;(add-to-list 'desktop-globals-to-save 'register-alist)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("8146edab0de2007a99a2361041015331af706e7907de9d6a330a3493a541e5a6" "246a9596178bb806c5f41e5b571546bb6e0f4bd41a9da0df5dfbca7ec6e2250c" "613aedadd3b9e2554f39afe760708fc3285bf594f6447822dd29f947f0775d6c" "835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" "b0e446b48d03c5053af28908168262c3e5335dcad3317215d9fdeb8bac5bacf9" "9b54ba84f245a59af31f90bc78ed1240fca2f5a93f667ed54bbf6c6d71f664ac" "1d5e33500bc9548f800f9e248b57d1b2a9ecde79cb40c0b1398dec51ee820daf" "1704976a1797342a1b4ea7a75bdbb3be1569f4619134341bd5a4c1cfb16abad4" "3b8284e207ff93dfc5e5ada8b7b00a3305351a3fb222782d8033a400a48eca48" default))
 '(package-selected-packages
   '(embark-mode embark-consult embark doom-themes perspective rvm neotree yaml-mode projectile-ripgrep company-web company-box lsp-ui lsp-mode selectrum-prescient prescient selectrum consult avy rspec-mode which-key diff-hl vterm exec-path-from-shell zenburn-theme yasnippet-snippets web-mode vue-mode use-package undo-tree super-save smartparens projectile markdown-mode magit flycheck dumb-jump crux company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)
