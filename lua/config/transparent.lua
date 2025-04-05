require("transparent").setup {
  auto = true, -- Automatically applies transparent
  extra_groups = {"Pmenu", "NormalFloat", "FloatBorder", "Normal", "NormalNC", "NormalSB" }, -- If you want to add some groups to be transparent. eg: { 'NormalNC', 'NormalSB' }
  excludes = {}, -- If you want to excludes from default transparent groups. eg: { 'LineNr' }
}
