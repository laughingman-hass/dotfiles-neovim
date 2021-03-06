function Goimports(timeoutms)
  local context = { source = { organizeImports = true } }
  vim.validate { context = { context, "t", true } }

  local params = vim.lsp.util.make_range_params()
  params.context = context

  local method = "textDocument/codeAction"
  local req_s = vim.lsp.buf_request_sync(0, method, params, timeoutms)
  if req_s and req_s[1] then
    local result = req_s[1].result
    if result and result[1] then
      local edit = result[1].edit
      vim.lsp.util.apply_workspace_edit(edit)
    end
  end

  vim.lsp.buf.formatting_sync()
end

vim.cmd("autocmd BufWritePre *.go lua Goimports(1000)")
