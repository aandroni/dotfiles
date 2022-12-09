local status_ok, iron = pcall(require, "iron.core")
if not status_ok then
  return
end

iron.setup {
  config = {
    -- Whether a repl should be discarded or not
    scratch_repl = true,
    -- Your repl definitions come here
    repl_definition = {
      sh = {
        -- Can be a table or a function that
        -- returns a table (see below)
        command = {"zsh"}
      }
    },
    -- How the repl window will be displayed
    -- repl_open_cmd = require('iron.view').bottom(40),
    repl_open_cmd = 'belowright 15 split',
  },
  keymaps = {
    send_motion = "<localleader>sc",
    visual_send = "<localleader>sc",
    send_file = "<localleader>sf",
    send_line = "<localleader>sl",
    send_mark = "<localleader>sm",
    mark_motion = "<localleader>mc",
    mark_visual = "<localleader>mc",
    remove_mark = "<localleader>md",
    cr = "<localleader>s<cr>",
    interrupt = "<localleader>s<localleader>",
    exit = "<localleader>sq",
    clear = "<localleader>cl",
  },
  -- If the highlight is on, you can change how it looks
  -- For the available options, check nvim_set_hl
  highlight = {
    -- italic = true
  },
  ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
}

-- iron also has a list of commands, see :h iron-commands for all available commands
vim.keymap.set('n', '<localleader>rs', '<cmd>IronRepl<cr>')
vim.keymap.set('n', '<localleader>rr', '<cmd>IronRestart<cr>')
vim.keymap.set('n', '<localleader>rf', '<cmd>IronFocus<cr>')
vim.keymap.set('n', '<localleader>rh', '<cmd>IronHide<cr>')

