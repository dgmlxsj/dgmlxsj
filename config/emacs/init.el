(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(global-linum-mode 1)
(setq inhibit-startup-message t
  inhibit-startup-echo-area-message t)

(define-key global-map (kbd "RET") 'newline-and-indent)
