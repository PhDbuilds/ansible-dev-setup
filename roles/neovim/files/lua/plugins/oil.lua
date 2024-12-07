return {
	"stevearc/oil.nvim",
	config = function()
		local oil = require("oil")
		oil.setup()
		vim.keymap.set("n", "-", oil.toggle_float, {})
		-- Make Oil floating window transparent
		vim.cmd([[
            highlight OilFloat guibg=NONE ctermbg=NONE
            highlight NormalFloat guibg=NONE ctermbg=NONE
            highlight FloatBorder guibg=NONE ctermbg=NONE
        ]])
	end,
}
