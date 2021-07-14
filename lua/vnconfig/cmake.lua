local Job = require('plenary.job')
local M = {}

M.configure = function()
    local lines = {""}
    local cwin = vim.fn.win_getid()
    --  local buf = vim.api.nvim_create_buf(true, false)


    local on_output = function(err, data, job)
        vim.schedule(function()
            vim.api.nvim_err_writeln(data)
        end)
    end

    Job:new {
        command = vim.fn.expandcmd('cmake'),
        args = { '-S', '.', '-B', 'build' },
        on_stdout = function()end,
        on_stderr = on_output,
        on_exit = function(job, code, signal)
        end
    }:start()
end

return M


M.build = function()
    local lines = {""}
    local cwin = vim.fn.win_getid()
    --  local buf = vim.api.nvim_create_buf(true, false)
    local on_output = function(err, data, job)
        vim.schedule(function()
            vim.api.nvim_err_writeln(data)
        end)
    end

    Job:new {
        command = vim.fn.expandcmd('cmake'),
        args = { '--build', 'build' },
        on_stdout = function()end,
        on_stderr = on_output,
        on_exit = function(job, code, signal)
        end
    }:start()
end

return M
