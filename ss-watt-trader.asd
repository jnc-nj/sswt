(in-package #:cl-user)

(asdf:defsystem ss-watt-trader
    :author "Jack Nai-Chieh Chou <jacknchou@icloud.com>"
    :maintainer "Jack Nai-Chieh Chou <jacknchou@icloud.com>"
    :version "0.0.1"
    :serial t
    :components ((:file "src"))
    :depends-on (:alexandria))
