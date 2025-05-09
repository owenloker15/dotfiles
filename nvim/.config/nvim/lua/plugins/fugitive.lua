return {
  "tpope/vim-fugitive",
  cmd = { "Git", "G" },
  keys = {
    { "<leader>gs", "<cmd>Git<CR>", desc = "Git status (Fugitive)" },
    { "<leader>gc", "<cmd>Git commit<CR>", desc = "Git commit" },
    { "<leader>gp", "<cmd>Git push<CR>", desc = "Git push" },
    { "<leader>gl", "<cmd>Git pull<CR>", desc = "Git pull" },
    { "<leader>gb", "<cmd>Git blame<CR>", desc = "Git blame" },
  },
  init = function()
    -- Optional: Create a custom command to open Git status in a vertical split
    vim.api.nvim_create_user_command("Gvsplit", function()
      vim.cmd("vsplit | Git")
    end, { desc = "Open :Git in a vertical split" })
  end,
}
