local lspconfig = require 'lspconfig'
local configs = require 'lspconfig/configs'

if not configs.golangcilsp then
 	configs.golangcilsp = {
		default_config = {
			cmd = {'gopls'},
			root_dir = lspconfig.util.root_pattern('.git', 'go.mod', 'go.work'),
		};
	}
end
lspconfig.gopls.setup {
	filetypes = {'go','gomod', 'gowork', 'gotmpl'},
}
