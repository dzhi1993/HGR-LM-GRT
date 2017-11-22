
(cl:in-package :asdf)

(defsystem "my_leapmotion-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ResetCalibration" :depends-on ("_package_ResetCalibration"))
    (:file "_package_ResetCalibration" :depends-on ("_package"))
  ))