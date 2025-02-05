return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"graphql",
				"emmet_ls",
				"prismals",
				"pyright",
				"pylsp",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"clang-format", -- C, C++ formatter
				"shfmt", -- bash/shell script formatter
				"sqlfluff", -- sql formatter
				"rustfmt", -- rust formatter
				"jq", -- JSON formatter
				"fixjson", -- JSON formatter
				"google-java-format", -- JAVA formatter
				"gofumpt", -- GO formatter
				"goimports", -- GO import formatter
				"pylint", -- python linter
				"eslint_d", -- js linter
				"cmakelint",
				"cpplint",
				"jsonlint",
			},
		})
	end,
}
