return {
  "kevalin/mermaid.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("mermaid").setup({
      format = {
        shift_width = 2,           -- Indentation size (spaces)
      },
      lint = {
        enabled = true,            -- Enable diagnostics via mmdc
        command = "mmdc -p ~/.config/nvim/puppeteer-config.json",           -- Path to mermaid-cli executable
      },
      preview = {
        renderer = "mermaid.js",   -- "mermaid.js" or "beautiful-mermaid"
        theme = "default",          -- Theme name (renderer-specific)
      },
    })

    -- Install the Tree-sitter parser:
    -- :TSInstall mermaid
  end,
}
