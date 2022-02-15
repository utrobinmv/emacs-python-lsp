;; Creating a new menu pane in the menu bar to the right of “Tools” menu
(define-key-after
  global-map
  [menu-bar jfmenu]
  (cons "MyMenu" (make-sparse-keymap "hoot hoot"))
  'tools )

(define-key
  global-map
  [menu-bar jfmenu file]
  (cons "File" (make-sparse-keymap "")))

(define-key
  global-map
  [menu-bar jfmenu file newfile]
  '("New File" . new-empty-buffer))

(define-key
  global-map
  [menu-bar jfmenu file newwindow]
  '("New Window" . make-frame-command))

(define-key
  global-map
  [menu-bar jfmenu file openfile]
  '("Open File" . ido-find-file))

(define-key
  global-map
  [menu-bar jfmenu file closebuffer]
  '("Close" . close-current-buffer))

(define-key
  global-map
  [menu-bar jfmenu file savefile]
  '("Save" . save-buffer))

(define-key
  global-map
  [menu-bar jfmenu file savefileas]
  '("Save as..." . ido-write-file))

(define-key
  global-map
  [menu-bar jfmenu file exit]
  '("Exit" . save-buffers-kill-terminal))

(define-key
  global-map
  [menu-bar jfmenu edit]
  (cons "Edit" (make-sparse-keymap "")))

(define-key
  global-map
  [menu-bar jfmenu edit undo]
  '("Undo\\Redo" . undo))

(define-key
  global-map
  [menu-bar jfmenu edit cut]
  '("Cut" . kill-region))

(define-key
  global-map
  [menu-bar jfmenu edit copy]
  '("Copy" . kill-ring-save))

(define-key
  global-map
  [menu-bar jfmenu edit paste]
  '("Paste" . yank))

(define-key
  global-map
  [menu-bar jfmenu edit selectall]
  '("Select All" . mark-whole-buffer))

(define-key
  global-map
  [menu-bar jfmenu edit selectstart]
  '("Select Mark" . set-mark-command))

(define-key
  global-map
  [menu-bar jfmenu edit find]
  '("Find" . isearch-forward))

(define-key
  global-map
  [menu-bar jfmenu edit replace]
  '("Replace" . query-replace))

(define-key
  global-map
  [menu-bar jfmenu view]
  (cons "View" (make-sparse-keymap "")))

(define-key
  global-map
  [menu-bar jfmenu view newwindowbelow]
  '("New Window Below" . split-window-below))

(define-key
  global-map
  [menu-bar jfmenu view newwindowright]
  '("New Window Right" . split-window-right))

(define-key
  global-map
  [menu-bar jfmenu view closeotherwindows]
  '("Close Other Windows" . delete-other-windows))

(define-key
  global-map
  [menu-bar jfmenu view closewindow]
  '("Close Action Window" . delete-window))

(define-key
  global-map
  [menu-bar jfmenu view nextwindow]
  '("Next Window" . other-window))

(define-key
  global-map
  [menu-bar jfmenu view nextbuffer]
  '("Next Buffer" . next-buffer))

(define-key
  global-map
  [menu-bar jfmenu view previousbuffer]
  '("Previous Buffer" . previous-buffer))

(define-key
  global-map
  [menu-bar jfmenu view browse-url-at-point]
  '("EWW browse url at point" . browse-url-at-point))

(define-key
  global-map
  [menu-bar jfmenu view savesession]
  '("Save session" . (desktop-save-mode t)))

(define-key
  global-map
  [menu-bar jfmenu view go-translate]
  '("Google translate" . go-translate))

(define-key
  global-map
  [menu-bar jfmenu view go-translate-popup]
  '("Google translate popup" . go-translate-popup))



;; code to remove the whole menu panel
;; (global-unset-key [menu-bar mymenu])
