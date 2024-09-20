return {
    'goolord/alpha-nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        -- Function to calculate the startup time
        local function get_startup_time()
            local end_time = vim.loop.hrtime()
            local duration = (end_time - vim.g.start_time) / 1e6  -- Convert from nanoseconds to milliseconds
            return string.format(" Startup Time: %.2f ms", duration)
        end

        -- Get the default theta config and add the startup time
        local theta = require'alpha.themes.theta'
        theta.config.layout[3] = {
            type = "text",
            val = get_startup_time,
            opts = { position = "center", hl = "String" },
        }

        require'alpha'.setup(theta.config)
    end
}
