return {
  'numToStr/Comment.nvim',
  opts = {
    -- add any options here
  },
  config = function()
    local ft = require('Comment.ft')
    ft.hcl = { '#%s', '/*%s*/' }

    require('Comment').setup()
  end
}
