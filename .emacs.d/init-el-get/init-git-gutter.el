;; ref. https://github.com/syohex/emacs-git-gutter/blob/master/README.md
(require 'git-gutter)

(global-git-gutter-mode t)

;; Jump to next/previous hunk
(global-set-key (kbd "C-x p") 'git-gutter:previous-hunk)
(global-set-key (kbd "C-x n") 'git-gutter:next-hunk)

(custom-set-variables
 '(git-gutter:modified-sign "  ") ;; two space
 '(git-gutter:added-sign "++")    ;; multiple character is OK
 '(git-gutter:deleted-sign "--"))

(set-face-background 'git-gutter:modified "purple") ;; background color
(set-face-foreground 'git-gutter:added "green")
(set-face-foreground 'git-gutter:deleted "red")

(custom-set-variables
 '(git-gutter:separator-sign "|")
 '(git-gutter:always-show-separator t))
(set-face-foreground 'git-gutter:separator "white")
