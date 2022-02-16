;; .emacs.d/init.el
;;https://realpython.com/emacs-the-best-python-editor/
;; ===================================
;; MELPA Package Support
;; ===================================
;; Enables basic packaging support
(require 'package)

;; Adds the Melpa archive to the list of available repositories
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

;; Initializes the package infrastructure
(package-initialize)

(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

;; If there are no archived package contents, refresh them
(when (not package-archive-contents)
  (package-refresh-contents))
  
;; plugin python-config
(load-file "~/.emacs.d/python-config.el")

;; plugin markdown-config
(load-file "~/.emacs.d/markdown-config.el")

;; plugin translate-config
(load-file "~/.emacs.d/translate-config.el")

;; plugin jfconfig
(load-file "~/.emacs.d/jfconfig.el")

;; plugin jfmenu
(load-file "~/.emacs.d/jfmenu.el")

;; plugin jpython-config
(load-file "~/.emacs.d/jpython-config.el")

;;End user

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (use-package flycheck))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
