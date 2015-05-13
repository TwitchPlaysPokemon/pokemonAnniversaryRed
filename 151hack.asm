; Header

INCBIN "151header.txt"

; Maps

INCLUDE "data/mapHeaders/mtsilver.asm"
INCLUDE "scripts/mtsilver.asm"
INCLUDE "data/mapObjects/mtsilver.asm"
MtSilverBlocks: INCBIN "maps/mtsilver.blk"

INCLUDE "data/mapHeaders/lastislandoutside.asm"
INCLUDE "scripts/lastislandoutside.asm"
INCLUDE "data/mapObjects/lastislandoutside.asm"
LastIslandOutsideBlocks: INCBIN "maps/lastislandoutside.blk"

INCLUDE "data/mapHeaders/lastislandb1f.asm"
INCLUDE "scripts/lastislandb1f.asm"
INCLUDE "data/mapObjects/lastislandb1f.asm"
LastIslandB1FBlocks: INCBIN "maps/lastislandb1f.blk"

INCLUDE "data/mapHeaders/lastisland1f.asm"
INCLUDE "scripts/lastisland1f.asm"
INCLUDE "data/mapObjects/lastisland1f.asm"
LastIsland1FBlocks: INCBIN "maps/lastisland1f.blk"

INCLUDE "data/mapHeaders/lastisland2f.asm"
INCLUDE "scripts/lastisland2f.asm"
INCLUDE "data/mapObjects/lastisland2f.asm"
LastIsland2FBlocks: INCBIN "maps/lastisland2f.blk"

INCLUDE "data/mapHeaders/lastislandsummit.asm"
INCLUDE "scripts/lastislandsummit.asm"
INCLUDE "data/mapObjects/lastislandsummit.asm"
LastIslandSummitBlocks: INCBIN "maps/lastislandsummit.blk"

INCLUDE "data/mapHeaders/battletent.asm"
INCLUDE "scripts/battletent.asm"
INCLUDE "data/mapObjects/battletent.asm"
BattleTentBlocks: INCBIN "maps/battletent.blk"

INCLUDE "data/mapHeaders/celadonmartbasement.asm"
INCLUDE "scripts/celadonmartbasement.asm"
INCLUDE "data/mapObjects/celadonmartbasement.asm"
CeladonMartBasementBlocks: INCBIN "maps/celadonmartbasement.blk"

; GFXs

RedGPicFront::         INCBIN "girl/front.pic"
RedGPicBack::          INCBIN "girl/back.pic"

LeaguePCPic::       INCBIN "pic/trainer/computer.pic"

RedGFishingTilesFront: INCBIN "girl/fishing_f.2bpp"
RedGFishingTilesBack:  INCBIN "girl/fishing_b.2bpp"
RedGFishingTilesSide:  INCBIN "girl/fishing_s.2bpp"

TruckSpriteGFX:        INCBIN "gfx/truck_sprite.2bpp"

Gym2_GFX:           INCBIN "gfx/tilesets/gym2.2bpp"
Gym2_Block:         INCBIN "gfx/blocksets/gym2.bst"

TPPRedTransitionTiles: INCBIN "gfx/udlrab.1bpp"
HackCreditScrollerGFX: INCBIN "gfx/credit_scroller.2bpp"
ThanksForWatchingGFX:  INCBIN "gfx/thanks_for_watching.2bpp"
PlayerCharacterFTitleGraphics:  INCBIN "gfx/playerF_title.2bpp"

INCLUDE "151hack/engine.asm"
INCLUDE "151hack/animation.asm"
INCLUDE "151hack/data.asm"
INCLUDE "151hack/text.asm"