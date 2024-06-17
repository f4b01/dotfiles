local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"-cope find files(hidden true)",
		"filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

--options
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber number signcolumn=yes")

vim.g.mapleader = " " -- imposto leader come spazio
vim.keymap.set("n", "<leader>ex", ":Explore<CR>", {})
vim.keymap.set("n", "<leader>lz", ":Lazy<CR>", {})
vim.keymap.set("n", "<leader>tb", ":tabnew", {})
require("lazy").setup("plugins")

-- remaps
