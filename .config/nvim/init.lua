require("siegelch")
require("siegelch.remap")
require("siegelch.packer")
-- require("after")

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
-- Plug('sheerun/vim-polyglot')
-- Plug('othree/html5.vim')
-- Plug('https://github.com/lumiliet/vim-twig')
-- Plug('Glench/Vim-Jinja2-Syntax')

-- post install (yarn install | npm install) then load plugin only for editing supported files
-- Plug('prettier/vim-prettier', { ['do'] = 'yarn install --frozen-lockfile --production && yarn add --dev prettier-plugin-twig-melody' })

vim.call('plug#end')
