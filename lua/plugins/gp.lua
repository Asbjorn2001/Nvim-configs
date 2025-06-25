return {
    "robitx/gp.nvim",
    config = function()
        require("gp").setup({
            -- openai_api_key = os.getenv("OPEN_API_KEY"), 
        })
    end,
}
