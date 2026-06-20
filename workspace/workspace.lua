local monprime = HOST_VARS.monPrimary
local monsecond = HOST_VARS.monSecondary or HOST_VARS.monPrimary

hl.workspace_rule({ workspace = "1", monitor = monprime })
hl.workspace_rule({ workspace = "2", monitor = monprime })
hl.workspace_rule({ workspace = "3", monitor = monprime })
hl.workspace_rule({ workspace = "4", monitor = monsecond })
hl.workspace_rule({ workspace = "5", monitor = monsecond })
hl.workspace_rule({ workspace = "6", monitor = monsecond })
hl.workspace_rule({ workspace = "7", monitor = monsecond })
hl.workspace_rule({ workspace = "8", monitor = monsecond })
hl.workspace_rule({ workspace = "9", monitor = monsecond })
