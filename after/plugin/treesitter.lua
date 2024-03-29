-- require('nvim-treesitter.parsers').get_parser_configs().asm = {
--     install_info = {
--         url = 'https://github.com/rush-rs/tree-sitter-asm.git',
--         files = { 'src/parser.c' },
--         branch = 'main',
--     },
-- }

require'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = {
		"c",
		"rust",
		"go",
		"javascript",
		"typescript",
		"lua",
		"vim",
		"query",
		"python",
		"css",
		"html",
		"tsx",
		"vue",
		"asm"
	},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = false,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}

