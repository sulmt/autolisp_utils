;;;get union attribute list for any 
;;;car da获取图元名
;;;entget获取联合属性列表
;;;一般接下来用assoc取得type	
(defun c:cat()
  (setq da (entsel "select:"))
  (setq da_data (entget (car da)))
  (princ da_data)
  (prin1)
  )