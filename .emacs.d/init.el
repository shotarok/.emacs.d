(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get-bundle tarao/with-eval-after-load-feature-el)

(el-get-bundle init-loader)
(init-loader-load "~/.emacs.d/init-loader-scripts")

(el-get-bundle tarao/el-get-lock)
(el-get-lock)
