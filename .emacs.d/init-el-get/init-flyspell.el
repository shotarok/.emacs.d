;; spell check from "yutoichinoheの日記 2014-01-20 flyspell-modeでEmacsでもスペルチェック"
;; ref. http://d.hatena.ne.jp/yutoichinohe/20140120/1390225624
(setq-default ispell-program-name "aspell")
(global-set-key (kbd "<f12>") 'flyspell-mode)
(global-set-key (kbd "<f10>") 'flyspell-buffer)
(global-set-key (kbd "<f9>") 'ispell-word)
(mapc
 (lambda (hook) (add-hook hook '(lambda () (flyspell-mode 1))))
 '(c++-mode
   perl-mode
   cperl-mode)
)
