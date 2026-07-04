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
-- TV --
hl.monitor({
    output   = "DP-2",
    mode     = "1920x1080@60",
    position = "-1920x-880",
    scale    = "1",
})
-- workspaces --
hl.workspace_rule({ workspace = "1", monitor = "DP-3", persistent = true})
hl.workspace_rule({ workspace = "2", monitor = "DP-3",persistent = true})
hl.workspace_rule({ workspace = "3", monitor = "DP-3",persistent = true})
hl.workspace_rule({ workspace = "4", monitor = "DP-3",persistent = true})
hl.workspace_rule({ workspace = "5", monitor = "DP-3",persistent = true})
hl.workspace_rule({ workspace = "6", monitor = "DP-3",persistent = true})
hl.workspace_rule({ workspace = "7", monitor = "DP-3",persistent = true})
-- workspaces nxt monitor 
hl.workspace_rule({ workspace = "8", monitor = "HDMI-A-1", persistent = true})
hl.workspace_rule({ workspace = "9", monitor = "HDMI-A-1",persistent = true})
hl.workspace_rule({ workspace = "10", monitor = "HDMI-A-1",persistent = true})
hl.workspace_rule({ workspace = "11", monitor = "HDMI-A-1",persistent = true})
hl.workspace_rule({ workspace = "12", monitor = "HDMI-A-1",persistent = true})
hl.workspace_rule({ workspace = "13", monitor = "HDMI-A-1",persistent = true})
hl.workspace_rule({ workspace = "14", monitor = "HDMI-A-1",persistent = true})




