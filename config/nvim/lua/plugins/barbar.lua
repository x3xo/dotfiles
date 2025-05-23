-- buffers as tabs. Replacing vem-tabline
return {
  'romgrk/barbar.nvim',
  enabled = true,
  dependencies = 'nvim-tree/nvim-web-devicons',
  init = function() vim.g.barbar_auto_setup = false end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    animation = false,
    -- insert_at_start = true,
    -- …etc.
  },
  version = '^1.4.1', -- optional: only update when a new 1.x version is released
}
