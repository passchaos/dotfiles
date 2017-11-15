
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load (expand-file-name "~/.quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl --noinform --no-linedit")


;; Default font
;;(set-default-font "Inconsolata 10")
;;(set-default-font "lucy tewi-9:weight=regular")
;;(set-default-font "-gohu-gohufont-medium-r-normal-*-14-*-*-*-*-*-iso10646-1")
(set-default-font "-xos4-terminus-medium-r-normal-*-16-*-*-*-*-*-iso10646-1")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (oceanic)))
 '(custom-safe-themes
   (quote
    ("707227acad0cf8d4db55dcf1e574b3644b68eab8aca4a8ce6635c8830bc72144" "d6922c974e8a78378eacb01414183ce32bc8dbf2de78aabcc6ad8172547cb074" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "4486ade2acbf630e78658cd6235a5c6801090c2694469a2a2b4b0e12227a64b9" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "9122dfb203945f6e84b0de66d11a97de6c9edf28b3b5db772472e4beccc6b3c5" "60d4556ebff0dc94849f177b85dcb6956fe9bd394c18a37e339c0fcd7c83e4a9" "20e23cba00cf376ea6f20049022241c02a315547fc86df007544852c94ab44cb" "d5b121d69e48e0f2a84c8e4580f0ba230423391a78fcb4001ccb35d02494d79e" "afc220610bee26945b7c750b0cca03775a8b73c27fdca81a586a0a62d45bbce2" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" "5dc0ae2d193460de979a463b907b4b2c6d2c9c4657b2e9e66b8898d2592e3de5" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "1c656eb3f6ae6c84ced46282cb4ed697bffe2f6c764bb5a737ed7ca6d068f798" "c7a9a68bd07e38620a5508fef62ec079d274475c8f92d75ed0c33c45fbe306bc" "f81a9aabc6a70441e4a742dfd6d10b2bae1088830dc7aba9c9922f4b1bd2ba50" default)))
 '(fci-rule-color "#ECEFF1")
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(hl-sexp-background-color "#efebe9")
 '(inhibit-startup-screen nil)
 '(initial-buffer-choice t)
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#183691" "#969896" "#a71d5d" "#969896" "#0086b3" "#795da3" "#a71d5d" "#969896")))
 '(org-agenda-files
   (quote
    ("~/Documents/Dropbox/orgzly/Projetos Principais.org" "~/Documents/Dropbox/orgzly/Projetos Paralelos.org")))
 '(package-selected-packages
   (quote
    (graphviz-dot-mode ghci-completion company-ghci scion intero better-defaults projectile clojure-mode-extra-font-locking toml-mode rust-mode magit nim-mode cmake-ide haskell-mode haskell-emacs cyberpunk-theme oceanic-theme molokai-theme smart-mode-line flatland-black-theme fish-mode avk-emacs-themes tide go-mode tidy powerline blackboard-bold-mode blackboard-theme lfe-mode slime-theme helm-dash eww-lnum elixir-mode cmake-mode dracula-theme markdown-mode material-theme geiser nasm-mode glsl-mode lua-mode stumpwm-mode julia-mode github-theme ac-cider cider forth-mode flycheck-irony company-c-headers company-irony-c-headers rtags eclim flycheck-tip company-erlang popup-complete edts flycheck use-package list-packages-ext distel-completion-lib company-irony irony monokai-theme)))
 '(pdf-view-midnight-colors (quote ("#969896" . "#f8eec7")))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#B71C1C")
     (40 . "#FF5722")
     (60 . "#FFA000")
     (80 . "#558b2f")
     (100 . "#00796b")
     (120 . "#2196f3")
     (140 . "#4527A0")
     (160 . "#B71C1C")
     (180 . "#FF5722")
     (200 . "#FFA000")
     (220 . "#558b2f")
     (240 . "#00796b")
     (260 . "#2196f3")
     (280 . "#4527A0")
     (300 . "#B71C1C")
     (320 . "#FF5722")
     (340 . "#FFA000")
     (360 . "#558b2f"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Default theme
;;(if (display-graphic-p)
;;    (enable-theme 'github))


;; Just so we can SEE our comments
;;(set-face-foreground 'font-lock-string-face "red")
;;(set-face-foreground 'font-lock-comment-face "light pink")

;; Autocompletion
(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)

;; Show-paren-mode
(show-paren-mode 1)
(setq show-paren-delay 0)

;; Disable toolbar
(tool-bar-mode -1)

;; Linum mode
(global-linum-mode 1)
(setq linum-format "%5d ")

;; Removes bg on terminal
(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)

;; MELPA
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives 
   '("MELPA" . "http://melpa.org/packages/")
   t)
  (package-initialize))


;; Scheme stuff
(setq scheme-program-name "csi -:c")

(autoload 'scheme-smart-complete "scheme-complete" nil t)
(eval-after-load 'scheme
  '(define-key scheme-mode-map "\e\t" 'scheme-smart-complete))

;; Tab completion
(eval-after-load 'scheme
  '(define-key scheme-mode-map "\t" 'scheme-complete-or-indent))









;; XTerm mouse
(xterm-mouse-mode t)

;; Window title
(setq frame-title-format '("Emacs"))


;; Erlang mode
(setq load-path (cons "/usr/lib/erlang/lib/tools-2.9/emacs" load-path))
(require 'erlang-start)
(setq erlang-root-dir "/usr/lib/erlang/")
(setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
(setq erlang-man-root-dir "/usr/lib/erlang/man")

;; Flycheck
(require 'flycheck)
(flycheck-define-checker
    erlang-otp
  "An Erlang syntax checker using the Erlang interpreter."
  :command ("erlc" "-o" temporary-directory "-Wall"
            "-I" "../include" "-I" "../../include"
            "-I" "../../../include"
            source)
  :error-patterns
  ((warning line-start (file-name) ":" line ": Warning:" (message) line-end)
   (error line-start (file-name) ":" line ": " (message) line-end))
  :modes erlang-mode)

(add-hook 'erlang-mode-hook
          (lambda ()
            (flycheck-select-checker 'erlang-otp)
	    (flycheck-mode)))




;; Forth mode
(require 'forth-mode)
(require 'forth-block-mode)
(require 'forth-interaction-mode)


;; Set geiser's Scheme implementation
(setq geiser-active-implementations '(guile))


;; Makes *scratch* empty.
(setq initial-scratch-message ";; Scratch buffer for Emacs Lisp evaluation.\n\n")

;; Removes *scratch* from buffer after the mode has been set.
;;(defun remove-scratch-buffer ()
;;  (if (get-buffer "*scratch*")
;;      (kill-buffer "*scratch*")))
;;(add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)

;; Removes *messages* from the buffer.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; Removes *Completions* from buffer after you've opened a file.
(add-hook 'minibuffer-exit-hook
      '(lambda ()
         (let ((buffer "*Completions*"))
           (and (get-buffer buffer)
                (kill-buffer buffer)))))

;; Don't show *Buffer list* when opening multiple files at the same time.
(setq inhibit-startup-buffer-menu t)

;; Remove menubar, except for C-mouse-3
(menu-bar-mode -99)

;; Show only one active window when opening multiple files at the same time.
;;(add-hook 'window-setup-hook 'delete-other-windows)


;; ac-cider stuff
(require 'ac-cider)
(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(eval-after-load "auto-complete"
  '(progn
     (add-to-list 'ac-modes 'cider-mode)
     (add-to-list 'ac-modes 'cider-repl-mode)))




;; Only use spaces
(setq-default indent-tabs-mode nil)

(put 'erase-buffer 'disabled nil)


;; Typescript stuff
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)
(add-hook 'typescript-mode-hook #'setup-tide-mode)


;; Shell config
(setq explicit-shell-file-name "/usr/bin/bash")
(setq shell-file-name "bash")
(setq explicit-bash.exe-args '("--noediting" "--login" "-i"))
(setenv "SHELL" shell-file-name)
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)

;; Smart modeline
;; https://github.com/Malabarba/smart-mode-line
(setq sml/theme 'respectful)
(setq sml/shorten-directory t)
(setq sml/shorten-modes t)
(sml/setup)
(add-to-list 'sml/replacer-regexp-list '("^:Doc:Git/" ":Git:") t)
(add-to-list 'sml/replacer-regexp-list '("*:Doc:Git/alchemist/" ":Git-alchemist:") t)

;; Powerline
;;(require 'powerline)
;;(powerline-default-theme)



;; C/C++ IDE

;; C indentation
(setq c-default-style "k&r"
      c-basic-offset 4
      tab-width 4
      indent-tabs-mode t)

;; C++ indentation
(defun my-c++-mode-hook ()
  (c-set-offset 'substatement-open 0)
  (setq c-default-style "k&r")
  (setq c++-tab-always-indent t)
  (setq c-basic-offset 4)
  (setq c-indent-level 4)
  (setq tab-stop-list
        '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))
  (setq tab-width 4)
  (setq indent-tabs-mode t))
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

;; Setup rtags
(require 'rtags)
(require 'company-rtags)

(setq rtags-completions-enabled t)
(eval-after-load 'company
  '(add-to-list
    'company-backends 'company-rtags))
(setq rtags-autostart-diagnostics t)
(rtags-enable-standard-keybindings)

;; Helm integration
(require 'helm-rtags)
(setq rtags-use-helm t)

;; Irony source code completion
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))

(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)


;; Company
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)
(setq company-backends (delete 'company-semantic company-backends))
;; Header file completion with company-irony-c-headers
(require 'company-irony-c-headers)
(eval-after-load 'company
  '(add-to-list
    'company-backends '(company-irony-c-headers company-irony)))

;; Tab completion with no delay
(setq company-idle-delay 0)
(define-key c-mode-map [(tab)] 'company-complete)
(define-key c++-mode-map [(tab)] 'company-complete)


;; Flycheck syntax checking
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'flycheck-mode)

;; Integrate RTags with Flycheck
(require 'flycheck-rtags)

(defun my-flycheck-rtags-setup ()
  (flycheck-select-checker 'rtags)
  (setq-local flycheck-highlighting-mode nil) ;; rtags overlay. More accurate
  (setq-local flycheck-check-syntax-automatically nil))
;; c-mode-common-hook is also called by c++-mode
(add-hook 'c-mode-common-hook #'my-flycheck-rtags-setup)

;; Integrating irony with flycheck
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;; CMake automation
(cmake-ide-setup)
;; Add the following on folder's .dir-locals.el:
;; ((nil . ((cmake-ide-build-dir . "<PATH_TO_PROJECT_BUILD_DIRECTORY>"))))

(setq cmake-ide-flags-c '("-j4"))
(setq cmake-ide-flags-c++ '("-j4"))


;; Mutt support.
(setq auto-mode-alist (append '(("/tmp/mutt.*" . mail-mode)) auto-mode-alist))


;; Haskell stuff
;;(require 'intero)
;;(add-hook 'haskell-mode-hook 'intero-mode)
;;(setq flycheck-check-syntax-automatically '(save new-line))
;;(flycheck-add-next-checker 'intero '(warning . haskell-hlint))

(require 'haskell-interactive-mode)
(require 'haskell-process)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)



(define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-'") 'haskell-interactive-bring)
(define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
(define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)
(define-key haskell-mode-map (kbd "C-c C-e") 'haskell-interactive-copy-to-prompt)


;; Org mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

