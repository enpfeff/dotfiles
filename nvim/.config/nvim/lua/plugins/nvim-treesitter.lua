return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  config = function()
    require("nvim-treesitter.configs").setup({
      indent = {
        enable = true
      },
      autotag = {
        enable = true
      },
      ensure_installed = {
        "markdown",
        "json",
        "javascript",
        "typescript",
        "yaml",
        "html",
        "css",
        "bash",
        "lua",
        "dockerfile",
        "gitignore",
        "vue"
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      }
    })
  end
}
