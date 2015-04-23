INCLUDE "macros.asm"

INCLUDE "hram.asm"
INCLUDE "vram.asm"

INCLUDE "constants/hardware_constants.asm"
INCLUDE "constants/oam_constants.asm"
INCLUDE "constants/misc_constants.asm"

INCLUDE "constants/wram_constants.asm"

INCLUDE "constants/pokemon_constants.asm"
INCLUDE "constants/pokedex_constants.asm"
INCLUDE "constants/trainer_constants.asm"
INCLUDE "constants/item_constants.asm"
INCLUDE "constants/type_constants.asm"
INCLUDE "constants/move_constants.asm"
INCLUDE "constants/move_animation_constants.asm"
INCLUDE "constants/move_effect_constants.asm"
INCLUDE "constants/status_constants.asm"
INCLUDE "constants/sprite_constants.asm"
INCLUDE "constants/palette_constants.asm"
INCLUDE "constants/evolution_constants.asm"
INCLUDE "constants/list_constants.asm"
INCLUDE "constants/map_constants.asm"
INCLUDE "constants/map_dimensions.asm"
INCLUDE "constants/connection_constants.asm"
INCLUDE "constants/hide_show_constants.asm"
INCLUDE "constants/credits_constants.asm"
INCLUDE "constants/music_constants.asm"
INCLUDE "constants/tilesets.asm"
INCLUDE "constants/starter_mons.asm"

; wRoamingFlag bits

RANOCCURED     EQU 0
TPPREDBATTLE   EQU 1
OAKBATTLE      EQU 2
MEWINTRUCK     EQU 3
DIPLOMASEEN    EQU 4
MEWINISLAND    EQU 5
MEWFLYAWAY     EQU 6
MEWTRAINERFLAG EQU 7

; bit mask for Oak battle checking
OAKABLE EQU (1 << TPPREDBATTLE) | (1 << DIPLOMASEEN)