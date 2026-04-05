vim9script



# Strict Diagnostics (Virtual Text Only)
g:lsp_diagnostics_enabled = 1
g:lsp_diagnostics_virtual_text_enabled = 1
g:lsp_diagnostics_virtual_text_prefix = "   ❯ "
g:lsp_diagnostics_virtual_text_align = 'after'

g:lsp_diagnostics_echo_cursor = 0
g:lsp_diagnostics_float_cursor = 0
g:lsp_diagnostics_loclist_enabled = 0
g:lsp_diagnostics_signs_enabled = 1
g:lsp_diagnostics_highlights_enabled = 1

# Signs
g:lsp_document_code_action_signs_enabled = 0
g:lsp_diagnostics_signs_error = {'text': 'e'}
g:lsp_diagnostics_signs_warning = {'text': 'w'}
g:lsp_diagnostics_signs_information = {'text': 'i'}
g:lsp_diagnostics_signs_hint = {'text': '?'}

# Previews
g:lsp_preview_autoclose = 1
g:lsp_preview_keep_focus = 1
g:lsp_signature_help_enabled = 0
g:lsp_insert_text_enabled = 1

# Automation
g:lsp_format_on_save = 1
g:lsp_text_edit_enabled = 1
g:lsp_semantic_enabled = 1

# syncomplete Settings
g:asyncomplete_auto_popup = 1
g:asyncomplete_popup_delay = 0
