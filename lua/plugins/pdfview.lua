return {
  {
    "basola21/PDFview",
    lazy = false,
    dependencies = { "nvim-telescope/telescope.nvim" },
    keys = {
      {
        "<leader>fp",
        function()
          require("pdfview").open()
        end,
        desc = "Find / Open PDF",
      },
      {
        "<leader>jj",
        function()
          require("pdfview.renderer").next_page()
        end,
        desc = "PDF: Next page",
      },
      {
        "<leader>kk",
        function()
          require("pdfview.renderer").previous_page()
        end,
        desc = "PDF: Previous page",
      },
    },
    config = function()
      -- Auto-render PDF when reading a .pdf file buffer
      vim.api.nvim_create_autocmd("BufReadPost", {
        pattern = "*.pdf",
        callback = function()
          local file_path = vim.api.nvim_buf_get_name(0)
          require("pdfview").open(file_path)
        end,
      })
    end,
  },
}
