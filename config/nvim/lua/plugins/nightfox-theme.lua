return {
  "EdenEast/nightfox.nvim",
  config = function ()
    -- vim.cmd.colorscheme "nightfox"
    -- vim.cmd.colorscheme "terafox"
    vim.cmd.colorscheme "duskfox"

    vim.cmd([[
      hi BufferCurrent guibg=#373354
      hi BufferCurrentSign guibg=#373354
      hi BufferCurrentMod guibg=#373354

      " list of all current buffer highlights for barbar
      " hi BufferCurrent guibg=#ff0000
      " hi BufferCurrentBtn guibg=#ff0000
      " hi BufferCurrentMod guibg=#ff0000
      " hi BufferCurrentPin guibg=#ff0000
      " hi BufferCurrentHINT guibg=#ff0000
      " hi BufferCurrentINFO guibg=#ff0000
      " hi BufferCurrentIcon guibg=#ff0000
      " hi BufferCurrentSign guibg=#ff0000
      " hi BufferCurrentWARN guibg=#ff0000
      " hi BufferCurrentADDED guibg=#ff0000
      " hi BufferCurrentERROR guibg=#ff0000
      " hi BufferCurrentIndex guibg=#ff0000
      " hi BufferCurrentModBtn guibg=#ff0000
      " hi BufferCurrentNumber guibg=#ff0000
      " hi BufferCurrentPinBtn guibg=#ff0000
      " hi BufferCurrentTarget guibg=#ff0000
      " hi BufferCurrentCHANGED guibg=#ff0000
      " hi BufferCurrentDELETED guibg=#ff0000
      " hi BufferCurrentSignRight guibg=#ff0000
      " hi BufferDefaultCurrent guibg=#ff0000
      " hi BufferDefaultCurrentBtn guibg=#ff0000
      " hi BufferDefaultCurrentMod guibg=#ff0000
      " hi BufferDefaultCurrentPin guibg=#ff0000
      " hi BufferDefaultCurrentHINT guibg=#ff0000
      " hi BufferDefaultCurrentINFO guibg=#ff0000
      " hi BufferDefaultCurrentIcon guibg=#ff0000
      " hi BufferDefaultCurrentSign guibg=#ff0000
      " hi BufferDefaultCurrentWARN guibg=#ff0000
      " hi BufferDefaultCurrentADDED guibg=#ff0000
      " hi BufferDefaultCurrentERROR guibg=#ff0000
      " hi BufferDefaultCurrentIndex guibg=#ff0000
      " hi BufferDefaultCurrentModBtn guibg=#ff0000
      " hi BufferDefaultCurrentNumber guibg=#ff0000
      " hi BufferDefaultCurrentPinBtn guibg=#ff0000
      " hi BufferDefaultCurrentTarget guibg=#ff0000
      " hi BufferDefaultCurrentCHANGED guibg=#ff0000
      " hi BufferDefaultCurrentDELETED guibg=#ff0000
      " hi BufferDefaultCurrentSignRight guibg=#ff0000


    ]])

  end
}
