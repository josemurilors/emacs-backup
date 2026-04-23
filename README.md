# Emacs Backup

Configurações pessoais do editor Emacs.

## Pacotes Incluídos

- **auto-complete** — Autocompletar código
- **neotree** — Árvore de arquivos integrada
- **elcord** — Integração com Discord (mostra статус no Discord)
- **flycheck** — Verificador de sintaxe em tempo real
- **ergoemacs-mode** — Atalhos de teclado ergonomicos
- **timu-macos-theme** — Tema visual

## Configurações

- Mensagem de boas-vindas desativada
- Barra de ferramentas ocultada
- Números de linha ativados
- Tamanho da fonte: 90

## Atalhos Personalizados

| Atalho | Função |
|--------|--------|
| `C-\` | Alternar Neotree |
| `C-<tab>` | Trocar janela |
| `M-<down>` | Aumentar janela |
| `M-<up>` | Diminuir janela |
| `M-<left>` | Aumentar janela horizontalmente |
| `M-<right>` | Diminuir janela horizontalmente |

## Instalação

Copie o arquivo `init.el` para o diretório de configuração do Emacs:
- Linux/macOS: `~/.emacs.d/init.el`
- Windows: `%USERPROFILE%\.emacs.d/init.el`

## Requisitos

- Emacs 24+
- Acesso à internet (para baixar pacotes do MELPA)