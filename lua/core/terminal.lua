local function run_terminal()
    -- Determine terminal window split and launch terminal
    local percent_of_win = 0.4
    local curr_win_height = vim.api.nvim_win_get_height(0) -- Current window height
    local term_height = math.floor(curr_win_height * percent_of_win) -- Terminal height
    vim.cmd(":below " .. term_height .. "split | term pwsh") -- Launch terminal (horizontal split)
    local cmd = vim.api.nvim_replace_termcodes("i", true, false, true)
    vim.api.nvim_feedkeys(cmd, "t", false)
end

local function run_rust_program()
    run_terminal()
    local cmd = vim.api.nvim_replace_termcodes("cargo run <cr>", true, false, true)
    vim.api.nvim_feedkeys(cmd, "t", false)
end

local function run_curr_python_file()
    local file_name = vim.api.nvim_buf_get_name(0)
    run_terminal()
    local cmd = vim.api.nvim_replace_termcodes("python \"" .. file_name .. "\"<cr>", true, false, true)
    vim.api.nvim_feedkeys(cmd, "t", false)
end

vim.keymap.set({'n'}, '<A-t>', '', { 
    desc = "Run Neovim built-in terminal",
    callback = run_terminal
})

vim.keymap.set({'n'}, '<A-r>', '', { 
    desc = "Run and compile rust program via Neovim built-in terminal", 
    callback = run_rust_program
})

vim.keymap.set({'n'}, '<A-p>', '', { 
    desc = "Run .py file via Neovim built-in terminal", 
    callback = run_curr_python_file
})
