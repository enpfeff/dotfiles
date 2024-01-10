local on_attach = require("util.lsp").on_attach
local diagnostic_signs = require("util.lsp").diagnostic_signs

local config = function()
	require("neoconf").setup({})
	local lspconfig = require("lspconfig")
	local cmp_nvim_lsp = require("cmp_nvim_lsp")

	for type, icon in pairs(diagnostic_signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
	end

	local capabilities = cmp_nvim_lsp.default_capabilities()

	lspconfig.lua_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					library = {
						[vim.fn.expand("$VIMRUNTIME/lua")] = true,
						[vim.fn.stdpath("config") .. "/lua"] = true,
					},
				},
			},
		},
	})

  lspconfig.kotlin_language_server.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    cmd = { "kotlin-language-server" },
  })

	-- lspconfig.actionlint.setup({
	-- 	capabilities = capabilities,
	-- 	on_attach = on_attach,
	-- 	filetypes = { "yaml", "yml" },
	-- })

	-- lspconfig.vuels.setup({
	-- 	capabilities = capabilities,
	-- 	on_attach = on_attach,
	-- 	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
	-- 	root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
	-- })

	lspconfig.volar.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
		root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
	})

	-- json
	lspconfig.jsonls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "json", "jsonc" },
	})

	-- typescript
	lspconfig.tsserver.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = {
			"typescript",
		},
		root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
	})

	-- lspconfig.copilot.setup({
	-- 	on_attach = on_attach,
	-- 	capabilities = capabilities,
	-- })

	-- docker
	lspconfig.dockerls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})

	local luacheck = require("efmls-configs.linters.luacheck")
	local stylua = require("efmls-configs.formatters.stylua")
	local eslint_d = require("efmls-configs.linters.eslint_d")
	local prettierd = require("efmls-configs.formatters.prettier_d")
	local fixjson = require("efmls-configs.formatters.fixjson")
	local alex = require("efmls-configs.linters.alex")
	local hadolint = require("efmls-configs.linters.hadolint")

	lspconfig.efm.setup({
		filetypes = {
			"lua",
			"json",
			"jsonc",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"vue",
			"markdown",
			"docker",
		},
		init_options = {
			documentFormatting = true,
			documentRangeFormatting = true,
			hover = true,
			documentSymbol = true,
			codeAction = true,
			completion = true,
		},
		settings = {
			languages = {
				lua = { luacheck, stylua },
				typescript = { eslint_d, prettierd },
				json = { eslint_d, fixjson },
				jsonc = { eslint_d, fixjson },
				javascript = { eslint_d, prettierd },
				javascriptreact = { eslint_d, prettierd },
				typescriptreact = { eslint_d, prettierd },
				vue = { eslint_d, prettierd },
				markdown = { alex, prettierd },
				docker = { hadolint, prettierd },
			},
		},
	})

	local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
	vim.api.nvim_create_autocmd("BufWritePost", {
		group = lsp_fmt_group,
		callback = function()
			local efm = vim.lsp.get_active_clients({ name = "efm" })
			if vim.tbl_isempty(efm) then
				return
			end
			vim.lsp.buf.format({ name = "efm" })
		end,
	})
end

return {
	"neovim/nvim-lspconfig",
	config = config,
	lazy = false,
	dependencies = {
		"windwp/nvim-autopairs",
		"williamboman/mason.nvim",
		"creativenull/efmls-configs-nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
	},
}
