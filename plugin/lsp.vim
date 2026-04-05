vim9script

# Server Management (Homebrew Pyright)
g:lsp_settings = {
    'pyright': {
        'cmd': ['pyright-langserver', '--stdio'],
        'allowlist': ['python']
    }
}

# UI/Visuals
g:lsp_diagnostics_virtual_text_prefix = " ❯ "
g:lsp_preview_float = 1
g:lsp_format_on_save = 1