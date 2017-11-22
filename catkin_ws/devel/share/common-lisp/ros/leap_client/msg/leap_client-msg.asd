
(cl:in-package :asdf)

(defsystem "leap_client-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "HandInfoList" :depends-on ("_package_HandInfoList"))
    (:file "_package_HandInfoList" :depends-on ("_package"))
    (:file "HandInfo" :depends-on ("_package_HandInfo"))
    (:file "_package_HandInfo" :depends-on ("_package"))
    (:file "FingerInfo" :depends-on ("_package_FingerInfo"))
    (:file "_package_FingerInfo" :depends-on ("_package"))
    (:file "HandInfoList" :depends-on ("_package_HandInfoList"))
    (:file "_package_HandInfoList" :depends-on ("_package"))
    (:file "HandInfo" :depends-on ("_package_HandInfo"))
    (:file "_package_HandInfo" :depends-on ("_package"))
    (:file "FingerInfo" :depends-on ("_package_FingerInfo"))
    (:file "_package_FingerInfo" :depends-on ("_package"))
  ))