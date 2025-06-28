-- May need to run bash ~/.local/share/nvvim/lazy/sniprun/install.sh
return {
  'michaelb/sniprun',
  tag = 'v1.3.18', -- or, branch = '0.1.x',
  build = 'bash ./install.sh',
  config = function()
    require("sniprun").setup({
    -- your options
    })
  end,
}
