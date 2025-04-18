local status_ok, nullls = pcall(require, "null-ls")

if not status_ok then
	return
end

nullls.setup({
	sources = {
		require("null-ls").builtins.formatting.stylua,
		require("null-ls").builtins.formatting.goimports,
		require("null-ls").builtins.formatting.prettierd,
		require("null-ls").builtins.formatting.sql_formatter,
		require("null-ls").builtins.formatting.gofmt,
		require("null-ls").builtins.formatting.clang_format,
		require("null-ls").builtins.diagnostics.pylint,
		require("null-ls").builtins.diagnostics.golangci_lint,
		require("null-ls").builtins.completion.spell,
	},
})
