local vim = vim

local M = {}

M.classic = {
    name = 'monokai',
    base1 = '#272a30',
    base2 = '#26292C',
    base3 = '#2E323C',
    base4 = '#333842',
    base5 = '#4d5154',
    base6 = '#9ca0a4',
    base7 = '#b1b1b1',
    border = '#a1b5b1',
    brown = "#504945",
    white = '#f8f8f0',
    grey = '#8F908A',
    black = '#000000',
    pink = '#f92672',
    green = '#a6e22e',
    aqua = '#66d9ef',
    yellow = '#e6db74',
    orange = '#fd971f',
    purple = '#ae81ff',
    red = '#e95678',
    diff_add_fg = '#6a8f1f',
    diff_add_bg = '#3d5213',
    diff_remove_fg = '#4a0f23',
    diff_remove_bg = '#a3214c',
    diff_change_fg = '#7AA6DA',
    diff_change_bg = '#537196',
    none = 'NONE'
}

M.pro = {
    name = 'monokai_pro',
    base1 = '#211F22',
    base2 = '#26292C',
    base3 = '#2E323C',
    base4 = '#333842',
    base5 = '#4d5154',
    base6 = '#72696A',
    base7 = '#B1B1B1',
    border = '#A1B5B1',
    brown = "#504945",
    white = '#FFF1F3',
    grey = '#72696A',
    black = '#000000',
    pink = '#FF6188',
    green = '#A9DC76',
    aqua = '#78DCE8',
    yellow = '#FFD866',
    orange = '#FC9867',
    purple = '#AB9DF2',
    red = '#FD6883',
    diff_add_fg = '#6A8F1F',
    diff_add_bg = '#3D5213',
    diff_remove_fg = '#4A0F23',
    diff_remove_bg = '#A3214C',
    diff_change_fg = '#7AA6DA',
    diff_change_bg = '#537196',
    none = 'NONE'
}

M.material = {
    name = 'monokai_material',
    base1 = '#1F292D',
    base2 = '#232E33',
    base3 = '#263238',
    base4 = '#2D2E27',
    base5 = '#383a3e',
    base6 = '#575b61',
    base7 = '#3F565F',
    border = '#506E79',
    brown = '#504945',
    white = '#CDD3DE',
    pink = '#FC3488',
    green = '#A6E22E',
    aqua = '#66d9ef',
    yellow = '#E6DB74',
    orange = '#FD9720',
    purple = '#ae81ff',
    red = '#e73c50',
    diff_add_fg = '#d7ffaf',
    diff_add_bg = '#5f875f',
    diff_remove_fg = '#5f0000',
    diff_remove_bg = '#f75f5f',
    diff_change_fg = '#d7d7ff',
    diff_change_bg = '#5f5f87',
    none = 'NONE'
}

--let s:addfg       = { "gui": "#d7ffaf", "cterm": "193" }
--let s:addbg       = { "gui": "#5f875f", "cterm": "65" }
--let s:delbg       = { "gui": "#f75f5f", "cterm": "167" }
--let s:changefg    = { "gui": "#d7d7ff", "cterm": "189" }
--let s:changebg    = { "gui": "#5f5f87", "cterm": "60" }


--let s:darkblack   = { "gui": "", "cterm": "233" }
--let s:black       = { "gui": "#263238", "cterm": "235" }
--let s:lightblack  = { "gui": "#2D2E27", "cterm": "234" }
--let s:lightblack2 = { "gui": "#383a3e", "cterm": "236" }
--let s:grey        = { "gui": "#3F565F", "cterm": "238" }
--let s:lightgrey   = { "gui": "#575b61", "cterm": "241" }
--let s:darkgrey    = { "gui": "", "cterm": "236" }
--let s:coolgrey    = { "gui": "#506E79", "cterm": "241" }

--let s:pink        = { "gui": "#FC3488", "cterm": "197" }
--let s:green       = { "gui": "#A6E22E", "cterm": "148" }
--let s:aqua        = { "gui": "#66d9ef", "cterm": "81" }
--let s:blue        = { "gui": "#82B1FF", "cterm": "81" }
--let s:yellow      = { "gui": "#E6DB74", "cterm": "186" }
--let s:orange      = { "gui": "#FD9720", "cterm": "208" }
--let s:purple      = { "gui": "#ae81ff", "cterm": "141" }
--let s:red         = { "gui": "#e73c50", "cterm": "196" }
--let s:darkred     = { "gui": "#5f0000", "cterm": "52" }

M.highlight = function(group, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg = ' .. color.fg or 'guifg = NONE'
    local bg = color.bg and 'guibg = ' .. color.bg or 'guibg = NONE'
    local sp = color.sp and 'guisp = ' .. color.sp or ''
    vim.cmd('highlight ' .. group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp)
end

M.load_syntax = function(palette)
    return {
        Normal = {
            fg = palette.white,
            bg = palette.none,
        },
        NormalFloat = {
            fg = palette.none,
            bg = palette.base1,
        },
        Pmenu = {
            fg = palette.white,
            bg = palette.base3,
        },
        PmenuSel = {
            fg = palette.base4,
            bg = palette.orange,
        },
        PmenuSelBold = {
            fg = palette.base4,
            bg = palette.orange,
        },
        PmenuThumb = {
            fg = palette.purple,
            bg = palette.green,
        },
        PmenuSbar = {
            fg = palette.none,
            bg = palette.base3,
        },
        Cursor = {
            fg = palette.none,
            bg = palette.none,
            style = 'reverse'
        },
        ColorColumn = {
            fg = palette.none,
            bg = palette.base3,
        },
        CursorLine = {
            fg = palette.none,
            bg = palette.base3,
        },
        NonText = {
            fg = palette.base5,
        },
        Visual = {
            bg = palette.base4,
        },
        VisualNOS = {
            bg = palette.base3,
        },
        Search = {
            fg = palette.base2,
            bg = palette.yellow,
        },
        IncSearch = {
            fg = palette.base2,
            bg = palette.yellow,
        },
        CursorLineNr = {
            fg = palette.orange,
            bg = palette.base2,
        },
        MatchParen = {
            fg = palette.pink,
            bg = palette.none,
        },
        Question = {
            fg = palette.yellow,
        },
        ModeMsg = {
            fg = palette.white,
            bg = palette.none,
            style = 'bold',
        },
        MoreMsg = {
            fg = palette.white,
            bg = palette.none,
            style = 'bold',
        },
        ErrorMsg = {
            fg = palette.red,
            bg = palette.none,
            style = 'bold',
        },
        WarningMsg = {
            fg = palette.yellow,
            bg = palette.none,
            style = 'bold',
        },
        VertSplit = {
            fg = palette.brown,
        },
        LineNr = {
            fg = palette.base5,
            bg = palette.base2
        },
        SignColumn = {
            fg = palette.white,
            bg = palette.base2,
        },
        StatusLine = {
            fg = palette.base7,
            bg = palette.base2,
            style = palette.none,
        },
        StatusLineNC = {
            fg = palette.grey,
            bg = palette.base2,
            style = palette.none,
        },
        Tabline = {
            style = palette.none,
        },
        TabLineFill = {
            style = palette.none,
        },
        TabLineSel = {
            bg = palette.base4,
        },
        SpellBad = {
            fg = palette.red,
            bg = palette.none,
            style = 'undercurl',
        },
        SpellCap = {
            fg = palette.purple,
            bg = palette.none,
            style = 'undercurl',
        },
        SpellRare = {
            fg = palette.aqua,
            bg = palette.none,
            style = 'undercurl',
        },
        SpellLocal = {
            fg = palette.pink,
            bg = palette.none,
            style = 'undercurl',
        },
        SpecialKey = {
            fg = palette.pink,
        },
        Title = {
            fg = palette.yellow,
            style = 'bold',
        },
        Directory = {
            fg = palette.aqua,
            bg = palette.none,
        },
        DiffAdd = {
            fg = palette.diff_add_fg,
            bg = palette.diff_add_bg,
        },
        DiffDelete = {
            fg = palette.diff_remove_fg,
            bg = palette.diff_remove_bg,
        },
        DiffChange = {
            fg = palette.diff_change_fg,
            bg = palette.diff_change_bg,
        },
        DiffText = {
            fg = palette.black,
            bg = palette.aqua,
        },
        Folded = {
            fg = palette.grey,
            bg = palette.base3,
        },
        FoldColumn = {
            fg = palette.white,
            bg = palette.black,
        },
        Constant = {
            fg = palette.aqua,
        },
        Number = {
            fg = palette.purple,
        },
        Float = {
            fg = palette.purple,
        },
        Boolean = {
            fg = palette.purple,
        },
        Character = {
            fg = palette.yellow,
        },
        String = {
            fg = palette.yellow,
        },
        Type = {
            fg = palette.aqua,
        },
        Structure = {
            fg = palette.aqua,
        },
        StorageClass = {
            fg = palette.aqua,
        },
        Typedef = {
            fg = palette.aqua,
        },
        Identifier = {
            fg = palette.white,
        },
        Function = {
            fg = palette.green,
        },
        Statement = {
            fg = palette.pink,
        },
        Operator = {
            fg = palette.pink,
        },
        Label = {
            fg = palette.yellow,
        },
        Keyword = {
            fg = palette.pink,
        },
        PreProc = {
            fg = palette.green,
        },
        Include = {
            fg = palette.pink,
        },
        Define = {
            fg = palette.pink,
        },
        Macro = {
            fg = palette.pink,
        },
        PreCondit = {
            fg = palette.pink,
        },
        Special = {
            fg = palette.white,
        },
        SpecialChar = {
            fg = palette.pink,
        },
        Delimiter = {
            fg = palette.white,
        },
        SpecialComment = {
            fg = palette.grey,
        },
        Tag = {
            fg = palette.orange,
        },
        Todo = {
            fg = palette.orange,
        },
        Comment = {
            fg = palette.base6,
        },
        Underlined = {
            fg = palette.none,
            style = 'underline',
        },
        Ignore = {
            fg = palette.none,
        },
        Error = {
            fg = palette.red,
        },
        Terminal = {
            fg = palette.white,
            bg = palette.base2,
        },
        EndOfBuffer = {
            fg = palette.base2,
            bg = palette.none,
        },
        Conceal = {
            fg = palette.grey,
            bg = palette.none,
        },
        vCursor = {
            fg = palette.none,
            bg = palette.none,
            style = 'reverse',
        },
        iCursor = {
            fg = palette.none,
            bg = palette.none,
            style = 'reverse',
        },
        lCursor = {
            fg = palette.none,
            bg = palette.none,
            style = 'reverse',
        },
        CursorIM = {
            fg = palette.none,
            bg = palette.none,
            style = 'reverse',
        },
        CursorColumn = {
            fg = palette.none,
            bg = palette.base3,
        },
        Whitespace = {
            fg = palette.base3,
        },
        WildMenu = {
            fg = palette.white,
            bg = palette.orange,
        },
        QuickFixLine = {
            fg = palette.purple,
            style = 'bold',
        },
        Debug = {
            fg = palette.orange,
        },
        debugBreakpoint = {
            fg = palette.base2,
            bg = palette.red,
        },
        Conditional = {
            fg = palette.pink,
        },
        Repeat = {
            fg = palette.pink,
        },
        Exception = {
            fg = palette.pink,
        }
    }
end

M.load_plugin_syntax = function(palette)
    return {
        TSFunction = {
            fg = palette.green,
        },
        TSMethod = {
            fg = palette.green,
        },
        TSKeywordFunction = {
            fg = palette.pink,
        },
        TSProperty = {
            fg = palette.white,
        },
        TSType = {
            fg = palette.aqua,
        },
        TSPunctBracket = {
            fg = palette.white,
        },
        dbui_tables = {
            fg = palette.white,
        },
        LspDiagnosticsSignError = {
            fg = palette.red,
        },
        LspDiagnosticsSignWarning = {
            fg = palette.yellow,
        },
        LspDiagnosticsSignInformation = {
            fg = palette.white,
        },
        LspDiagnosticsSignHint = {
            fg = palette.aqua,
        },
        LspDiagnosticsVirtualTextError = {
            fg = palette.red,
        },
        LspDiagnosticsVirtualTextWarning = {
            fg = palette.yellow,
        },
        LspDiagnosticsVirtualTextInformation = {
            fg = palette.white,
        },
        LspDiagnosticsVirtualTextHint = {
            fg = palette.aqua,
        },
        LspDiagnosticsUnderlineError = {
            style = 'undercurl',
            sp = palette.red,
        },
        LspDiagnosticsUnderlineWarning = {
            style = 'undercurl',
            sp = palette.yellow,
        },
        LspDiagnosticsUnderlineInformation = {
            style = 'undercurl',
            sp = palette.white,
        },
        LspDiagnosticsUnderlineHint = {
            style = 'undercurl',
            sp = palette.aqua,
        },
        CursorWord0 = {
            bg = palette.white,
            fg = palette.black,
        },
        CursorWord1 = {
            bg = palette.white,
            fg = palette.black,
        },
        NvimTreeFolderName = {
            fg = palette.white,
        },
        NvimTreeRootFolder = {
            fg = palette.pink,
        },
        NvimTreeSpecialFile = {
            fg = palette.white,
            bg = palette.none,
            style = 'NONE',
        },
        TelescopeBorder = {
            fg = palette.border
        },
        TelescopePromptBorder = {
            fg = palette.border
        }
    }
end

M.setup = function(palette)
    vim.cmd('hi clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end
    vim.o.background = 'dark'
    vim.o.termguicolors = true
    local used_palette = palette or M.classic
    vim.g.colors_name = used_palette.name
    local syntax = M.load_syntax(used_palette)
    for group, colors in pairs(syntax) do
        M.highlight(group, colors)
    end
    local async_load_plugin = nil
    async_load_plugin = vim.loop.new_async(
        vim.schedule_wrap(
            function()
                local plugin_syntax = M.load_plugin_syntax(used_palette)
                for group, colors in pairs(plugin_syntax) do
                    M.highlight(group, colors)
                end
                async_load_plugin:close()
            end
        )
    )
    async_load_plugin:send()
end

return M
