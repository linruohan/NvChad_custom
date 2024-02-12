local options = {
	lsp_fallback = true,

	formatters_by_ft = {
		lua = { "stylua" },

		-- javascript = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },
		python = { "isort", "black" },
      javascript = { { "prettierd", "prettier" } },
		sh = { "shfmt" },
		markdown = { 'prettierd', 'injected' },
	},

  -- adding same formatter for multiple filetypes can look too much work for some
  -- instead of the above code you could just use a loop! the config is just a table after all!

	format_on_save = {
	  -- These options will be passed to conform.format()
	  timeout_ms = 500,
	  lsp_fallback = true,
	},
	formatters = {
		shfmt = {
		  prepend_args = { "-i", "4", "-ci", "-bn", "-sr"  },
		},
	  },
	  init = function()
		-- If you want the formatexpr, here is the place to set it
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	  end,
	
}

require("conform").setup(options)
