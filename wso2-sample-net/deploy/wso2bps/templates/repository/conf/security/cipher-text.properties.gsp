# By default, This file contains the secret alias names and the plain text passwords enclosed with '[]' brackets
# In Production environments, It is recommend to replace these plain text password by the encrypted values. CipherTool can be used for it.

<% secure_vault_configs.each{secure_vault_config_name, secure_vault_config-> %>
<%= secure_vault_config['secret_alias'] %>=[<%= secure_vault_config['password'] %>]
<% } %>