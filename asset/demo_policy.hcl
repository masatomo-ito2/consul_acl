node_prefix "" {
   policy = "write"
}
service_prefix "" {
   policy = "read"
}
key_prefix "keys/" {
	policy = "read"
}
key "keys/writable" {
	policy = "write"
}
key "keys/noaccess" {
	policy = "deny"
}
