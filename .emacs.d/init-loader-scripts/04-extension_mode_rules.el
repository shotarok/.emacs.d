(add-to-list 'auto-mode-alist
             '("\\.hql$" . (lambda () (sql-mode) (sql-highlight-mysql-keywords))))

(require 'cmake-mode); Add cmake listfile names to the mode list.
(setq auto-mode-alist
      (append
       '(("CMakeLists\\.txt\\'" . cmake-mode))
       '(("\\.cmake\\'" . cmake-mode))
       auto-mode-alist))

(add-to-list 'auto-mode-alist
             '("\\.t\\'" . perl-mode))
