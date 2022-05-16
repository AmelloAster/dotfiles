local status_ok, saga = pcall(require, 'lspsage')

if not status_ok then
    return
end

saga.setup {
    debug = false,
    use_saga_diagnostic_sign = true,
    -- diagnostic sign
    error_sign = "",
    warn_sign = "",
    hint_sign = "",
    infor_sign = "",
    diagnostic_header_icon = "   ",
    -- code action title icon
    code_action_icon = " ",
    code_action_prompt = { enable = true, sign = true, sign_priority = 40, virtual_text = true },
    finder_definition_icon = "  ",
    finder_reference_icon = "  ",
    max_preview_lines = 50,
    finder_action_keys = {
        open = "o",
        vsplit = "s",
        split = "i",
        quit = "q",
        scroll_down = "<C-f>",
        scroll_up = "<C-b>"
    },
    code_action_keys = { quit = "q", exec = "<CR>" },
    rename_action_keys = { quit = "<C-c>", exec = "<CR>" },
    definition_preview_icon = "  ",
    border_style = "single",
    rename_prompt_prefix = "➤",
    server_filetype_map = {},
    diagnostic_prefix_format = "%d. "
}

local keymap = vim.api.nvim_set_keymap

keymap("n", "gh", "<cmd>Lspsaga lsp_finder<cr>", {})
keymap("n", "gr", "<cmd>Lspsaga rename<cr>", {})
keymap("n", "<A-d>", "<cmd>Lspsaga preview_definition<cr>", {})
keymap("v", "<A-d>", "<cmd>Lspsaga preview_definition<cr>", {})

keymap("n", "gs", "<cmd>Lspsaga signature_help<cr>", {})

keymap("n", "K", "<cmd>Lspsaga hover_doc<cr>", {})

keymap("n", "<C-j>", "<cmd>Lspsaga diagnostic_jump_text<cr>", {})
keymap("n", "cd", "<cmd>Lspsaga show_line_diagnostics<cr>", {})
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<cr>", {})
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {})


keymap("n", "ca", "<cmd>Lspsaga code_action<cr>", {})
keymap("v", "ca", "<cmd>Lspsaga code_action<cr>", {})
