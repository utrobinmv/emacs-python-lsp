;;add handup go-translate-v1
(add-to-list 'load-path "~/.emacs.d/go-translate")
(require 'go-translate-v1)

(setq go-translate-local-language "en")
(setq go-translate-target-language "ru")

(global-set-key "\C-ct" 'go-translate)
(global-set-key "\C-cT" 'go-translate-popup)

(setq go-translate-token-current (cons 430675 2721866130))
