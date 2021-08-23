(setq inhibit-startup-screen t)

(load-theme 'light-blue)

(setq ansi-color-faces-vector
      [default default default italic underline success warning error])

(global-display-line-numbers-mode t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit use-package org-roam htmlize)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq org-directory
      "~/Workspace/notes/org")

(use-package org-roam
    :custom
    (org-roam-directory org-directory) 
    :bind (("C-c n l" . org-roam-buffer-toggle)
           ("C-c n f" . org-roam-node-find)
           ("C-c n i" . org-roam-node-insert)
	   :map org-mode-map
           ("C-M-i"    . completion-at-point))
    ; global-page-break-lines-mode will break the org-roam buffer
    :config
    (org-roam-setup))

(setq org-roam-v2-ack t)

(setq org-cite-activate-processor 'basic)

(use-package magit)
