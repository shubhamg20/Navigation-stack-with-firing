;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::GameSurvivor)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'GameSurvivor (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::GAMESURVIVOR")
  (make-package "ROBORTS_MSGS::GAMESURVIVOR"))

(in-package "ROS")
;;//! \htmlinclude GameSurvivor.msg.html


(defclass roborts_msgs::GameSurvivor
  :super ros::object
  :slots (_red3 _red4 _blue3 _blue4 ))

(defmethod roborts_msgs::GameSurvivor
  (:init
   (&key
    ((:red3 __red3) nil)
    ((:red4 __red4) nil)
    ((:blue3 __blue3) nil)
    ((:blue4 __blue4) nil)
    )
   (send-super :init)
   (setq _red3 __red3)
   (setq _red4 __red4)
   (setq _blue3 __blue3)
   (setq _blue4 __blue4)
   self)
  (:red3
   (&optional (__red3 :null))
   (if (not (eq __red3 :null)) (setq _red3 __red3)) _red3)
  (:red4
   (&optional (__red4 :null))
   (if (not (eq __red4 :null)) (setq _red4 __red4)) _red4)
  (:blue3
   (&optional (__blue3 :null))
   (if (not (eq __blue3 :null)) (setq _blue3 __blue3)) _blue3)
  (:blue4
   (&optional (__blue4 :null))
   (if (not (eq __blue4 :null)) (setq _blue4 __blue4)) _blue4)
  (:serialization-length
   ()
   (+
    ;; bool _red3
    1
    ;; bool _red4
    1
    ;; bool _blue3
    1
    ;; bool _blue4
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _red3
       (if _red3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _red4
       (if _red4 (write-byte -1 s) (write-byte 0 s))
     ;; bool _blue3
       (if _blue3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _blue4
       (if _blue4 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _red3
     (setq _red3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _red4
     (setq _red4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _blue3
     (setq _blue3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _blue4
     (setq _blue4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roborts_msgs::GameSurvivor :md5sum-) "48420e310835d7d79e0a1b719e881088")
(setf (get roborts_msgs::GameSurvivor :datatype-) "roborts_msgs/GameSurvivor")
(setf (get roborts_msgs::GameSurvivor :definition-)
      "#robot survival
bool red3
bool red4
bool blue3
bool blue4

")



(provide :roborts_msgs/GameSurvivor "48420e310835d7d79e0a1b719e881088")


