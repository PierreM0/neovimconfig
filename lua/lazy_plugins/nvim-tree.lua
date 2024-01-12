return {
  "nvim-tree/nvim-tree.lua",
  opt = {
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  },

  config = true,
}
