local M = {
  "goolord/alpha-nvim",
  event = "VimEnter",
  commit = "dafa11a6218c2296df044e00f88d9187222ba6b0",
}
function M.config()
  local alpha = require("alpha")
  local dashboard = require("alpha.themes.dashboard")
  dashboard.section.header.val = {
    [[__      _______   _____ __  __ _____  _____   ______      ________ _____  ]],
    [[\ \    / /_   _| |_   _|  \/  |  __ \|  __ \ / __ \ \    / /  ____|  __ \ ]],
    [[ \ \  / /  | |     | | | \  / | |__) | |__) | |  | \ \  / /| |__  | |  | |]],
    [[  \ \/ /   | |     | | | |\/| |  ___/|  _  /| |  | |\ \/ / |  __| | |  | |]],
    [[   \  /   _| |_   _| |_| |  | | |    | | \ \| |__| | \  /  | |____| |__| |]],
    [[    \/   |_____| |_____|_|  |_|_|    |_|  \_\\____/   \/   |______|_____/ ]],
    [[Vim config by MXCHETE                                                     ]],
  }
  dashboard.section.buttons.val = {
    dashboard.button("f", "[0]" .. " Find file", ":Telescope find_files <CR>"),
    dashboard.button("e", "[1]" .. " New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("p", "[2]" .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
    dashboard.button("r", "[3]" .. " Recent files", ":Telescope oldfiles <CR>"),
    dashboard.button("t", "[4]" .. " Find text", ":Telescope live_grep <CR>"),
    dashboard.button("c", "[5]" .. " Config", ":e $MYVIMRC <CR>"),
    dashboard.button("l", "[6]" .. " Lazy", ":Lazy<CR>"),
    dashboard.button("s", "[7]" .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
    dashboard.button("q", "[8]" .. " Quit", ":qa<CR>"),
  }
  local function footer()
    math.randomseed(os.time())
    local var = math.random(0, 5)
    if var == 0 then
      return {
        [[      https://github.com/Mxchete      ]],
        [[Help Uganda : https://iccf-holland.org]],
      }
    elseif var == 1 then
      return {
        [[      https://github.com/Mxchete      ]],
        [[   Vim - The Ubiquitous Text Editor   ]],
      }
    elseif var == 2 then
      return {
        [[      https://github.com/Mxchete      ]],
        [[  Io sono qui, in un mondo che ormai  ]],
      }
    elseif var == 3 then
      return {
        [[      https://github.com/Mxchete      ]],
        [[I want to get off Mr. Bones Wild Ride.]],
      }
    elseif var == 4 then
      return {
        [[      https://github.com/Mxchete      ]],
        [[          Black Lives Matter          ]],
      }
    else
      return {
        [[      https://github.com/Mxchete      ]],
        [[           Love is love! <3           ]],
      }
    end
  end

  dashboard.section.footer.val = footer()

  dashboard.section.footer.opts.hl = "Type"
  dashboard.section.header.opts.hl = "Include"
  dashboard.section.buttons.opts.hl = "Keyword"

  dashboard.opts.opts.noautocmd = true
  alpha.setup(dashboard.opts)
end

return M
