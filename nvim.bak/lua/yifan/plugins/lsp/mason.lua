 -- knowledge: 
 -- nvim-lsp-installer is no longer maintained - Command: LspInstallInfo
 -- mason.nvim is the next generation version of vim-lap-installer.
 -- it builds on top of the very same foundation as nvim-lsp-installer (which
 -- means it's easy to migrate), but with a majority of insternals refactored to 
 -- improve extensibility testability.
 --
 -- More importantly, the scope of mason.nvim has also been widened to target more
 -- than just LSP servers. mason.nvim supports DAP servers, linters, formatters, and more.
 -- As of writing, mason.nvim provides 150+ packages for 100+ languages. It can be thought
 -- of as general-purpose package manager, native to Neovim, that runs everywhere Neovim runs
 -- (Win, macOS, Linux, etc.).
 --
 -- Another big change with mason.nvim is that executables are now linked to a single, shared,
 -- location, allowing seamless access from Neovim builtnis (shell, terminal, etc.), as well as
 -- other 3rd party plugins.
 --
 -- from GitHub wiliamboman/nvim-lsp-installer

-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end



-- enable mason
mason.setup()

mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
		"tailwindcss",
		"lua_ls",
	},
	-- auto-install configured servers (with lspconfig)
	-- automatic_installation = true, -- not the same as ensure_installed
})
