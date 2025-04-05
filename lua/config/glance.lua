local glance = require("glance")

glance.setup {
  height = 25,
  border = {
    enable = true,
  },
}

vim.keymap.set("n", "<Tab>gd", "<cmd>Glance definitions<cr>")
vim.keymap.set("n", "<Tab>gr", "<cmd>Glance references<cr>")
vim.keymap.set("n", "<Tab>gi", "<cmd>Glance implementations<cr>")
