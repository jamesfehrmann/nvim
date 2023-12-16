return {
  'numToStr/Comment.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    --'JoosepAlviste/nvim-ts-context-commentstring',
  },
  config = function()
    require('Comment').setup()
    --require('ts_context_commentstring.integrations.comment_nvim')
  end,
}
