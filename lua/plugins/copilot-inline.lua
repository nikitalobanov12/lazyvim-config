return {
  -- Keep copilot.lua but disable completions
  {
    "zbirenbaum/copilot.lua",
    optional = true,
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
  },

  -- CopilotChat for inline popup at cursor
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      "zbirenbaum/copilot.lua",
      { "nvim-lua/plenary.nvim", lazy = true },
    },
    opts = {
      -- Use simple configuration to avoid sorting errors
      window = {
        layout = "float",
        width = 60,
        height = 10,
        border = "rounded",
      },
      show_help = false,
      auto_insert_mode = false,
    },
    config = function(_, opts)
      local chat = require("CopilotChat")
      chat.setup(opts)

      -- Set up help mapping for chat buffers
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "copilot-chat",
        callback = function(event)
          vim.keymap.set("n", "gh", function()
            local help_text = {
              "CopilotChat Help:",
              "",
              "Insert Mode:",
              "  <Tab>     - Accept completion",
              "  <C-c>     - Close chat",
              "  <C-l>     - Clear chat",
              "  <C-s>     - Submit prompt",
              "",
              "Normal Mode:",
              "  q         - Close chat",
              "  <C-l>     - Clear chat",
              "  <CR>      - Submit prompt",
              "  <C-y>     - Accept diff",
              "  gd        - Show diff",
              "  gy        - Yank diff",
              "",
              "Press <Esc> to close this help",
            }

            vim.notify(table.concat(help_text, "\n"), vim.log.levels.INFO, { title = "CopilotChat Help" })
          end, { buffer = event.buf, desc = "Show CopilotChat help" })
        end,
      })
    end,
    keys = function()
      local function open_inline_chat(use_visual)
        return function()
          local ok, chat = pcall(require, "CopilotChat")
          if not ok then
            vim.notify("CopilotChat not available", vim.log.levels.WARN)
            return
          end
          
          -- Simple open without complex config
          chat.open()
          
          -- Enter insert mode for immediate typing
          vim.schedule(function()
            vim.cmd("startinsert!")
          end)
        end
      end

      return {
        { "<C-i>", open_inline_chat(false), mode = "n", desc = "Copilot Inline Chat (cursor)" },
        { "<C-i>", open_inline_chat(true), mode = { "x", "v" }, desc = "Copilot Inline Chat (visual)" },
        { "<C-S-i>", open_inline_chat(false), mode = "n", desc = "Copilot Inline Chat (cursor)" },
        { "<C-S-i>", open_inline_chat(true), mode = { "x", "v" }, desc = "Copilot Inline Chat (visual)" },
      }
    end,
  },
}
