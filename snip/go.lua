local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- snippet "iif" expands to `if err != nil { return err }`
  s('iif', {
    t 'if err != nil {',
    t { '', '\t' },
    i(1, 'return err'),
    t { '', '}' },
  }),

  -- snippet "fori" expands to a for loop
  s('fori', {
    t 'for ',
    i(1, 'i'),
    t ' := 0; ',
    i(2, 'i'),
    t ' < ',
    i(3, 'n'),
    t '; ',
    i(4, 'i++'),
    t ' {',
    t { '', '\t' },
    i(0),
    t { '', '}' },
  }),

  -- snippet "func" expands to a function template
  s('fn', {
    t 'func ',
    i(1, 'name'),
    t '(',
    i(2),
    t ') ',
    i(3),
    t ' {',
    t { '', '\t' },
    i(0),
    t { '', '}' },
  }),
  s('afn', {
    t 'func ',
    t '(',
    i(1),
    t ') ',
    i(2),
    t ' {',
    t { '', '\t' },
    i(0),
    t { '', '}' },
  }),

  -- for-select loop snippet
  s('fsl', {
    t 'for {',
    t { '', '\tselect {' },
    t { '', '\tcase ' },
    i(1, '<-ch'),
    t ':',
    t { '', '\t\t' },
    i(2, '// handle channel message'),
    t { '', '\tdefault:' },
    t { '', '\t\t' },
    i(0, '// optional default case'),
    t { '', '\t}' },
    t { '', '}' },
  }),
}
