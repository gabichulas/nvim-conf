return {
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters = {
        golangcilint = {
          append_fname = false,
          ignore_exitcode = true,
          args = {
            "run",
            "--output.json.path=stdout",
            "--output.text.path=",
            "--output.tab.path=",
            "--output.html.path=",
            "--output.checkstyle.path=",
            "--output.code-climate.path=",
            "--output.junit-xml.path=",
            "--output.teamcity.path=",
            "--output.sarif.path=",
            "--issues-exit-code=0",
            "--show-stats=false",
            "--path-mode=abs",
            function()
              return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":p:h")
            end,
          },
        },
      },
    },
  },
}
