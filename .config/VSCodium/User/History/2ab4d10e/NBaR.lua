------------------
---- MONITORS ----
------------------

--main--
hl.monitor({
    output   = "DP-3",
    mode     = "1920x1080@60",
    position = "0x0",
    scale    = "1",
})
-- Huion --
hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@60",
    position = "-1280x200",
    scale    = "1.5",
})
-- workspaces --
hl.workspace_rule({ workspace = "1", monitor = "DP-3", persistent = true})
hl.workspace_rule({ workspace = "2", monitor = "DP-3",persistent = true})
hl.workspace_rule({ workspace = "3", monitor = "DP-3",persistent = true})
hl.workspace_rule({ workspace = "4", monitor = "DP-3",persistent = true})
hl.workspace_rule({ workspace = "5", monitor = "DP-3",persistent = true})
hl.workspace_rule({ workspace = "6", monitor = "DP-3",persistent = true})
hl.workspace_rule({ workspace = "7",persistent = true})




