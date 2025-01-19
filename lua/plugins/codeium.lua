return {
  "Exafunction/codeium.vim",
  config = function()
    -- vim.keymap.set("i", "<Tab>", function()
    --   return vim.fn["codeium#Accept"]() ~= "" and vim.fn["codeium#Accept"]() or "<Tab>"
    -- end, { expr = true, silent = true })

    -- Set the fallback for <Tab>
    vim.g.codeium_tab_fallback = "<Tab>"

    -- Map <Tab> to accept Codeium suggestions
    vim.keymap.set("i", "<Tab>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true, silent = true })

    vim.keymap.set("i", "<c-;>", function()
      return vim.fn
    end, { expr = true, silent = true })

    vim.keymap.set("i", "<c-,>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true, silent = true })

    vim.keymap.set("i", "<c-x>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true, silent = true })
  end,
}
