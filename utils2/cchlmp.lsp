;;;change circle red to yellow
(defun c:bc()
  (setq cc (acad_colordlg 2))
  (setq ss2 (ssget "X" '((0 . "CIRCLE"))))
  (command "chprop" ss2 "" "c" cc "")
  )