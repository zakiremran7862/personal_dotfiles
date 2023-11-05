require("bufferline").setup{}

local bufferline = require('bufferline')
bufferline.setup({
  options = {
    mode = "buffers",
    style_preset = bufferline.style_preset.default,
    themable = true,
    diagnostics = true,
    separator_style = "slant",
    indicator = {
      style = "underline"
    },
    tab_size = 18,
  }
})

vim.keymap.set('n', '<TAB>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<TAB>', ':BufferLineCyclePrev<CR>')
