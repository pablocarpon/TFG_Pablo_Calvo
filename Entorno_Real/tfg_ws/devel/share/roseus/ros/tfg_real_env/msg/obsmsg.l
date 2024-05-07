;; Auto-generated. Do not edit!


(when (boundp 'tfg_real_env::obsmsg)
  (if (not (find-package "TFG_REAL_ENV"))
    (make-package "TFG_REAL_ENV"))
  (shadow 'obsmsg (find-package "TFG_REAL_ENV")))
(unless (find-package "TFG_REAL_ENV::OBSMSG")
  (make-package "TFG_REAL_ENV::OBSMSG"))

(in-package "ROS")
;;//! \htmlinclude obsmsg.msg.html


(defclass tfg_real_env::obsmsg
  :super ros::object
  :slots (_ball_x _ball_y _ball_v_x _ball_v_y _agent_x _agent_y _agent_theta_x _agent_theta_y _agent_v_x _agent_v_y _agent_v_theta _rival_x _rival_y _rival_v_x _rival_v_y _rival_v_theta ))

(defmethod tfg_real_env::obsmsg
  (:init
   (&key
    ((:ball_x __ball_x) 0.0)
    ((:ball_y __ball_y) 0.0)
    ((:ball_v_x __ball_v_x) 0.0)
    ((:ball_v_y __ball_v_y) 0.0)
    ((:agent_x __agent_x) 0.0)
    ((:agent_y __agent_y) 0.0)
    ((:agent_theta_x __agent_theta_x) 0.0)
    ((:agent_theta_y __agent_theta_y) 0.0)
    ((:agent_v_x __agent_v_x) 0.0)
    ((:agent_v_y __agent_v_y) 0.0)
    ((:agent_v_theta __agent_v_theta) 0.0)
    ((:rival_x __rival_x) 0.0)
    ((:rival_y __rival_y) 0.0)
    ((:rival_v_x __rival_v_x) 0.0)
    ((:rival_v_y __rival_v_y) 0.0)
    ((:rival_v_theta __rival_v_theta) 0.0)
    )
   (send-super :init)
   (setq _ball_x (float __ball_x))
   (setq _ball_y (float __ball_y))
   (setq _ball_v_x (float __ball_v_x))
   (setq _ball_v_y (float __ball_v_y))
   (setq _agent_x (float __agent_x))
   (setq _agent_y (float __agent_y))
   (setq _agent_theta_x (float __agent_theta_x))
   (setq _agent_theta_y (float __agent_theta_y))
   (setq _agent_v_x (float __agent_v_x))
   (setq _agent_v_y (float __agent_v_y))
   (setq _agent_v_theta (float __agent_v_theta))
   (setq _rival_x (float __rival_x))
   (setq _rival_y (float __rival_y))
   (setq _rival_v_x (float __rival_v_x))
   (setq _rival_v_y (float __rival_v_y))
   (setq _rival_v_theta (float __rival_v_theta))
   self)
  (:ball_x
   (&optional __ball_x)
   (if __ball_x (setq _ball_x __ball_x)) _ball_x)
  (:ball_y
   (&optional __ball_y)
   (if __ball_y (setq _ball_y __ball_y)) _ball_y)
  (:ball_v_x
   (&optional __ball_v_x)
   (if __ball_v_x (setq _ball_v_x __ball_v_x)) _ball_v_x)
  (:ball_v_y
   (&optional __ball_v_y)
   (if __ball_v_y (setq _ball_v_y __ball_v_y)) _ball_v_y)
  (:agent_x
   (&optional __agent_x)
   (if __agent_x (setq _agent_x __agent_x)) _agent_x)
  (:agent_y
   (&optional __agent_y)
   (if __agent_y (setq _agent_y __agent_y)) _agent_y)
  (:agent_theta_x
   (&optional __agent_theta_x)
   (if __agent_theta_x (setq _agent_theta_x __agent_theta_x)) _agent_theta_x)
  (:agent_theta_y
   (&optional __agent_theta_y)
   (if __agent_theta_y (setq _agent_theta_y __agent_theta_y)) _agent_theta_y)
  (:agent_v_x
   (&optional __agent_v_x)
   (if __agent_v_x (setq _agent_v_x __agent_v_x)) _agent_v_x)
  (:agent_v_y
   (&optional __agent_v_y)
   (if __agent_v_y (setq _agent_v_y __agent_v_y)) _agent_v_y)
  (:agent_v_theta
   (&optional __agent_v_theta)
   (if __agent_v_theta (setq _agent_v_theta __agent_v_theta)) _agent_v_theta)
  (:rival_x
   (&optional __rival_x)
   (if __rival_x (setq _rival_x __rival_x)) _rival_x)
  (:rival_y
   (&optional __rival_y)
   (if __rival_y (setq _rival_y __rival_y)) _rival_y)
  (:rival_v_x
   (&optional __rival_v_x)
   (if __rival_v_x (setq _rival_v_x __rival_v_x)) _rival_v_x)
  (:rival_v_y
   (&optional __rival_v_y)
   (if __rival_v_y (setq _rival_v_y __rival_v_y)) _rival_v_y)
  (:rival_v_theta
   (&optional __rival_v_theta)
   (if __rival_v_theta (setq _rival_v_theta __rival_v_theta)) _rival_v_theta)
  (:serialization-length
   ()
   (+
    ;; float32 _ball_x
    4
    ;; float32 _ball_y
    4
    ;; float32 _ball_v_x
    4
    ;; float32 _ball_v_y
    4
    ;; float32 _agent_x
    4
    ;; float32 _agent_y
    4
    ;; float32 _agent_theta_x
    4
    ;; float32 _agent_theta_y
    4
    ;; float32 _agent_v_x
    4
    ;; float32 _agent_v_y
    4
    ;; float32 _agent_v_theta
    4
    ;; float32 _rival_x
    4
    ;; float32 _rival_y
    4
    ;; float32 _rival_v_x
    4
    ;; float32 _rival_v_y
    4
    ;; float32 _rival_v_theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _ball_x
       (sys::poke _ball_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ball_y
       (sys::poke _ball_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ball_v_x
       (sys::poke _ball_v_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ball_v_y
       (sys::poke _ball_v_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _agent_x
       (sys::poke _agent_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _agent_y
       (sys::poke _agent_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _agent_theta_x
       (sys::poke _agent_theta_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _agent_theta_y
       (sys::poke _agent_theta_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _agent_v_x
       (sys::poke _agent_v_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _agent_v_y
       (sys::poke _agent_v_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _agent_v_theta
       (sys::poke _agent_v_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rival_x
       (sys::poke _rival_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rival_y
       (sys::poke _rival_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rival_v_x
       (sys::poke _rival_v_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rival_v_y
       (sys::poke _rival_v_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rival_v_theta
       (sys::poke _rival_v_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _ball_x
     (setq _ball_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ball_y
     (setq _ball_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ball_v_x
     (setq _ball_v_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ball_v_y
     (setq _ball_v_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _agent_x
     (setq _agent_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _agent_y
     (setq _agent_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _agent_theta_x
     (setq _agent_theta_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _agent_theta_y
     (setq _agent_theta_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _agent_v_x
     (setq _agent_v_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _agent_v_y
     (setq _agent_v_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _agent_v_theta
     (setq _agent_v_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rival_x
     (setq _rival_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rival_y
     (setq _rival_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rival_v_x
     (setq _rival_v_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rival_v_y
     (setq _rival_v_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rival_v_theta
     (setq _rival_v_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tfg_real_env::obsmsg :md5sum-) "13d67f0b2acaa52762a3605ec7346fdb")
(setf (get tfg_real_env::obsmsg :datatype-) "tfg_real_env/obsmsg")
(setf (get tfg_real_env::obsmsg :definition-)
      "float32 ball_x
float32 ball_y
float32 ball_v_x
float32 ball_v_y
float32 agent_x
float32 agent_y
float32 agent_theta_x
float32 agent_theta_y
float32 agent_v_x
float32 agent_v_y
float32 agent_v_theta
float32 rival_x
float32 rival_y
float32 rival_v_x
float32 rival_v_y
float32 rival_v_theta
")



(provide :tfg_real_env/obsmsg "13d67f0b2acaa52762a3605ec7346fdb")


