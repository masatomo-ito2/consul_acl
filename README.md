# Consul ACL

ConsulはACL（Access Control Lists)をもとに、各種のリソースへのアクセスを制限します。これらのリソースは以下のようなものがあります。

- UIへのアクセス
- ASPIへのアクセス
- CLIへのアクセス
- サービスディスカバリ
- エージェント間の通信（クラスタへのJoin, Leaveなど）

ACLはACL Policyによって定義されます。ACL Policy内では各種リソースに対してのRuleが記載されます。RuleはCapabilitiesベースとなっています。

Policyを適用するためには、Tokenが必要です。TokenはACL Policyと紐付いています。このTokenはAgentからConsulへリクエストを送る際のBearer Tokenとして機能します。

---
## ACL rules

Policyは各種Ruleから成り立っています。以下に各種ルールをまとめています。

Ruleの種類  | 対象   | 說明
--|---|--
ACL resource rule  | [ACL API](https://www.consul.io/api/acl/acl.html)  | ACL Policyの作成・表示・変更の権限
Agent rule  | [Agent API](https://www.consul.io/api/agent.html)  | AgentのJoin, Leaveやその他メンテナンス等
Event Rules  | [Event API](https://www.consul.io/api/event.html)  | Eventの発行やリストアップ等
Key/Value Rules  | [KV API](https://www.consul.io/api/kv.html)  |  Key/Value storeへのアクセス制限
Keyring Rules  | [Keyrring API](https://www.consul.io/api/operator/keyring.html)  |  Gossip encryptionの設定等
Node Rules  | **Node level** [Catalog API](https://www.consul.io/api/catalog.html), [Health API](https://www.consul.io/api/health.html), [Agent API](https://www.consul.io/api/agent.html) | Serviceの登録やディスカバリ等
Operator Rules  | [Operator API](https://www.consul.io/api/operator.html)  |  システムレベルのメンテナンス等（Raftの管理、ライセンスの管理など）
Prepared Query Rules  | [Prepared Query API](https://www.consul.io/api/query.html)  |  Prepared queryの管理等
Service Rules  | **Service level** [Catalog API](https://www.consul.io/api/catalog.html), [Health API](https://www.consul.io/api/health.html) |   
Session Rules  | [Session API](https://www.consul.io/api/session.html)  | [Session](https://www.consul.io/docs/internals/sessions.html)の管理など
