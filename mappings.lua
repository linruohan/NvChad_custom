---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-w>"] = { "<cmd> bd <CR>", "close file" },
    ["<leader>gg"] = { "<cmd> !golines . -w <CR>", "run golines" },
    ["<leader>bb"] = { "<cmd> !black . <CR>", "run black" },
    ["S"] = { ":w!<cr>" },
    ["Q"] = { ":q!<cr>" },
    ["<leader>w"] = { ":w!<cr>" },
    ["<leader>q"] = { ":q!<cr>" },
    ["="] = { "n" },
    ["-"] = { " N" },
    ["<C-s>"] = { ":w<cr>" },
    ["<S-l>"] = { ":BufferLineCycleNext<CR>" },
    ["<S-h>"] = { ":BufferLineCyclePrev<CR>" },
    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
  },
  i = {
    ["jj"] = { "ESC" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
