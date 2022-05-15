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
  code_action_prompt = {enable = true, sign = true, sign_priority = 40, virtual_text = true},
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
  code_action_keys = {quit = "q", exec = "<CR>"},
  rename_action_keys = {quit = "<C-c>", exec = "<CR>"},
  definition_preview_icon = "  ",
  border_style = "single",
  rename_prompt_prefix = "➤",
  server_filetype_map = {},
  diagnostic_prefix_format = "%d. "
}

local key_map = vim.api.nvim_set_keymap

key_map("n", "<slient>gh", "<cmd>Lspsage lsp_finder<cr>", {})
key_map("n", "<slient>gr", "<cmd>Lspsage rename<cr>", {})
key_map("n", "<slient>gd", "<cmd>Lspsage preview_definition<cr>", {})

key_map("n", "<slient>gs", "<cmd>Lspsage signature_help<cr>", {})

key_map("n", "<slient>K", "<cmd>Lspsage hover_doc<cr>", {})

key_map("n", "<slient><C-j>", "<cmd>Lspsage diagnostic_jump_text<cr>", {})
key_map("n", "<slient>cd", "<cmd>Lspsage show_line_diagnostics<cr>", {})
key_map("n", "<slient>[e", "<cmd>Lspsage diagnostic_jump_next<cr>", {})
key_map("n", "<slient>]e", "<cmd>Lspsage diagnostic_jump_prev<cr>", {})


key_map("n", "<slient>ca", "<cmd>Lspsage code_action<cr>", {})
key_map("v", "<slient>ca", "<cmd>Lspsage code_action<cr>", {})


