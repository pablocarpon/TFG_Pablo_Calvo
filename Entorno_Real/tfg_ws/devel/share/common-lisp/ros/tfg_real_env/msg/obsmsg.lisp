; Auto-generated. Do not edit!


(cl:in-package tfg_real_env-msg)


;//! \htmlinclude obsmsg.msg.html

(cl:defclass <obsmsg> (roslisp-msg-protocol:ros-message)
  ((ball_x
    :reader ball_x
    :initarg :ball_x
    :type cl:float
    :initform 0.0)
   (ball_y
    :reader ball_y
    :initarg :ball_y
    :type cl:float
    :initform 0.0)
   (ball_v_x
    :reader ball_v_x
    :initarg :ball_v_x
    :type cl:float
    :initform 0.0)
   (ball_v_y
    :reader ball_v_y
    :initarg :ball_v_y
    :type cl:float
    :initform 0.0)
   (agent_x
    :reader agent_x
    :initarg :agent_x
    :type cl:float
    :initform 0.0)
   (agent_y
    :reader agent_y
    :initarg :agent_y
    :type cl:float
    :initform 0.0)
   (agent_theta_x
    :reader agent_theta_x
    :initarg :agent_theta_x
    :type cl:float
    :initform 0.0)
   (agent_theta_y
    :reader agent_theta_y
    :initarg :agent_theta_y
    :type cl:float
    :initform 0.0)
   (agent_v_x
    :reader agent_v_x
    :initarg :agent_v_x
    :type cl:float
    :initform 0.0)
   (agent_v_y
    :reader agent_v_y
    :initarg :agent_v_y
    :type cl:float
    :initform 0.0)
   (agent_v_theta
    :reader agent_v_theta
    :initarg :agent_v_theta
    :type cl:float
    :initform 0.0)
   (rival_x
    :reader rival_x
    :initarg :rival_x
    :type cl:float
    :initform 0.0)
   (rival_y
    :reader rival_y
    :initarg :rival_y
    :type cl:float
    :initform 0.0)
   (rival_v_x
    :reader rival_v_x
    :initarg :rival_v_x
    :type cl:float
    :initform 0.0)
   (rival_v_y
    :reader rival_v_y
    :initarg :rival_v_y
    :type cl:float
    :initform 0.0)
   (rival_v_theta
    :reader rival_v_theta
    :initarg :rival_v_theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass obsmsg (<obsmsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <obsmsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'obsmsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tfg_real_env-msg:<obsmsg> is deprecated: use tfg_real_env-msg:obsmsg instead.")))

(cl:ensure-generic-function 'ball_x-val :lambda-list '(m))
(cl:defmethod ball_x-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:ball_x-val is deprecated.  Use tfg_real_env-msg:ball_x instead.")
  (ball_x m))

(cl:ensure-generic-function 'ball_y-val :lambda-list '(m))
(cl:defmethod ball_y-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:ball_y-val is deprecated.  Use tfg_real_env-msg:ball_y instead.")
  (ball_y m))

(cl:ensure-generic-function 'ball_v_x-val :lambda-list '(m))
(cl:defmethod ball_v_x-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:ball_v_x-val is deprecated.  Use tfg_real_env-msg:ball_v_x instead.")
  (ball_v_x m))

(cl:ensure-generic-function 'ball_v_y-val :lambda-list '(m))
(cl:defmethod ball_v_y-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:ball_v_y-val is deprecated.  Use tfg_real_env-msg:ball_v_y instead.")
  (ball_v_y m))

(cl:ensure-generic-function 'agent_x-val :lambda-list '(m))
(cl:defmethod agent_x-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:agent_x-val is deprecated.  Use tfg_real_env-msg:agent_x instead.")
  (agent_x m))

(cl:ensure-generic-function 'agent_y-val :lambda-list '(m))
(cl:defmethod agent_y-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:agent_y-val is deprecated.  Use tfg_real_env-msg:agent_y instead.")
  (agent_y m))

(cl:ensure-generic-function 'agent_theta_x-val :lambda-list '(m))
(cl:defmethod agent_theta_x-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:agent_theta_x-val is deprecated.  Use tfg_real_env-msg:agent_theta_x instead.")
  (agent_theta_x m))

(cl:ensure-generic-function 'agent_theta_y-val :lambda-list '(m))
(cl:defmethod agent_theta_y-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:agent_theta_y-val is deprecated.  Use tfg_real_env-msg:agent_theta_y instead.")
  (agent_theta_y m))

(cl:ensure-generic-function 'agent_v_x-val :lambda-list '(m))
(cl:defmethod agent_v_x-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:agent_v_x-val is deprecated.  Use tfg_real_env-msg:agent_v_x instead.")
  (agent_v_x m))

(cl:ensure-generic-function 'agent_v_y-val :lambda-list '(m))
(cl:defmethod agent_v_y-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:agent_v_y-val is deprecated.  Use tfg_real_env-msg:agent_v_y instead.")
  (agent_v_y m))

(cl:ensure-generic-function 'agent_v_theta-val :lambda-list '(m))
(cl:defmethod agent_v_theta-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:agent_v_theta-val is deprecated.  Use tfg_real_env-msg:agent_v_theta instead.")
  (agent_v_theta m))

(cl:ensure-generic-function 'rival_x-val :lambda-list '(m))
(cl:defmethod rival_x-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:rival_x-val is deprecated.  Use tfg_real_env-msg:rival_x instead.")
  (rival_x m))

(cl:ensure-generic-function 'rival_y-val :lambda-list '(m))
(cl:defmethod rival_y-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:rival_y-val is deprecated.  Use tfg_real_env-msg:rival_y instead.")
  (rival_y m))

(cl:ensure-generic-function 'rival_v_x-val :lambda-list '(m))
(cl:defmethod rival_v_x-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:rival_v_x-val is deprecated.  Use tfg_real_env-msg:rival_v_x instead.")
  (rival_v_x m))

(cl:ensure-generic-function 'rival_v_y-val :lambda-list '(m))
(cl:defmethod rival_v_y-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:rival_v_y-val is deprecated.  Use tfg_real_env-msg:rival_v_y instead.")
  (rival_v_y m))

(cl:ensure-generic-function 'rival_v_theta-val :lambda-list '(m))
(cl:defmethod rival_v_theta-val ((m <obsmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfg_real_env-msg:rival_v_theta-val is deprecated.  Use tfg_real_env-msg:rival_v_theta instead.")
  (rival_v_theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <obsmsg>) ostream)
  "Serializes a message object of type '<obsmsg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ball_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ball_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ball_v_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ball_v_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'agent_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'agent_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'agent_theta_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'agent_theta_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'agent_v_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'agent_v_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'agent_v_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rival_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rival_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rival_v_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rival_v_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rival_v_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <obsmsg>) istream)
  "Deserializes a message object of type '<obsmsg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ball_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ball_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ball_v_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ball_v_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'agent_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'agent_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'agent_theta_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'agent_theta_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'agent_v_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'agent_v_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'agent_v_theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rival_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rival_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rival_v_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rival_v_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rival_v_theta) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<obsmsg>)))
  "Returns string type for a message object of type '<obsmsg>"
  "tfg_real_env/obsmsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'obsmsg)))
  "Returns string type for a message object of type 'obsmsg"
  "tfg_real_env/obsmsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<obsmsg>)))
  "Returns md5sum for a message object of type '<obsmsg>"
  "13d67f0b2acaa52762a3605ec7346fdb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'obsmsg)))
  "Returns md5sum for a message object of type 'obsmsg"
  "13d67f0b2acaa52762a3605ec7346fdb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<obsmsg>)))
  "Returns full string definition for message of type '<obsmsg>"
  (cl:format cl:nil "float32 ball_x~%float32 ball_y~%float32 ball_v_x~%float32 ball_v_y~%float32 agent_x~%float32 agent_y~%float32 agent_theta_x~%float32 agent_theta_y~%float32 agent_v_x~%float32 agent_v_y~%float32 agent_v_theta~%float32 rival_x~%float32 rival_y~%float32 rival_v_x~%float32 rival_v_y~%float32 rival_v_theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'obsmsg)))
  "Returns full string definition for message of type 'obsmsg"
  (cl:format cl:nil "float32 ball_x~%float32 ball_y~%float32 ball_v_x~%float32 ball_v_y~%float32 agent_x~%float32 agent_y~%float32 agent_theta_x~%float32 agent_theta_y~%float32 agent_v_x~%float32 agent_v_y~%float32 agent_v_theta~%float32 rival_x~%float32 rival_y~%float32 rival_v_x~%float32 rival_v_y~%float32 rival_v_theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <obsmsg>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <obsmsg>))
  "Converts a ROS message object to a list"
  (cl:list 'obsmsg
    (cl:cons ':ball_x (ball_x msg))
    (cl:cons ':ball_y (ball_y msg))
    (cl:cons ':ball_v_x (ball_v_x msg))
    (cl:cons ':ball_v_y (ball_v_y msg))
    (cl:cons ':agent_x (agent_x msg))
    (cl:cons ':agent_y (agent_y msg))
    (cl:cons ':agent_theta_x (agent_theta_x msg))
    (cl:cons ':agent_theta_y (agent_theta_y msg))
    (cl:cons ':agent_v_x (agent_v_x msg))
    (cl:cons ':agent_v_y (agent_v_y msg))
    (cl:cons ':agent_v_theta (agent_v_theta msg))
    (cl:cons ':rival_x (rival_x msg))
    (cl:cons ':rival_y (rival_y msg))
    (cl:cons ':rival_v_x (rival_v_x msg))
    (cl:cons ':rival_v_y (rival_v_y msg))
    (cl:cons ':rival_v_theta (rival_v_theta msg))
))
