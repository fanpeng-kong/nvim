require'nvim-treesitter.configs'.setup {
	-- ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
	ignore_install = {""}, -- List of parsers to ignore installing
  highlight = {
    enable  = {"c", "cpp", "rust", "go", "java", "python", "javascript", "lua"}, -- enable = true (false will disable the whole extension)
    disable = {""},  -- list of language that will be disabled
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
	indent = {enable = true, disable = {"yaml"}},
}
