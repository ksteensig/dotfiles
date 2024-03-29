(setq inhibit-startup-screen t)

(setq ansi-color-faces-vector
      [default default default italic underline success warning error])

(global-display-line-numbers-mode t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(deeper-blue))
 '(custom-safe-themes
   '("3b8284e207ff93dfc5e5ada8b7b00a3305351a3fb222782d8033a400a48eca48" default))
 '(package-selected-packages
   '(dashboard keepass-mode dockerfile-mode vterm which-key marginalia vertico org-bullets magit use-package htmlize)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; org-mode

(setq org-directory "~/Workspace/notes/")

(setq org-agenda-files '("~/Workspace/notes/agenda/"))

(setq org-hide-emphasis-markers t)

(use-package org-bullets
    :config
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; magit

(use-package magit)

;; vertico

(use-package vertico
  :ensure t
  :bind (:map vertico-map
         ("C-j" . vertico-next)
         ("C-k" . vertico-previous)
         ("C-f" . vertico-exit)
         :map minibuffer-local-map
         ("M-h" . backward-kill-word))
  :custom
  (vertico-cycle t)
  :init
  (vertico-mode))

;; savehist

(use-package savehist
  :init
  (savehist-mode))

;; marginalia

(use-package marginalia
  :after vertico
  :ensure t
  :custom
  (marginalia-annotators '(marginalia-annotators-heavy marginalia-annotators-light nil))
  :init
  (marginalia-mode))


;; which-key

(use-package which-key)
(which-key-mode)

(use-package keepass-mode)

(set-register ?e '(file . "~/.emacs.d/init.el"))
(set-register ?i '(file . "~/Workspace/notes/ideas.org"))

(require 'dashboard)
(dashboard-setup-startup-hook)
;; Or if you use use-package
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
