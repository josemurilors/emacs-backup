;;Remover boas-vindas
(setq inhibit-startup-message t)

;Remover menu
(tool-bar-mode -1)

;; teste


;; Numeros nas linhas
(global-display-line-numbers-mode 1)

;; Tamanho da fonte
(set-face-attribute 'default nil :height 90)


;;Pacotes

(require 'package)
(setq package-enable-at-startup nil) ;desabilitar inicio de ativação de pacotes

;; MELPA- repositório
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize) ; iniciar pacotes

;; Download do use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Instalação dos pacotes
(use-package try
  :ensure t)
;;(use-package which-key
;;  :ensure t
;;:config
;;  (progn
;;    (which-key-setup-side-window-right)
;;    (which-key-mode)
;;    ))
;; Auto completar

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
   )
)

;; Neotree é uma extensão que inclui arvore de arquivos para poder manipular
(use-package neotree
  :ensure t
  :bind ("C-\\" . 'neotree-toggle)) ; abrir o neotree


;; integração com o discord
(use-package elcord
  :ensure t
  :config
  (progn
   (elcord-mode)
   ))

;; Corretor de sintaxe

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode t)
  )



;; ergoemacs

(use-package ergoemacs-mode
  :ensure t
  :config
  (progn
    (setq ergoemacs-theme nil) ;; Usa o tema padrão do teclado
    (setq ergoemacs-keyboard-layout "us") ;; Assume que seu teclado seja QWERTY
    (ergoemacs-mode 1)
    )
  )


;; Atalhos
(global-set-key (kbd "C-<tab>") 'other-window) ;; alterar abas
(global-set-key (kbd "M-<down>") 'enlarge-window) ;; alterar tamanho da aba
(global-set-key (kbd "M-<up>") 'shrink-window) ;; alterar tamanho da aba
(global-set-key (kbd "M-<left>") 'enlarge-window-horizontally) ;; alterar tamanho da aba
(global-set-key (kbd "M-<right>") 'shrink-window-horizontally) ;; alterar tamanho da aba

;; Tema
(use-package timu-macos-theme
  :ensure t
  :config
  (load-theme 'timu-macos t))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(molokai-theme neotree try)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
