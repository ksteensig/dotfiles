
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load-theme 'tango-dark)
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-separator "\n")
(ido-mode 1)

(scroll-bar-mode -1)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(custom-set-variables
 '(package-selected-packages (quote (company-irony irony company-c-headers))))
(custom-set-faces)

(add-hook 'after-init-hook 'global-company-mode)

(setq inhibit-splash-screen t)

(add-hook 'org-mode-hook 'turn-on-font-lock)
(transient-mark-mode 1)

(require 'org)
