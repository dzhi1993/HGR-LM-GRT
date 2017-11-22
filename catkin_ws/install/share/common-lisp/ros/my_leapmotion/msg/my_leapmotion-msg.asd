
(cl:in-package :asdf)

(defsystem "my_leapmotion-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LeapPointable" :depends-on ("_package_LeapPointable"))
    (:file "_package_LeapPointable" :depends-on ("_package"))
    (:file "LeapFrame" :depends-on ("_package_LeapFrame"))
    (:file "_package_LeapFrame" :depends-on ("_package"))
    (:file "LeapHand" :depends-on ("_package_LeapHand"))
    (:file "_package_LeapHand" :depends-on ("_package"))
    (:file "LeapGesture" :depends-on ("_package_LeapGesture"))
    (:file "_package_LeapGesture" :depends-on ("_package"))
  ))