(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(global-linum-mode 1)
(setq inhibit-startup-message t
  inhibit-startup-echo-area-message t)

(define-key global-map (kbd "RET") 'newline-and-indent)

 (add-to-list 'load-path "~/.emacs.d/evil")
 (require 'evil)
 (evil-mode 1)

(require 'recentf)
 
;; get rid of `find-file-read-only' and replace it with something
;; more useful.
(global-set-key (kbd "C-x C-r") 'ido-recentf-open)
 
;; enable recent files mode.
(recentf-mode t)
 
; 50 files ought to be enough.
(setq recentf-max-saved-items 50)
 
(defun ido-recentf-open ()
  "Use `ido-completing-read' to \\[find-file] a recent file"
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      (message "Opening file...")
    (message "Aborting")))