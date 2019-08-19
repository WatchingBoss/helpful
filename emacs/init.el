;; start package.el
(require 'package)

;; add repository list
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
;; initialize package.el
(package-initialize)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Need it?
;;(use-package org-tempo)

;; Org-mode
(use-package org :ensure t)

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(server-start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(htmlize jsonrpc eglot company-quickhelp helm-flx company-statistics helm-system-packages helm-descbinds flx helm-swoop org-bullets flycheck emmet-mode yasnippet-snippets yasnippet company rg ox-hugo ox-pandoc markdown-mode glsl-mode go-mode rust-mode csharp-mode clang-format smartparens expand-region hungry-delete multiple-cursors reverse-im treemacs-magit treemacs-icons-dired treemacs-projectile treemacs helm-ls-git which-key monokai-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
