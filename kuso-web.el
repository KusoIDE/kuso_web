;;   Kuso IDE
;;    Copyright (C) 2010-2013  Sameer Rahmani <lxsameer@gnu.org>
;;
;;    This program is free software: you can redistribute it and/or modify
;;    it under the terms of the GNU General Public License as published by
;;    the Free Software Foundation, either version 3 of the License, or
;;    any later version.
;;
;;    This program is distributed in the hope that it will be useful,
;;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;    GNU General Public License for more details.
;;
;;    You should have received a copy of the GNU General Public License
;;    along with this program.  If not, see <http://www.gnu.org/licenses/>.
(message "Initializing 'kuso-web' plugin.")

;(autoload 'tern-mode "tern.el" nil t)

(add-to-list 'auto-mode-alist '("\\.js.erb$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;(add-hook 'js-mode-hook (lambda () (tern-mode t)))
;(add-hook 'js2-mode-hook (lambda () (tern-mode t)))

(add-hook 'js2-mode-hook             #'enable-paredit-mode)
(add-hook 'js-mode-hook             #'enable-paredit-mode)
(add-hook 'sass-mode-hook             #'enable-paredit-mode)
(add-hook 'scss-mode-hook             #'enable-paredit-mode)
(add-hook 'css-mode-hook             #'enable-paredit-mode)
(add-hook 'handlebars-mode-hook             #'enable-paredit-mode)

;(eval-after-load 'tern
;   '(progn
;      (require 'tern-auto-complete)
;      (tern-ac-setup)))
