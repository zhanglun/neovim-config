local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

-- code action sources
local code_actions = null_ls.builtins.code_actions

-- diagnostic sources
local diagnostics = null_ls.builtins.diagnostics

-- formatting sources
local formatting = null_ls.builtins.formatting

-- completion sources
local completion = null_ls.builtins.completion

local sources = {

  -- cpp
  formatting.clang_format,

  -- rust
  formatting.rustfmt,

  -- Lua
  formatting.stylua,

  formatting.prettier,

  formatting.rome,

  formatting.rustywind,

  --
  diagnostics.write_good,

  diagnostics.cspell,
  --
  completion.spell,
  --
  code_actions.eslint_d,
  --
  code_actions.gitsigns,

}

null_ls.setup {
  debug = true,
  sources = sources,
}
