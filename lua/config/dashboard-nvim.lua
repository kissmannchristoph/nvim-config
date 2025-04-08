local api = vim.api
local keymap = vim.keymap
local dashboard = require("dashboard")

local logo = [[
                  Xxlc::lc:clcclc:clcc:ol:;:c0
                NOdc:;;::;clccc::c:o:cc:cc::::oK
               Kdolcl::c;llloc::cc:doccc::c:l:cck
             NOdooolcoc:olol::clcc:od:llc;:l:o:cldN
            Nxocollco:;lclcc;;o:olccdc:Ooc::c;o::odN
            ko:cc;:o:,;cccc:;o:;colll:cOk:c;l;ll;codN
           Nl;;c,,c:,'cccllclll:llklo:cxkd:;c::cc;loO
           0c,::'',,',lllldocd0KKKXK00kdOxl,:cc;::;cd
           k:,c;,dd;':lclokOKXXKKKXXXXXKxo:;;lc::;::cN
           o;,c;oXOO;:ccoOXXXXXXXKOxdOXXKkO0d:;;c,,::K
           l:,:;:00k::cldKXOdlloxOKXK0KXXXXX0c,;c,,;xx0
           d;',:'oOxllllxXXKkdlc:oxkXXXXXXXOod:,:,;:N
           K:,,;':0Okl:cOKKKKK000KXKXXXXXXKoloc,:,cX
            Kc,;,''oKOcOkKKKKXXXXXXXXXXXXKOdd0o;:lN
             Nc;'','oX00KKKXXXXXXXXXXXXXXK0KKK:clN
             Nxko',';OXXXXXXXXXXXXXXXXKKXXKKKxock
                 O,':dKXXXXXXXXXXXXXXXKK0OXXOK oO
                 0cklxxOXXXXXXXXKKO0000KKXX0K   K
                 NN KK0xk0KXXXXXXX0kxdooxK0N
            NKOkdooodXXK0kO0KXXXXXXXXKKK0X
          Ol;,,,;;;,lOkOOOkkxxkO0XXXK00X
         N;;:cclloooooolllcc:;;;;,,''O
          :::cllloooolc::::;;;;;;;,',;d0OO0N
          kc:::ccoooollcc::::;;;,,;:::::xOc,oKXN
         No;cc;:ccllcccc::::::;;;:;:::::::xl.:0XXX
       Xo,c0XXk:,;;;;;;::::::;;;;;;;::::::;:;.:0K0K
     NN0o,',dXNXd;::::::::::;;;;;;:;;;;;;;;:;,.o000
   NXXXXXKd,,:xKKo;;::::::::;;;;;;;;:::;;:::::::O00N
  XKXXKKKKK0l;:cO0;::::::::::::;;;;;::::::::::::cd0
 N0XXKKKXKKKXk:;:0l::::::::::::ccc::::::::::::cccc:k
XKXXXXXXXKKXXK0c,;l;:::c:ccccccccccccc:::::::ccccllcoK
NKKXXXXXXXXXXXK0:'';:::cccccccccccccccc:ccccccccccllccO
NKKXXXXXXXXXXXKKk'';:cccccccccccccccccccccccccccclllllcx
NKKKXXXXXXXXXXK0Kc'::cccccccccccccccccccccccccccccccccc:O
NKKKKXXXXXXXXKK0Kd,::cccccccccccccccccccccc:::::::cccccccN
NKKKKXXXXXXXXXXOKc;:;:::ccccccccccc::ccccc::::::::ccc:cc:0
XKKKKKXXXXXXXXXOl,::,;;:::::cccc:::::::::::;;::::::::::::x
XOKKKKXXXXXXXXXO',:;,,;;::::::::::::::::::;;:::::::::::::d
 0KKKKXXXXXXXXXO',:;,,;;::::::::::::::::::;;:::::::::::::o
 OKKKKXXXXXXXXXO',;,,,;;;:::::::::::::::::::;:::::::;::::c
]]

dashboard.setup {
  theme = "hyper",
  shortcut_type = "number",
  config = {
    header = vim.split(logo, "\n"),
    hide = {
      statusline = false,
    },
    center = {},
  },
}

api.nvim_create_autocmd("FileType", {
  pattern = "dashboard",
  group = api.nvim_create_augroup("dashboard_enter", { clear = false }),
  callback = function()
    keymap.set("n", "q", ":qa<CR>", { buffer = true, silent = true })
    keymap.set("n", "e", ":enew<CR>", { buffer = true, silent = true })
  end,
})
