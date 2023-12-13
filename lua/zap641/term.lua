local function run_terminal()
    -- Determine terminal window split and launch terminal
    local percent_of_win = 0.4
    local curr_win_height = vim.api.nvim_win_get_height(0) -- Current window height
    local term_height = math.floor(curr_win_height * percent_of_win) -- Terminal height
    vim.cmd(":below " .. term_height .. "split | term pwsh") -- Launch terminal (horizontal split)
end

vim.keymap.set({'n'}, '<A-t>', '', { 
    desc = "Run .py file via Neovim built-in terminal",
    callback = run_terminal
})
