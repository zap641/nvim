local function run_curr_rust_program()
    -- Get terminal codes for running python file
    -- ("i" to enter insert before typing rest of the command)
    local rust_cmd = vim.api.nvim_replace_termcodes("icargo run <cr>", true, false, true)

    -- Determine terminal window split and launch terminal
    local percent_of_win = 0.4
    local curr_win_height = vim.api.nvim_win_get_height(0) -- Current window height
    local term_height = math.floor(curr_win_height * percent_of_win) -- Terminal height
    vim.cmd(":below " .. term_height .. "split | term pwsh") -- Launch terminal (horizontal split)

    -- Press keys to run python command on current file
    vim.api.nvim_feedkeys(rust_cmd, "t", false)
end

vim.keymap.set({'n'}, '<A-r>', '', { 
    desc = "Run .py file via Neovim built-in terminal", 
    callback = run_curr_rust_program
})
