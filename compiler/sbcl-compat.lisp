(defpackage #:system (:export #:lambda-name))
(in-package #:system.compiler)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (shadow '(macro-function compiler-macro-function)))
(defun proclaimed-special-p (symbol)
  (sb-cltl2:variable-information symbol))
(import 'sb-cltl2:variable-information)
(define-condition simple-style-warning (style-warning simple-condition)
  ())
(defun macro-function (symbol &optional env)
  (declare (ignore env))
  (cl:macro-function symbol))
(defun symbol-macro-function (symbol &optional env)
  (declare (ignore symbol env))
  nil)
(defun compiler-macro-function (symbol &optional env)
  (declare (ignore symbol env))
  nil)
