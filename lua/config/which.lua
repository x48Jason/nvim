local wk = require("which-key")

wk.setup({})

wk.add({
    { "<leader>b", group = "Buffers" },
    { "<leader>bL", "<cmd>BufferLineSortByExtension<cr>", desc = "Sort BufferLines automatically by extension" },
    { "<leader>ba", "<cmd>BufferLineCloseLeft<cr><cmd>BufferLineCloseRight<cr>", desc = "Close all but the current buffer" },
    { "<leader>bb", "<cmd>lua require'telescope.builtin'.buffers({ sort_mru = true, ignore_current_buffer = true })<cr>", desc = "Find buffer" },
    { "<leader>bd", "<cmd>Bdelete!<CR>", desc = "Close Buffer" },
    { "<leader>bf", "<cmd>BufferLinePick<cr>", desc = "Pick buffer" },
    { "<leader>bl", "<cmd>BufferLineCloseLeft<cr>", desc = "Close all buffers to the left" },
    { "<leader>bn", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
    { "<leader>bp", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
    { "<leader>br", "<cmd>BufferLineCloseRight<cr>", desc = "Close all BufferLines to the right" },
    { "<leader>bx", "<cmd>BufferLineSortByDirectory<cr>", desc = "Sort BufferLines automatically by directory" },

    { "<leader>f", group = "Files" },
    { "<leader>fT", "<cmd>NvimTreeFindFile<CR>", desc = "Find in Tree" },
    { "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'fd', '--hidden', '--type', 'file', '--follow'}})<cr>", desc = "Find File" },
    { "<leader>fl", "<cmd>Lf<cr>", desc = "Open LF" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Open Recent File" },
    { "<leader>fs", "<cmd>w<cr>", desc = "Save Buffer" },
    { "<leader>ft", "<cmd>NvimTreeToggle<cr>", desc = "Toogle Tree" },

    { "<leader>g", group = "Git" },
    { "<leader>gB", "<cmd>GitBlameToggle<cr>", desc = "Toogle Blame" },
    { "<leader>gC", "<cmd>Telescope git_bcommits<cr>", desc = "Checkout commit(for current file)" },
    { "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Checkout branch" },
    { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Checkout commit" },
    { "<leader>gg", "<cmd>Telescope git_status<cr>", desc = "Open changed file" },

    { "<leader>l", group = "LSP" },
    { "<leader>lA", "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", desc = "Add Workspace Folder" },
    { "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<cr>", desc = "Go To Declaration" },
    { "<leader>lI", "<cmd>lua vim.lsp.buf.implementation()<cr>", desc = "Show implementations" },
    { "<leader>lK", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover Commands" },
    { "<leader>lL", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>", desc = "List Workspace Folders" },
    { "<leader>lR", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
    { "<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace Symbols" },
    { "<leader>lW", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", desc = "Remove Workspace Folder" },
    { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
    { "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Go To Definition" },
    { "<leader>le", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document Diagnostics" },
    { "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<cr>", desc = "Format" },
    { "<leader>li", "<cmd>LspInfo<cr>", desc = "Connected Language Servers" },
    { "<leader>lk", "<cmd>lua vim.lsp.buf.signature_help()<cr>", desc = "Signature Help" },
    { "<leader>ll", "<cmd>lua vim.diagnostic.open_float()<CR>", desc = "Line diagnostics" },
    { "<leader>ln", "<cmd>lua vim.diagnostic.goto_next()<cr>", desc = "Next Diagnostic" },
    { "<leader>lp", "<cmd>lua vim.diagnostic.goto_prev()<cr>", desc = "Prev Diagnostic" },
    { "<leader>lq", "<cmd>lua vim.diagnostic.set_loclist()<cr>", desc = "Quickfix" },
    { "<leader>lr", "<cmd>Telescope lsp_references<cr>", desc = "Symbol References" },
    { "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols" },
    { "<leader>lt", "<cmd>lua vim.lsp.buf.type_definition()<cr>", desc = "Type Definition" },
    { "<leader>lw", "<cmd>Telescope diagnostics<cr>", desc = "Workspace Diagnostics" },

    { "<leader>s", group = "Search" },
    { "<leader>sC", "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme" },
    { "<leader>sH", "<cmd>Telescope heading<cr>", desc = "Find Header" },
    { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
    { "<leader>sP", "<cmd>Telescope colorscheme enable_preview=true<cr>", desc = "Colorscheme with Preview" },
    { "<leader>sR", "<cmd>Telescope registers<cr>", desc = "Registers" },
    { "<leader>sS", "<cmd>Telescope symbols<cr>", desc = "Search symbols" },
    { "<leader>sc", "<cmd>Telescope commands<cr>", desc = "Commands" },
    { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
    { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
    { "<leader>sp", "<cmd>Telescope projects<cr>", desc = "Projects" },
    { "<leader>ss", "<cmd>Telescope grep_string<cr>", desc = "Grep Text under cursor" },
    { "<leader>st", "<cmd>Telescope live_grep<cr>", desc = "Grep Text" },

    { "<leader>z", group = "Spelling" },
    { "<leader>za", "zg", desc = "Add word" },
    { "<leader>zf", "1z=", desc = "Use 1. correction" },
    { "<leader>zl", "<cmd>Telescope spell_suggest<cr>", desc = "List corrections" },
    { "<leader>zn", "]s", desc = "Next" },
    { "<leader>zp", "[s", desc = "Previous" },
})
