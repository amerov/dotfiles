(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(use-package magit :ensure t)
(use-package super-save
  :ensure t
  :config
  (super-save-mode +1))
(use-package crux :ensure t)
;;(use-package dash :ensure t)
(use-package company :ensure t)
(use-package dumb-jump :ensure t)
(use-package web-mode :ensure t)
(use-package smartparens :ensure t)
(use-package flycheck :ensure t)
(use-package projectile :ensure t)
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

;; (use-package emmet-mode :ensure t)
(use-package rspec-mode :ensure t)
(use-package highlight-thing :ensure t)
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
(use-package which-key
    :config
    (which-key-mode))


;; Always load newest byte code
(setq load-prefer-newer t)

;; reduce the frequency of garbage collection by making it happen on
;; each 50MB of allocated data (the default is on every 0.76MB)
(setq gc-cons-threshold 50000000)

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

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
(recentf-mode t)
(delete-selection-mode t)
(smartparens-global-mode t)
(global-linum-mode t)
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
;; (global-highlight-thing-mode t)
(selectrum-mode t)
(selectrum-prescient-mode +1)
(prescient-persist-mode +1)

(setq x-select-enable-clipboard t)
(setq ns-pop-up-frames nil)
(setq-default indent-tabs-mode nil)
(setq ido-auto-merge-work-directories-length -1)
(setq inhibit-startup-message t)
(setq org-directory "~/Dropbox/orgfiles/org")
(setq org-startup-indented t)
(setq org-src-fontify-natively t)

;; Hooks
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
;; (eval-after-load 'js-mode
;;   '(add-hook 'js-mode-hook #'add-node-modules-path))
;; (eval-after-load 'web-mode
;;   '(add-hook 'js-mode-hook #'add-node-modules-path))
;; (eval-after-load 'vue-mode
;;   '(add-hook 'js-mode-hook #'add-node-modules-path))
;; ;; end Hooks

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

(defconst y-or-n-p-ret-yes-map
  (let ((map (make-sparse-keymap)))
    (set-keymap-parent map y-or-n-p-map)
    (define-key map [return] 'act)
    map)
  "A keymap for y-or-n-p with RET meaning \"yes\".")

;; this asks a y/n question with RET meaning "yes"
;;(let ((y-or-n-p-map y-or-n-p-ret-yes-map))
 ;; (y-or-n-p "yes or no? "))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("3b8284e207ff93dfc5e5ada8b7b00a3305351a3fb222782d8033a400a48eca48" default))
 '(package-selected-packages
   '(poly-erb company-web company-box lsp-ui lsp-mode polymode add-node-modules-path selectrum-prescient prescient selectrum consult avy highlight-thing rspec-mode which-key diff-hl vterm exec-path-from-shell zenburn-theme yasnippet-snippets web-mode vue-mode use-package undo-tree super-save smartparens projectile markdown-mode magit flycheck dumb-jump crux company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
