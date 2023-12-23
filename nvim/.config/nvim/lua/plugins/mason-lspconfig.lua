return {
	"williamboman/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"efm",
			"bashls",
			"tsserver",
			"tailwindcss",
			"html",
			"cssls",
			"lua_ls",
			"emmet_ls",
			"jsonls",
		},
		automatic_installation = true,
	},
	event = "BufReadPre",
	dependencies = "williamboman/mason.nvim",
}
