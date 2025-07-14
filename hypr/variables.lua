local scheme = require("scheme.current")

local mainMod = "SUPER"

return {
    ------------------
    ---- HYPRLAND ----
    ------------------

    -- Main shortcut
    mainMod                    = mainMod,

    -- Apps
    terminal                   = "foot",
    browser                    = "zen-browser",
    editor                     = "zeditor",
    fileExplorer               = "nautilus",
    audioSettings              = "pwvucontrol",

    -- Touchpad
    touchpadDisableTyping      = true,
    touchpadScrollFactor       = 0.5,
    gestureFingers             = 3,
    workspaceSwipeFingers      = 4,
    gestureFingersMore         = 4,

    -- Blur
    blurEnabled                = true,
    blurSpecialWs              = false,
    blurPopups                 = false,
    blurInputMethods           = true,
    blurSize                   = 8,
    blurPasses                 = 2,
    blurXray                   = true,

    -- Shadow
    shadowEnabled              = true,
    shadowRange                = 15,
    shadowRenderPower          = 4,
    shadowColour               = "rgba(" .. scheme.inversePrimary .. "10)",

    -- Gaps
    workspaceGaps              = 20,
    windowGapsIn               = 4,
    windowGapsOut              = 8,
    singleWindowGapsOut        = 8,

    -- Window styling
    windowOpacity              = 0.95,
    windowRounding             = 9,
    windowBorderSize           = 1,
    activeWindowBorderColour   = "rgba(" .. scheme.primary .. "e6)",
    inactiveWindowBorderColour = "rgba(" .. scheme.onSurfaceVariant .. "11)",

    -- Misc
    volumeStep                 = 10,
    volumeMax                  = 100,
    cursorTheme                = "Moga-Candy-Black",
    cursorSize                 = 32,
    sleepGestureCmd            = "systemctl suspend-then-hibernate",

    ------------------
    ---- KEYBINDS ----
    ------------------

    -- Modifier only, the actual binds will be mod + 0-9. These should be strings and not arrays.
    kbGoToWs                   = mainMod,
    kbGoToWsGroup              = "CTRL + " .. mainMod,
    kbMoveWinToWs              = mainMod .. " + SHIFT",
    kbMoveWinToWsGroup         = "CTRL + " .. mainMod .. " + SHIFT",

    -- All the following binds can be either an array of binds to bind multiple keys, or a single string.

    -- Workspaces
    kbMoveWinToWsSpecial       = { mainMod .. " + SHIFT + S", "CTRL + " .. mainMod .. " + SHIFT + Up" },
    kbMoveWinFromWsSpecial     = "CTRL + " .. mainMod .. " + SHIFT + Down",
    kbMoveWinToWsNext          = { mainMod .. " + SHIFT + mouse_down", mainMod .. " + SHIFT + Page_Down", "CTRL + " .. mainMod .. " + SHIFT + Right" },
    kbMoveWinToWsPrev          = { mainMod .. " + SHIFT + mouse_up", mainMod .. " + SHIFT + Page_Up", "CTRL + " .. mainMod .. " + SHIFT + Left" },
    kbNextWs                   = { mainMod .. " + mouse_down", "CTRL + " .. mainMod .. " + Down", mainMod .. " + Page_Down" },
    kbPrevWs                   = { mainMod .. " + mouse_up", "CTRL + " .. mainMod .. " + Up", mainMod .. " + Page_Up" },
    kbNextWsGroup              = "CTRL + " .. mainMod .. " + mouse_down",
    kbPrevWsGroup              = "CTRL + " .. mainMod .. " + mouse_up",

    -- Window Group
    kbWindowCycleNext          = "ALT + TAB",
    kbWindowCyclePrev          = "SHIFT + ALT + TAB",
    kbWindowGroupCycleNext     = mainMod .. " + CTRL + TAB",
    kbWindowGroupCyclePrev     = mainMod .. " + CTRL + SHIFT + TAB",

    kbUngroup                  = mainMod .. " + U",
    kbToggleGroup              = mainMod .. " + Comma",
    kbGroupLockActive          = mainMod .. " + SHIFT + Comma",

    -- Window Actions
    kbWindowDecreaseWidth      = { mainMod .. " + Minus", mainMod .. " + ALT + Left" },
    kbWindowIncreaseWidth      = { mainMod .. " + Equal", mainMod .. " + ALT + Right" },
    kbWindowDecreaseHeight     = { mainMod .. " + SHIFT + Minus", mainMod .. " + ALT + Up" },
    kbWindowIncreaseHeight     = { mainMod .. " + SHIFT + Equal", mainMod .. " + ALT + Down" },

    kbMoveWindow               = { mainMod .. " + Z", "SUPER + mouse:272" },
    kbResizeWindow             = { mainMod .. " + X", "SUPER + mouse:273" },
    kbCenterWindow             = "CTRL + " .. mainMod .. " + Backslash",
    kbNormalizeWindow          = "CTRL + " .. mainMod .. " + ALT + Backslash",
    kbWindowPip                = mainMod .. " + ALT + Backslash",
    kbPinWindow                = mainMod .. " + P",
    kbWindowFullscreen         = mainMod .. " + SHIFT + F",
    kbWindowBorderedFullscreen = mainMod .. " + F",
    kbToggleWindowFloating     = mainMod .. " + space",
    kbCloseWindow              = mainMod .. " + Q",
    kbForceCloseWindow         = mainMod .. " + SHIFT + Q",

    -- Special workspaces toggles
    kbSpecialWs                = mainMod .. " + S",
    kbSystemMonitorWs          = "CTRL + SHIFT + Escape",
    kbMusicWs                  = mainMod .. " + M",
    kbCommunicationWs          = mainMod .. " + D",
    kbTodoWs                   = mainMod .. " + R",
    kbAI                       = mainMod .. " + I",

    -- Apps
    kbTerminal                 = mainMod .. " + Return",
    kbBrowser                  = mainMod .. " + W",
    kbEditor                   = mainMod .. " + C",
    kbFileExplorer             = mainMod .. " + E",
    kbAudioSettings            = "CTRL + ALT + V",

    -- Utilities
    kbScreenshot               = "Print",
    kbScreenshotFreeze         = { mainMod .. " + SHIFT + S", "ALT + Print" },
    kbScreenshotRegion         = { mainMod .. " + SHIFT + ALT + S", "SHIFT + Print" },
    kbRecord                   = mainMod .. " + ALT + R",
    kbRecordSound              = mainMod .. " + CTRL + ALT + R",
    kbRecordRegion             = mainMod .. " + SHIFT + ALT + R",
    kbColorPicker              = mainMod .. " + SHIFT + C",

    -- Media
    kbMediaToggle              = "CTRL + " .. mainMod .. " + Space",
    kbMediaNext                = "CTRL + " .. mainMod .. " + Equal",
    kbMediaPrev                = "CTRL + " .. mainMod .. " + Minus",
    kbMediaStop                = "CTRL + " .. mainMod .. " + Backspace",
    kbVolumeMute               = { mainMod .. " + SHIFT + M", "XF86AudioMute" },

    -- Misc
    kbLauncher                 = mainMod .. " + SUPER_L",
    kbSession                  = "CTRL + ALT + Delete",
    kbShowSidebar              = mainMod .. " + N",
    kbClearNotifs              = "CTRL + ALT + C",
    kbShowPanels               = mainMod .. " + K",
    kbLock                     = mainMod .. " + L",
    kbRestoreLock              = mainMod .. " + ALT + L",
    kbSleep                    = mainMod .. " + SHIFT + L",

    -- Clipboard and emoji picker
    kbClipboard                = mainMod .. " + V",
    kbClipboardDel             = mainMod .. " + ALT + V",
    kbClipboardPasteLatest     = "CTRL + SHIFT + ALT + V",
    kbEmoji                    = mainMod .. " + Period",
}
