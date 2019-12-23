{
	"server": true,
	"node_name": "consul-server",
	"bootstrap": true,
	"bootstrap_expect": 1,
	"data_dir": "./data_dir",
	"bind_addr": "127.0.0.1",
	"ui": true,
	"acl": {
		"enabled": true,
		"default_policy": "deny",
		"down_policy": "extend-cache"
	}
}
