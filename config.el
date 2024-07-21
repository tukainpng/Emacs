(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)
;(load-theme 'modus-vivendi t)
(set-frame-font "-JB-JetBrainsMono Nerd Font Mono-regular-normal-normal-*-*-*-*-*-m-0-iso10646-1" nil t)

(require 'org-tempo)
(setq org-support-shift-select 1)
(electric-indent-mode -1)

(require 'package)
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
	use-package-expand-minimally t))

(require 'epa-file)
(epa-file-enable)
(setq epa-pinentry-mode 'loopback)

(use-package which-key
  :ensure t
  :init (which-key-mode 1))

(use-package company
  :ensure t
  :init (company-mode 1))

(use-package evil
  :ensure t
  :init (evil-mode 1))

(use-package magit
  :ensure t)

(use-package telephone-line
  :ensure t
  :init (telephone-line-mode 1))

(use-package highlight-parentheses
  :ensure t
  :init (highlight-parentheses-mode 1))

(use-package org-bullets
:ensure t
:init (org-bullets-mode 1))

(use-package doom-themes
  :ensure t
  :init (load-theme 'doom-one t))
