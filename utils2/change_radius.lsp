(defun c:chgrad()
  (setvar "cmdecho" 0)
  (setq en (entsel "select round:"))
  ;;;old attribute
  (setq en_data (entget (car en)))
  (setq old_rad_list (assoc 40 en_data));;;40 sub list
  (setq old_rr (cdr old_rad_list));;;list except 1st 
  (princ "\n old radius=")
  (princ old_rr)
  ;;;set new
  (setq cenpt (cdr (assoc 10 en_data)))
  (setq new_rr (getdist cenpt "\n new radius:"))
  (setq new_rad_list (cons 40 new_rr))
  (setq en_data (subst new_rad_list old_rad_list en_data))
  (entmod en_data)
  (prompt "\n god_Wang thanks for your op")
  (prin1)
  ) 