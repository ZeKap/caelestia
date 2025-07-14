local vars = require("variables")

hl.config({
    input = {
        kb_layout          = "us",
        kb_variant         = "altgr-intl",
        numlock_by_default = true,
        repeat_delay       = 450,
        repeat_rate        = 30,
        focus_on_close     = 1,
        sensitivity        = -0.5,

        touchpad           = {
            natural_scroll       = true,
            disable_while_typing = vars.touchpadDisableTyping,
            scroll_factor        = vars.touchpadScrollFactor,
        },
    },

    binds = {
        scroll_event_delay = 0,
    },

    cursor = {
        hotspot_padding = 1,
    },

    hl.device({
        name = "pixa3854:00-093a:0274-touchpad",
        sensitivity = 0,
    }),

    hl.device({
        name = "magic-keyboard-de-marla",
        kb_layout = "fr",
        kb_variant = "mac",
    })
})
