-- Vanilla Config
require('0DASAC.settings')
require('0DASAC.plugins')
require('0DASAC.keymaps')

---Pretty print lua table
function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, { ... })
    print(unpack(objects))
end
