;; start package.el
(require 'package)
;; add MELPA to repository list
(add-to-list 'package-archives
			 '("melpa" . "https://melpa.org/packages/") t)
;; initialize package.el
(package-initialize)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
	("c3d4af771cbe0501d5a865656802788a9a0ff9cf10a7df704ec8b8ef69017c68" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(package-selected-packages
   (quote
	(smartparens company csharp-mode org-gcal monokai-theme org-ac spacemacs-dark monokai-emacs spacemacs-theme expand-region hungry-delete flycheck-checkbashisms flycheck-pkg-config flycheck web-mode php-mode zenburn-theme org counsel tabbar org-bullets yasnippet-snippets multiple-cursors yasnippet auto-complete try use-package usepackage which-key))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(server-start)
