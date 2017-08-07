(defun c:lty()
  (setvar "cmdecho" 0)
  (setq en(entsel "select line:"))
  ;;;get line's attribute
  (setq en_data (entget (car en)))
  ;;;for start
  (setq start_point (assoc 10 en_data))
  (setq for_start_xy(cdr start_point))
  ;;;indiv x,y
  (setq x_start (car for_start_xy))
  (setq y_start (cadr for_start_xy))
  ;;;here is for end
  (setq end_point (assoc 11 en_data))
  (setq for_end_xy (cdr end_point))
  (setq x_end (car for_end_xy))
  (setq y_end (cadr for_end_xy))
  (setq x_medium_point (/ (+ x_start x_end) 2))
  (setq y_medium_point (/ (+ y_start y_end) 2))
  ;;;union to a list
  (setq cent (list x_medium_point y_medium_point))
  ;;;input radius
  (setq r (getdist cent "please input radius:"))
  (command "circle" cent r)
  (prin1)
  )

(defun c:lty2()
  (setvar "cmdecho" 0)
  (setq en(entsel "select line:"))
  (setq pts(cadr en))
  (setq p_mid(osnap pts "mid"))
  ;;;(setq rr(getdist p_mid "please input radius:"))
  (command "circle" p_mid pause)
  (prin1)
  )
  
(prompt "\n god_Wang ha-li-lu-ya")
(prin1)


