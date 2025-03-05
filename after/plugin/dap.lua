local dap, dapui = require("dap"), require("dapui")
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

vim.keymap.set({"n", "v"}, "<leader>ev", dapui.eval, { desc = "Debug Eval" })

vim.keymap.set("n", "<leader>br", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
vim.keymap.set("n", "<F10>", dap.continue, { desc = "Debug Continue" })
vim.keymap.set("n", "<F7>", dap.step_into, { desc = "Step Into" })
vim.keymap.set("n", "<F8>", dap.step_over, { desc = "Step Over" })
vim.keymap.set("n", "<F6>", dap.step_out, { desc = "Step Out" })

vim.keymap.set("n", "<C-<F10>>", dap.restart, { desc = "Debug Restart" })

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = '/home/roman/.local/share/nvim/mason/bin/codelldb',
    args = {"--port", "${port}"},

    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}

