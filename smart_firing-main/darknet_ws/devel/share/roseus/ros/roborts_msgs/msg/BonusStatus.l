;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::BonusStatus)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'BonusStatus (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::BONUSSTATUS")
  (make-package "ROBORTS_MSGS::BONUSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude BonusStatus.msg.html


(intern "*UNOCCUPIED*" (find-package "ROBORTS_MSGS::BONUSSTATUS"))
(shadow '*UNOCCUPIED* (find-package "ROBORTS_MSGS::BONUSSTATUS"))
(defconstant roborts_msgs::BonusStatus::*UNOCCUPIED* 0)
(intern "*BEING_OCCUPIED*" (find-package "ROBORTS_MSGS::BONUSSTATUS"))
(shadow '*BEING_OCCUPIED* (find-package "ROBORTS_MSGS::BONUSSTATUS"))
(defconstant roborts_msgs::BonusStatus::*BEING_OCCUPIED* 1)
(intern "*OCCUPIED*" (find-package "ROBORTS_MSGS::BONUSSTATUS"))
(shadow '*OCCUPIED* (find-package "ROBORTS_MSGS::BONUSSTATUS"))
(defconstant roborts_msgs::BonusStatus::*OCCUPIED* 2)

(defun roborts_msgs::BonusStatus-to-symbol (const)
  (cond
        ((= const 0) 'roborts_msgs::BonusStatus::*UNOCCUPIED*)
        ((= const 1) 'roborts_msgs::BonusStatus::*BEING_OCCUPIED*)
        ((= const 2) 'roborts_msgs::BonusStatus::*OCCUPIED*)
        (t nil)))

(defclass roborts_msgs::BonusStatus
  :super ros::object
  :slots (_red_bonus _blue_bonus ))

(defmethod roborts_msgs::BonusStatus
  (:init
   (&key
    ((:red_bonus __red_bonus) 0)
    ((:blue_bonus __blue_bonus) 0)
    )
   (send-super :init)
   (setq _red_bonus (round __red_bonus))
   (setq _blue_bonus (round __blue_bonus))
   self)
  (:red_bonus
   (&optional __red_bonus)
   (if __red_bonus (setq _red_bonus __red_bonus)) _red_bonus)
  (:blue_bonus
   (&optional __blue_bonus)
   (if __blue_bonus (setq _blue_bonus __blue_bonus)) _blue_bonus)
  (:serialization-length
   ()
   (+
    ;; uint8 _red_bonus
    1
    ;; uint8 _blue_bonus
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _red_bonus
       (write-byte _red_bonus s)
     ;; uint8 _blue_bonus
       (write-byte _blue_bonus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _red_bonus
     (setq _red_bonus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _blue_bonus
     (setq _blue_bonus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roborts_msgs::BonusStatus :md5sum-) "45f50b5ec6e45c780298e74c42177aa1")
(setf (get roborts_msgs::BonusStatus :datatype-) "roborts_msgs/BonusStatus")
(setf (get roborts_msgs::BonusStatus :definition-)
      "#bonus zone status
uint8 UNOCCUPIED = 0
uint8 BEING_OCCUPIED= 1
uint8 OCCUPIED = 2
uint8 red_bonus
uint8 blue_bonus
")



(provide :roborts_msgs/BonusStatus "45f50b5ec6e45c780298e74c42177aa1")


