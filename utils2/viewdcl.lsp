(defun c:viewdcl()
  (if (null dul_pt) (setq dcl_pt '(-1 -1)))
  (setq dcl_file (getfiled "打开DCl文件" "" "DCL" 2))
  (princ "DCL 文件名:")
  (princ dcl_file)
  (setq dia_name (getstring "\nDialog 对话框名:"))
  (if (= dia_name null) (exit))
  (setq dcl_id (load_dialog dcl_file))
  (new_dialog dia_name dcl_id)
  (action_tile "accept" "(setq dcl_pt (done_dialog 1))")
  (action_tile "cancel" "(done_dialog 0)")
  (setq dd(start_dialog))
  (cond ((= dd 1) (princ "\n确定<OK>!!!"))
	((= dd 0) (princ "\n取消 (Cancel>!!!"))
	)
  (prin1)
  )
  (prompt "*****************<<预览DCL>>****************")
  (prin1)