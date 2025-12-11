
-- See https://github.com/sphamba/smear-cursor.nvim
--     ...animate the cursor with a smear effect in all terminals

return {
    "sphamba/smear-cursor.nvim",

    -- For full list of options, see https://github.com/sphamba/smear-cursor.nvim/blob/main/lua/smear_cursor/config.lua
    -- There are a TON of options.
    opts = {
        enabled = true,

        -- Smear cursor when switching buffers or windows.
        smear_between_buffers = false,

        -- Smear cursor when entering or leaving command line mode
        smear_to_cmd = false,

        -- The following control the "speed" of the movement

        -- How fast the smear's head moves towards the target, 0: no movement, 1: instantaneous
        stiffness = 0.8,

        -- How fast the smear's tail moves towards the target, 0: no movement, 1: instantaneous
        trailing_stiffness = 0.5,

        -- Stop animating when the smear's tail is within this distance (in characters) from the target.
        distance_stop_animating = 0.3,
    },
}

