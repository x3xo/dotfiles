;; disable welcome screen
(setq inhibit-startup-message t)

;; clear scratch buffer header
(setq initial-scratch-message nil)

;; disable toolbar
(tool-bar-mode -1)

;; keep menu bar
(menu-bar-mode -1)

;; remove scroll bars
(scroll-bar-mode 0)

(package-initialize)

(require 'org)
(require 'ob-tangle)

;; stop crying that loader.org is a link
(setq vc-follow-symlinks nil)
(setq init-dir (file-name-directory (or load-file-name (buffer-file-name))))
(org-babel-load-file (expand-file-name "loader.org" init-dir))

(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)


(defun handle-delete-frame-without-kill-emacs (event)
  "Handle delete-frame events from the X server."
  (interactive "e")
  (let ((frame (posn-window (event-start event)))
        (i 0)
        (tail (frame-list)))
    (while tail
      (and (frame-visible-p (car tail))
           (not (eq (car tail) frame))
           (setq i (1+ i)))
      (setq tail (cdr tail)))
    (if (> i 0)
        (delete-frame frame t)
      ;; Not (save-buffers-kill-emacs) but instead:
      (ns-do-hide-emacs))))

(when (eq system-type 'darwin)
  (advice-add 'handle-delete-frame :override
              #'handle-delete-frame-without-kill-emacs))

