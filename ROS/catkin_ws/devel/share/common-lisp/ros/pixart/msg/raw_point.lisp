; Auto-generated. Do not edit!


(cl:in-package pixart-msg)


;//! \htmlinclude raw_point.msg.html

(cl:defclass <raw_point> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0)
   (camera_id
    :reader camera_id
    :initarg :camera_id
    :type cl:fixnum
    :initform 0)
   (point_id
    :reader point_id
    :initarg :point_id
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass raw_point (<raw_point>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <raw_point>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'raw_point)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pixart-msg:<raw_point> is deprecated: use pixart-msg:raw_point instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <raw_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pixart-msg:x-val is deprecated.  Use pixart-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <raw_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pixart-msg:y-val is deprecated.  Use pixart-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'camera_id-val :lambda-list '(m))
(cl:defmethod camera_id-val ((m <raw_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pixart-msg:camera_id-val is deprecated.  Use pixart-msg:camera_id instead.")
  (camera_id m))

(cl:ensure-generic-function 'point_id-val :lambda-list '(m))
(cl:defmethod point_id-val ((m <raw_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pixart-msg:point_id-val is deprecated.  Use pixart-msg:point_id instead.")
  (point_id m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <raw_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pixart-msg:stamp-val is deprecated.  Use pixart-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <raw_point>) ostream)
  "Serializes a message object of type '<raw_point>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'camera_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'point_id)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <raw_point>) istream)
  "Deserializes a message object of type '<raw_point>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'camera_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'point_id)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<raw_point>)))
  "Returns string type for a message object of type '<raw_point>"
  "pixart/raw_point")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'raw_point)))
  "Returns string type for a message object of type 'raw_point"
  "pixart/raw_point")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<raw_point>)))
  "Returns md5sum for a message object of type '<raw_point>"
  "b6e378fbcfee096e6fdfd7d90c3f26de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'raw_point)))
  "Returns md5sum for a message object of type 'raw_point"
  "b6e378fbcfee096e6fdfd7d90c3f26de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<raw_point>)))
  "Returns full string definition for message of type '<raw_point>"
  (cl:format cl:nil "uint16 x~%uint16 y~%uint16 camera_id~%uint8 point_id~%time stamp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'raw_point)))
  "Returns full string definition for message of type 'raw_point"
  (cl:format cl:nil "uint16 x~%uint16 y~%uint16 camera_id~%uint8 point_id~%time stamp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <raw_point>))
  (cl:+ 0
     2
     2
     2
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <raw_point>))
  "Converts a ROS message object to a list"
  (cl:list 'raw_point
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':camera_id (camera_id msg))
    (cl:cons ':point_id (point_id msg))
    (cl:cons ':stamp (stamp msg))
))
