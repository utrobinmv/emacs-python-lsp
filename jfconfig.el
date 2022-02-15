;;my config

;; material-theme 
(use-package material-theme
  :ensure t
  :defer t)

(load-theme 'material t)

;;jf settings
(setq make-backup-files         nil) ; Don't want any backup files
(setq auto-save-list-file-name  nil) ; Don't want any .saves files
(setq auto-save-default         nil) ; Don't want any auto saving


;;eww для ссылок под курсором
(global-set-key (kbd "C-x m") 'browse-url-at-point)

;;Говорит что сайт github открывать во внешнем браузере все остальные ссылки во внутреннем
(setq browse-url-browser-function
    '((".*google.*maps.*" . browse-url-generic)
      ;; Github goes to firefox, but not gist
      ("http.*\/\/github.com" . browse-url-generic)
      ("." . eww-browse-url)))
(setq browse-url-generic-program (executable-find "flashpeak-slimjet"))      

;удобный скроллинг и выделение текущей строки. по умолчанию emacs прокручивает почти на половину экрана, что крайне не удобно. исправим это. и еще бывает что теряешь место курсора, для этого включаем подсветку текущей строки.
(setq scroll-step 1)
;(global-hl-line-mode 1)


;; right-click-context 
(use-package right-click-context
  :ensure t
  :defer t)

(right-click-context-mode 1)

(global-set-key (kbd "<mouse-3>") 'right-click-context-menu)

(bind-key "C-c <mouse-3>" 'right-click-context-menu)
(bind-key "C-c :" 'right-click-context-menu)

;; User-Defined init.el ends here
