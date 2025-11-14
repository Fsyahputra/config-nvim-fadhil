local ls = require 'luasnip'
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

return {
  s('mtd', {
    t 'def ',
    i(1, 'func_name'),
    t '(self, ',
    i(2, ''),
    t ' )',
    t '->',
    i(3, 'None'),
    t ':',
    t { '', '    ' },
    i(0, '# TODO: isi fungsi di sini'),
  }),
}
