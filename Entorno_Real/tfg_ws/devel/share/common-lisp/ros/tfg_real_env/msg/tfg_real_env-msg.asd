
(cl:in-package :asdf)

(defsystem "tfg_real_env-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "obsmsg" :depends-on ("_package_obsmsg"))
    (:file "_package_obsmsg" :depends-on ("_package"))
  ))