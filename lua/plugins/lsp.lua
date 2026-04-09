-- Disable Mason on nixos
if os.getenv('NIX_NEOVIM') == '1' then
  return {
    { "mason-org/mason-lspconfig.nvim", enabled = false },
    { "mason-org/mason.nvim", enabled = false },
  }
else 
  return {}
end
