local vue_language_server_path = '/home/pierrem/.bun/install/global/node_modules/@vue/language-server'
local vue_plugin = {
	name = '@vue/typescript-plugin',
	location = vue_language_server_path,
	languages = { 'vue' },
	configNamespace = 'typescript',
}

vim.lsp.config('vtsls', {
	settings = {
		vtsls = {
			tsserver = {
				globalPlugins = {
					vue_plugin,
				},
			},
		},
	},
	filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
})

vim.lsp.enable({
	"bashls",
	"cssls",
	"eslint",
	"html",
	"jsonls",
	"lua_ls",
	"ruff",
	"tailwindcss",
	"vtsls",
	"vue_ls",
})

vim.diagnostic.config({ virtual_text = true })
