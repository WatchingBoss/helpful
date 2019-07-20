;; start package.el
(require 'package)

;; add repository list
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/" ) t)

;; initialize package.el
(package-initialize)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;(use-package org-tempo)
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
	(spinner lsp-mode clang-format org-ac yasnippet-snippets which-key use-package smartparens rust-mode neotree multiple-cursors monokai-theme monokai-pro-theme markdown-mode hungry-delete helm-swoop helm-ls-git go-mode glsl-mode flycheck expand-region emmet-mode csharp-mode company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
