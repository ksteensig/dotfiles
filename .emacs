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
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Installs packages

;;

;; myPackages contains a list of package names

(defvar myPackages
  '(better-defaults                 ;; Set up some better Emacs defaults
    material-theme                  ;; Theme
    elpy
    clang-format
    )
  )


;; Scans the list in myPackages

;; If the package listed is not already installed, install it

(mapc #'(lambda (package)
	  (unless (package-installed-p package)
	    (package-install package)))
      myPackages)

(setq inhibit-startup-message t)    ;; Hide the startup message
(load-theme 'material t)            ;; Load material theme
(global-linum-mode t)               ;; Enable line numbers globally
(setq inhibit-splash-screen t)

(add-hook 'org-mode-hook 'turn-on-font-lock)
(transient-mark-mode 1)

(require 'org)

(setq python-shell-interpreter "python3")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (clang-format use-package material-theme better-defaults elpy))))

(use-package elpy
  :ensure t
  :init
  (elpy-enable))

(require 'clang-format)
