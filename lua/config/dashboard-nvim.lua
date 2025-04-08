local api = vim.api
local keymap = vim.keymap
local dashboard = require("dashboard")

local conf = {}
conf.header = {
  "Okkkkkkkkkkkkkkkxkdolc::lc:clcclc:clcc:ol:;::okkxxxxkkkkkkkkkkkkkkkkkkkkkkkkkkkk",
  "kxxxxxxxxxxxxxxxxdlc:;;::;clccc::c:o:cc:cc::::cdxxxxxxxxxxxxxxxxxxkkxxxxxxxkkxkk",
  "kxxxxxxxxxxxxxxxdolcl::c;llloc::cc:doccc::c:l:ccoxxxxxxxxxxxxxxxxxkkxxxxkxxxxxxk",
  "kxxxxxxxxxxxxxddooolcoc:olol::clcc:od:llc;:l:o:cllxxxxxxxxxxxxxxxxkxxxxxxxxxxxxk",
  "kxxxxxxxxxxxxdocollco:;lclcc;;o:olccdc:Ooc::c;o::ooxxxxxxxxxxxxxxkkkxxxxxxxxxxxk",
  "kxxxxxxxxxxxoo:cc;:o:,;cccc:;o:;colll:cOk:c;l;ll;cooxxxxxxxxxxxxxkkxxxxxxxxxxxxx",
  "Oxxxxxxxxxxxl;;c,,c:,'cccllclll:llklo:cxkd:;c::cc;looxxxxxxxxxxxxxkxxxxxxxxxxxxx",
  "Oxxxxxxxxxxoc,::'',,',lllldocd0KKKXK00kdOxl,:cc;::;coxxxxxxxxxxxxxkxxxxxxxxxxxxx",
  "Oxxxxxxxxxxl:,c;,dd;':lclokOKXXKKKXXXXXKxo:;;lc::;::cxxxxxxxxxxxxxxxxxxxxxxxxxxk",
  "Oxxxxxxxxxx:;,c;oXOO;:ccoOXXXXXXXKOxdOXXKkO0d:;;c,,::dxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "Oxxxxxxxxxx::,:;:00k::cldKXOdlloxOKXK0KXXXXX0c,;c,,;lloxxxxxxxxxxxkxxxxxxxxxxxxk",
  "Oxxxxxxxxxxc;',:'oOxllllxXXKkdlc:oxkXXXXXXXOod:,:,;;xxxxxxxxxxxxxxxxxxxxxxxxxxxk",
  "Oxxxxxxxxxxd:,,;':0Okl:cOKKKKK000KXKXXXXXXKoloc,:,:dxxxxxxxxxxxxxxxxxxxxxxxxxxxk",
  "Oxxxxxxxxxxxd;,;,''oKOcOkKKKKXXXXXXXXXXXXKOdd0o;::xxxxxxxxxxxxxxxxxxxxxxxxxxxxxk",
  "Oxxxxxxxxxxxxx:;'','oX00KKKXXXXXXXXXXXXXXK0KKK:c:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "Oxxxxxxxxxxxxdcl:',';OXXXXXXXXXXXXXXXXKKXXKKKxcclxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxk",
  "Oxxxxxxxxxxxxxxxxo,':dKXXXXXXXXXXXXXXXKK0OXXOdxclxxxxxxxxxxxxxxxxxkxxxxxxxxxxxxx",
  "Oxxxxxxxxxxxxxxxxo:l:xxOXXXXXXXXKKO0000KKXXOdxxxdxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "OxxxxxxxxxxxxxxxxxxxkK0xk0KXXXXXXX0kxdooxKkxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "Oxxxxxxxxxxxxdolc:::oXXK0kO0KXXXXXXXXKKKkxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxk",
  "Oxxxxxxxxxo:;,,,;;;,lOkOOOkkxxkO0XXXK0kxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "0xxxxxxxxd;;:cclloooooolllcc:;;;;,,''oxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "0xxxxxxxxx;::cllloooolc::::;;;;;;;,',;lddooxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "0xxxxxxxxxlc:::ccoooollcc::::;;;,,;:::::xOc'ckxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "0xxxxxxxxxc;cc;:ccllcccc::::::;;;:;:::::::xl.:0KOxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "0xxxxxxd:,c0XXk:,;;;;;;::::::;;;;;;;::::::;:;.:0K0xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "0xxxxxkOo,',dXNXd;::::::::::;;;;;;:;;;;;;;;:;,.o00Oxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "0xxxkKXXXKd,,:xKKo;;::::::::;;;;;;;;:::;;:::::::O0Oxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "0xxOXXKKKKK0l;:cO0;::::::::::::;;;;;::::::::::::cokxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "0x0XXKKKXKKKXk:;:0l::::::::::::ccc::::::::::::cccc:lxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "00XXXXXXXKKXXK0c,;l;:::c:ccccccccccccc:::::::ccccllcldxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "KKKXXXXXXXXXXXK0:'';:::cccccccccccccccc:ccccccccccllccoxxxxxxxxxxxxxxxxxxxxxxxxx",
  "KKKXXXXXXXXXXXKKk'';:cccccccccccccccccccccccccccclllllclxxxxxxxxxxxxxxxxxxxxxxxx",
  "KKKKXXXXXXXXXXK0Kc'::cccccccccccccccccccccccccccccccccc:oxxxxxxxxxxxxxxxxxxxxxxx",
  "KKKKKXXXXXXXXKK0Kd,::cccccccccccccccccccccc:::::::cccccc:xxxxxxxxxxxxxxxxxxxxxxx",
  "KKKKKXXXXXXXXXXOKc;:;:::ccccccccccc::ccccc::::::::ccc:cc:oxxxxxxxxxxxxxxxxxxxxxx",
  "OKKKKKXXXXXXXXXOl,::,;;:::::cccc:::::::::::;;::::::::::::lxxxxxxxxxxxxxxxxxxxxxx",
  "OOKKKKXXXXXXXXXO',:;,,;;::::::::::::::::::;;:::::::::::::cxxxxxxxxxxxxxdolcdxxxx",
  "OOKKKKXXXXXXXXXO',:;,,;;::::::::::::::::::;;:::::::::::::cxxxxxxxxxol::cll:oxxxx",
  "OxKKKKXXXXXXXXXO',;,,,;;;:::::::::::::::::::;:::::::;:::::xxxxxxxdcccccc:oxxxxxx",
}

conf.center = {
  {
    icon = "󰈞  ",
    desc = "Find  File                              ",
    action = "FzfLua files",
    key = "<Leader> f f",
  },
  {
    icon = "󰈢  ",
    desc = "Recently opened files                   ",
    action = "FzfLua oldfiles",
    key = "<Leader> f r",
  },
  {
    icon = "󰈬  ",
    desc = "Project grep                            ",
    action = "FzfLua live_grep",
    key = "<Leader> f g",
  },
  {
    icon = "  ",
    desc = "Open Nvim config                        ",
    action = "tabnew $MYVIMRC | tcd %:p:h",
    key = "<Leader> e v",
  },
  {
    icon = "  ",
    desc = "New file                                ",
    action = "enew",
    key = "e",
  },
  {
    icon = "󰗼  ",
    desc = "Quit Nvim                               ",
    -- desc = "Quit Nvim                               ",
    action = "qa",
    key = "q",
  },
}

dashboard.setup {
  theme = "doom",
  shortcut_type = "number",
  config = conf,
}

api.nvim_create_autocmd("FileType", {
  pattern = "dashboard",
  group = api.nvim_create_augroup("dashboard_enter", { clear = true }),
  callback = function()
    keymap.set("n", "q", ":qa<CR>", { buffer = true, silent = true })
    keymap.set("n", "e", ":enew<CR>", { buffer = true, silent = true })
  end,
})
