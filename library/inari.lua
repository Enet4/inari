--------------------------------------------------------------------------------
---@meta
---Lua definitions for the Kitsune Tails Inari API,
---the API for creating minigames for the game Kitsune Tails.
---
---This file tries to be as accurate as possible,
---but it may not be a full replacement to the official documentation.
---When necessary, please consult `docs/inari_api.html` for the full details.
---
---Last updated according to Kitsune Tails version 1.0.3.3 (2024-08-29)
---Inari API version 0
---<https://github.com/Enet4/inari>
--------------------------------------------------------------------------------

---A resource loaded via `loadresource` or `loadbuiltin`.
---@class resource: unknown

---A binary resource loaded via `loadresource` or `loadbuiltin`.
---@class binary: resource

---An image resource loaded via `loadresource` or `loadbuiltin`.
---@class image: resource

---A music resource loaded via `loadresource` or `loadbuiltin`.
---@class music: resource

---A sound resource loaded via `loadresource` or `loadbuiltin`.
---@class sound: resource

---A text resource loaded via `loadresource` or `loadbuiltin`.
---@class text: resource

---A tilemap resource loaded via `loadresource` or `loadbuiltin`.
---@class tilemap: resource

---A sprite created via `sprite`.
---@class sprite: unknown

---A surface created via `createsurf`.
---@class surface: unknown

---A surface lock table created via `locksurf`.
---@class surfaceLock: table
---@field mode (0 | 1 | 2) The mode used when locking this surface
---@field x integer Coordinates of the locked area of the surface
---@field y integer Coordinates of the locked area of the surface
---@field width integer Coordinates of the locked area of the surface
---@field height integer Coordinates of the locked area of the surface
---@field stride integer Value indicating how many values there are in the image data per row of locked pixels
---@field count integer Number of entries in this table representing pixels

---A string identifier for the type of sprite
---@alias spriteType builtinSpriteType | string

---All built-in sprite types
---@alias builtinSpriteType "AirBlock" | "Explosion" | "IceL2x2" | "PowBootie" | "Villager3" | "Akko" | "FallingBlock" | "IceR1x1" | "PowCloud" | "Villager3Dance" | "AkkoDance" | "FireballPoof" | "IceR1x2" | "PowCloudIcon" | "Villager4" | "AkkoMissile" | "FlamingSkull" | "IceR2x1" | "PowEarth" | "Villager4Dance" | "AkkoMissileH" | "FlyingBeetle" | "IceR2x2" | "PowerDown" | "Villager5" | "AkkoMissilePoof" | "FlyingStagBeetle" | "Kaguya" | "PowerUp" | "Villager5Dance" | "AkkoYuzuCatch" | "FlyingTanuki" | "Kamino" | "PowFire" | "Villager6" | "Apple" | "Foxling" | "KappaFire" | "PowIce" | "Villager6Dance" | "ArcadeCabFront" | "FoxlingDelivery" | "KappaWater" | "PowKitsune" | "Villager7" | "Archer" | "FoxlingTaiyaki" | "Karakasa" | "PowOnigiri" | "Villager7Dance" | "Arrow" | "GhostAngy" | "Kasha" | "PowScarf" | "Villager8" | "AwardChest" | "GhostBlechy" | "Kiri" | "PowSnorkel" | "Villager8Dance" | "Ball" | "GhostBlinky" | "KiriAkko" | "PowStealth" | "VillagerBodyF" | "BangBlock" | "GhostBlock" | "KiriBoot" | "PowSuper" | "VillagerBodyM" | "Barrel" | "GhostBossy" | "KiriDance" | "PowTaiyaki" | "VillagerHead01" | "BeamTarget" | "GhostCreepy" | "KiriEightway" | "PowTaiyakiIcon" | "VillagerHead02" | "Beetle" | "GhostGrinny" | "KiriFox" | "PowWater" | "VillagerHead03" | "Benkei" | "GhostGrumpy" | "KiriFoxBoot" | "PufferAggro" | "VillagerHead04" | "BigBorgor" | "GhostHappy" | "KiriInjured" | "Pufferfish" | "VillagerHead05" | "BigBossBootie" | "GhostLord" | "KiriOverworld" | "Rokurokubi" | "VillagerHead06" | "BigBossBootieKey" | "GhostLordPoof" | "KiriScarf" | "Shuriken" | "VillagerHead07" | "BigPango" | "GhostMuddly" | "KiriScarfBoot" | "SilverChest" | "VillagerHead08" | "BigPangoDust" | "GhostRaspby" | "KiriShoryuken" | "Skeleton" | "VillagerHead09" | "BoomBarrel" | "GhostShady" | "KiriSnorkel" | "Slam" | "VillagerHead10" | "Bootie" | "GhostShiny" | "KiriSnorkelBoot" | "SmallLamp" | "VillagerHead11" | "BootieKarakasa" | "GoblinGuide" | "KiriStealth" | "Snowball" | "VillagerHead12" | "Boulder" | "GoldChest" | "KiriStealthBoot" | "SoulSphere" | "WeirdYuzu" | "BounceShroom" | "GroundSnowMonkey" | "Kojiro" | "Spearman" | "Yuzu" | "BronzeChest" | "HangingSnowMonkey" | "KojiroApple" | "SpearVanish" | "YuzuArmor" | "Button" | "HMArmor" | "KojiroEightway" | "SpellBreak" | "YuzuArmorBoot" | "ButtonFringe" | "HMBarrel" | "Kunai" | "SpinBounce" | "YuzuBird" | "Carp" | "HMCushion1" | "KyoLetter" | "StagBeetle" | "YuzuBirdBoot" | "CatMerchant" | "HMCushion2" | "LanternMonster" | "StompPoofLarge" | "YuzuBoot" | "CatWagon" | "HMCushion3" | "Mallet" | "StompPoofSmall" | "YuzuDance" | "Checkpoint" | "HMCushionStack" | "MoonBeam" | "StoneLanternBlue" | "YuzuDragon" | "CloudDissipate" | "HMHearth" | "Musashi" | "StoneLanternOrng" | "YuzuDragonBoot" | "Coconut" | "HMScreen" | "Nobunyaga" | "TanukiArcade" | "YuzuEarth" | "Coin" | "HMShogi" | "Oni" | "TanukiNinja" | "YuzuEarthBoot" | "CoinBounce" | "HMStatue1" | "Onibi" | "TanukiWell" | "YuzuFireball" | "CoinPickup" | "HMStatue2" | "OrbAir" | "Tengu" | "YuzuFox" | "Crab" | "HMStatue3" | "OrbEarth" | "Ticket" | "YuzuFoxBoot" | "Crane" | "HMSword1" | "OrbFire" | "ToriBg" | "YuzuIceProjectile" | "CraneBg" | "HMSword2" | "OrbIce" | "ToriExitBg" | "YuzuInjured" | "Cursor" | "HMTable1" | "OrbWater" | "ToriExitFg" | "YuzuOverworld" | "Door" | "HMTable2" | "Pango" | "ToriFg" | "YuzuShark" | "Dropshadow" | "Hornet" | "Popsicle" | "TreasureChest" | "YuzuSharkBoot" | "Dust" | "HornetNest" | "Porcupine" | "Villager1" | "YuzuSharkWaterWalk" | "Elder" | "IceL1x1" | "PowAir" | "Villager1Dance" | "YuzuSnow" | "ElePrisonGate" | "IceL1x2" | "PowArmor" | "Villager2" | "YuzuSnowBoot" | "Erin" | "IceL2x1" | "PowArmorIcon" | "Villager2Dance" | "YuzuSpear"

--A sprite flag index.
---@alias spriteFlag
---| 1 Mirrored (horizontal)
---| 2 Flipped (vertical)
---| 3 Carrying

---@alias tileId integer

---Colors can be numbers that refer to entries in the Kitsune Tails global palette (see palettes.html) or can be hexadecimal color values in the form ABGR. So color 23 is the 23rd color in the global palette, whereas `0xFFBB0044` is fully opaque dark blurple.
---@alias color number

-- Secret Functions

---If you would like to belong to the exclusive club marked by this achievement, create a “game” with the following code:
---
---```lua
---function init()
---    _achievement("GAME_DEVELOPER")
---end
---
---function update()
---    exit()
---end
---```
---Once you open the mods menu and load this script it will immediately exit and the achievement will be unlocked.
---@param name "GAME_DEVELOPER"
function _achievement(name) end

-- Math Functions --

floor = math.floor
abs = math.abs
acos = math.acos
asin = math.asin
atan = math.atan
ceil = math.ceil
cos = math.cos
floor = math.floor
log = math.log
max = math.max
min = math.min
randomseed = math.randomseed
sin = math.sin
sqrt = math.sqrt
tan = math.tan
typen = math.type

-- String Functions

sub = string.sub

---@param v any
---@return number
function tonumber(v) end

---@param v any
---@return number
function tonum(v) end

---@param v any
---@return string
function tostring(v) end
tostr = tostring

chr = string.char
ord = string.byte

-- Table functions

add = table.insert
pack  = table.pack
unpack = table.unpack
del = table.remove
sort = table.sort

-- Basic Functions

---Stops the minigame and, if appropriate, awards the number of specified tickets for the achieved score, or zero if not specified.
---@param tickets? number
---@param score? number
function exit(tickets, score) end

---Returns the binary byte values contained within a binary file loaded using `loadresource` or `loadbuiltin` as a table. The first byte will be at index 1. Calling `getbin` multiple times will result in multiple clones of the original. Altering the data in the table will not alter the data in the original.
---@param id binary
---@return table
function getbin(id) end

---Gets the height of the resource specified by `id`. For images and software surfaces this is the height in pixels, for maps and sprites this is the height in tiles. If `id` isn’t specified or is nil then the height of the screen in pixels is returned instead.
---@param id? resource
function getheight(id) end

---Returns the text associated with a text file loaded using `loadresource` or `loadbuiltin`.
---@param id text
function gettext(id) end

---Gets the width of the resource specified by `id`. For images and software surfaces this is the width in pixels, for maps and sprites this is the width in tiles. If `id` isn’t specified or is nil then the width of the screen in pixels is returned instead.
---@param id? resource
---@return integer
function getwidth(id) end

---Truncates `value` and returns the result as an integer. Returns 0 if `value` is not a number.
---@param value number
---@return integer
function int(value) end

--- Creates a linear feedback shift register (used for fizzle fades and other things during the DOS era) and returns it as a function. The `bits` argument specifies the size of the sequence in bits, and must be a value between 4 and 32 inclusive. The linear feedback shift register function will return one number at a time when called and will produce all values in its series randomly, never repeating any value, until it has produced all values and it repeats. A 4 bit lfsr will produce 16 values (all values from zero through fifteen) before repeating, a 5 bit lfsr will produce 32, a 6 bit lfsr will produce 64, etc.
---
--- The `seed` argument specifies the starting value in the series, and defaults to zero. The actual seed value is skipped when the lfsr is first called, which means when the seed value is returned it has completed a full series of 2 ^ bits values.
---
--- By default a feedback term is chosen that is known to produce a full series of values without any repeats. There are however different feedback term values that will also produce a well-formed series of values in a different order that can be found online. The `term` argument allows you to specify one yourself, but makes no effort to check if this is a feedback term that will create a well-formed series of non-repeating values. Use with caution.
---
---
---Example code for a linear feedback shift register that prints a series of 16 values then stops:
---
---```lua
---local shifter = lfsr(4)
---local n
---repeat
---    n = shifter()
---    print(n)
---until (n == 0)
---```
---
---@param bits integer
---@param seed? number
---@param term? number
function lfsr(bits, seed, term) end

---Resource type
---
---It must be one of the following strings:
---
--- - "binary"    File contains binary data
--- - "image"     File is an image (PNG)
--- - "music"     File is a music file (OGG) streamed from disk
--- - "sound"     File is a sound file (OGG) buffered in memory
--- - "text"      File contains plain text
--- - "tilemap"   File is a Tiled Map Editor map file exported to json
---@alias resourcetype ("binary" | "image" | "music" | "sound" | "text" | "tilemap")

---Loads file `f` from the script’s current folder as content for the minigame and returns a reference to the content.
---When the `type` argument is "binary",
---the file contains binary data.
---@param f string
---@param type "binary"
---@return binary
function loadresource(f, type) end

---Loads file `f` from the script’s current folder as content for the minigame and returns a reference to the content.
---When the `type` argument is "image",
---the file is an image (PNG).
---@param f string
---@param type "image"
---@return image
function loadresource(f, type) end

---Loads file `f` from the script’s current folder as content for the minigame and returns a reference to the content.
---When the `type` argument is "music",
---the file is an music file (OGG) streamed from disk.
---
--- NOTE: music and sound files must end with the extension .ogg!
---@param f string
---@param type "music"
---@return music
function loadresource(f, type) end

---Loads file `f` from the script’s current folder as content for the minigame and returns a reference to the content.
---When the `type` argument is "sound",
---the file is an sound file (OGG) streamed from disk.
---
--- NOTE: music and sound files must end with the extension .ogg!
---@param f string
---@param type "sound"
---@return sound
function loadresource(f, type) end

---Loads file `f` from the script’s current folder as content for the minigame and returns a reference to the content.
---When the `type` argument is "text",
---the file contains plain text.
---@param f string
---@param type "text"
---@return text
function loadresource(f, type) end

---Loads file `f` from the script’s current folder as content for the minigame and returns a reference to the content.
---When the `type` argument is "image",
---the file is a Tiled Map Editor map file exported to json.
---@param f string
---@param type "tilemap"
---@return tilemap
function loadresource(f, type) end

---Loads file `f` from the script’s current folder as content for the minigame and returns a reference to the content. The `type` argument specifies what type of content is being loaded. It must be one of the following strings:
---
--- - "binary"    File contains binary data
--- - "image"     File is an image (PNG)
--- - "music"     File is a music file (OGG) streamed from disk
--- - "sound"     File is a sound file (OGG) buffered in memory
--- - "text"      File contains plain text
--- - "tilemap"   File is a Tiled Map Editor map file exported to json
---
--- NOTE: music and sound files must end with the extension .ogg!
---@param f string
---@param type resourcetype
---@return resource
function loadresource(f, type) end

---This is the same as `loadresource` but it loads files found in the root of Kitsune Tails Content folder.
---@param f string
---@param type "binary"
---@return binary
function loadbuiltin(f, type) end

---This is the same as `loadresource` but it loads files found in the root of Kitsune Tails Content folder.
---@param f string
---@param type "image"
---@return image
function loadbuiltin(f, type) end

---This is the same as `loadresource` but it loads files found in the root of Kitsune Tails Content folder.
---@param f string
---@param type "music"
---@return music
function loadbuiltin(f, type) end

---This is the same as `loadresource` but it loads files found in the root of Kitsune Tails Content folder.
---@param f string
---@param type "sound"
---@return sound
function loadbuiltin(f, type) end

---This is the same as `loadresource` but it loads files found in the root of Kitsune Tails Content folder.
---@param f string
---@param type "text"
---@return text
function loadbuiltin(f, type) end

---This is the same as `loadresource` but it loads files found in the root of Kitsune Tails Content folder.
---@param f string
---@param type "tilemap"
---@return tilemap
function loadbuiltin(f, type) end

---This is the same as `loadresource` but it loads files found in the root of Kitsune Tails Content folder.
---@param f string
---@param type resourcetype
---@return resource
function loadbuiltin(f, type) end

---Parse json text into a Lua table.
---@param json string
---@return table
function jsonparse(json) end

---Returns a floating point value between 0 and `upper` (defaults to 1). The upper bound is exclusive, which means that the exact value will approach `upper` but will never actually be equal to `upper`. The seed for this function and `randint` can be set using the `randomseed` function.
---@param upper? number
function random(upper) end

---Returns a floating point value between `lower` and `upper`. The upper bound is exclusive, which means that the exact value will approach `upper` but will never actually be equal to `upper`. The seed for this function and `randint` can be set using the `randomseed` function.
---@param lower? number
---@param upper? number
function random(lower, upper) end

---Returns an integer (whole number) value between 0 and `upper`. The upper bound is exclusive, which means that the resulting integer will always be less than the value provided by `upper`. The seed for this function and `random` can be set using the `randomseed` function.
---@param upper? integer
function randint(upper) end

---Returns an integer (whole number) value between `lower` and `upper`. The upper bound is exclusive, which means that the resulting integer will always be less than the value provided by `upper`. The seed for this function and `random` can be set using the `randomseed` function.
---@param lower? integer
---@param upper? integer
function randint(lower, upper) end

---Register a 16 color palette for use with sprites. The first color of a palette is always transparent, so this function takes up to 15 colors as arguments. Returns the index of the palette. Multiple calls to `registerpal` with the same colors will return the same palette instead of creating duplicates.
---
---NOTE: Only 65536 palettes can be loaded at a time, loading any additional palettes will start overwriting existing palettes at index 0. This is not recommended.
---@param ... color
---@return integer
function registerpal(...) end

---Turn a Lua table into json string.
---@param json any
---@return string
function stringify(json) end

---Returns the number of ticks since Kitsune Tails started as an integer. There are 10,000,000 ticks in a second.
---@return integer
function tickcount() end

---These functions return the time in seconds since the minigame started. If `real` is true this function instead returns the clock time, rather than the frame time.
---@param real? boolean
---@return number
function time(real) end

t = time

---Contains the version of the game as a string.
---@type string
_GAMEVERSION = "" -- PLACEHOLDER

---Contains the version of the minigame API as a number.
---@type number
_APIVERSION = 0 -- PLACEHOLDER

-- Drawing Functions

---If a color argument is present this function clears the screen to that color, if not the screen is cleared to black. The depth buffer (also known as z-buffer) is also cleared unless cleardepth is false.
---@param color? color
---@param cleardepth? boolean
function cls(color, cleardepth) end

---Clears the depth buffer (also known as z-buffer) while leaving the color buffer intact.
function cleardepth() end

---If the `color` argument is present this function sets the global drawing color to that color, if not the global drawing color is set to white.
---@param color? color
function color(color) end

---Draws the default pointing hand cursor, with animation, at the specified x and y coordinates. If `flashing` is true the cursor will flash between visible and invisible.
---@param x number
---@param y number
---@param flashing? boolean
function drawcursor(x, y, flashing) end

---Draw an image loaded using `loadresource` or `loadbuiltin` or a software surface created using `createsurf`. If `srcx`, `srcy`, `srcw`, and `srch` are specified then only part of the image will be drawn. If `width` and `height` are specified then the image will be scaled to that width and height. If `srcw` or `srch` are nil or not a number the image’s original width or height minus `srcx` or `srcy` will be used for that parameter. If `width` or `height` are nil or not a number the corresponding value of `srcw` or `srch` is used as a parameter. Calls to `drawimg` are affected by the global drawing color set using the `color` function, which defaults to white, and the color argument specifies the color to draw the image with for this call. An optional z-buffer value between 0 and 1 can be specified using the `depth` argument, where `depth` describes the distance from the viewer (lower values draw over higher values.) The image can be mirrored or flipped by making the `width` and `height` arguments respectively negative.
---@param id image | surface
---@param x number
---@param y number
function drawimg(id, x, y) end

---Draw an image loaded using `loadresource` or `loadbuiltin` or a software surface created using `createsurf`. If `srcx`, `srcy`, `srcw`, and `srch` are specified then only part of the image will be drawn. If `width` and `height` are specified then the image will be scaled to that width and height. If `srcw` or `srch` are nil or not a number the image’s original width or height minus `srcx` or `srcy` will be used for that parameter. If `width` or `height` are nil or not a number the corresponding value of `srcw` or `srch` is used as a parameter. Calls to `drawimg` are affected by the global drawing color set using the `color` function, which defaults to white, and the color argument specifies the color to draw the image with for this call. An optional z-buffer value between 0 and 1 can be specified using the `depth` argument, where `depth` describes the distance from the viewer (lower values draw over higher values.) The image can be mirrored or flipped by making the `width` and `height` arguments respectively negative.
---@param id image | surface
---@param x number
---@param y number
---@param srcx number
---@param srcy number
---@param srcw? number
---@param srch? number
function drawimg(id, x, y, srcx, srcy, srcw, srch) end

---Draw an image loaded using `loadresource` or `loadbuiltin` or a software surface created using `createsurf`. If `srcx`, `srcy`, `srcw`, and `srch` are specified then only part of the image will be drawn. If `width` and `height` are specified then the image will be scaled to that width and height. If `srcw` or `srch` are nil or not a number the image’s original width or height minus `srcx` or `srcy` will be used for that parameter. If `width` or `height` are nil or not a number the corresponding value of `srcw` or `srch` is used as a parameter. Calls to `drawimg` are affected by the global drawing color set using the `color` function, which defaults to white, and the color argument specifies the color to draw the image with for this call. An optional z-buffer value between 0 and 1 can be specified using the `depth` argument, where `depth` describes the distance from the viewer (lower values draw over higher values.) The image can be mirrored or flipped by making the `width` and `height` arguments respectively negative.
---@param id image | surface
---@param x number
---@param y number
---@param srcx? number
---@param srcy? number
---@param srcw? number
---@param srch? number
---@param width number
---@param height number
function drawimg(id, x, y, srcx, srcy, srcw, srch, width, height) end

---Draw an image loaded using `loadresource` or `loadbuiltin` or a software surface created using `createsurf`. If `srcx`, `srcy`, `srcw`, and `srch` are specified then only part of the image will be drawn. If `width` and `height` are specified then the image will be scaled to that width and height. If `srcw` or `srch` are nil or not a number the image’s original width or height minus `srcx` or `srcy` will be used for that parameter. If `width` or `height` are nil or not a number the corresponding value of `srcw` or `srch` is used as a parameter. Calls to `drawimg` are affected by the global drawing color set using the `color` function, which defaults to white, and the color argument specifies the color to draw the image with for this call. An optional z-buffer value between 0 and 1 can be specified using the `depth` argument, where `depth` describes the distance from the viewer (lower values draw over higher values.) The image can be mirrored or flipped by making the `width` and `height` arguments respectively negative.
---@param id image | surface
---@param x number
---@param y number
---@param srcx? number
---@param srcy? number
---@param srcw? number
---@param srch? number
---@param width? number
---@param height? number
---@param color color
function drawimg(id, x, y, srcx, srcy, srcw, srch, width, height, color) end

---Draw an image loaded using `loadresource` or `loadbuiltin` or a software surface created using `createsurf`. If `srcx`, `srcy`, `srcw`, and `srch` are specified then only part of the image will be drawn. If `width` and `height` are specified then the image will be scaled to that width and height. If `srcw` or `srch` are nil or not a number the image’s original width or height minus `srcx` or `srcy` will be used for that parameter. If `width` or `height` are nil or not a number the corresponding value of `srcw` or `srch` is used as a parameter. Calls to `drawimg` are affected by the global drawing color set using the `color` function, which defaults to white, and the color argument specifies the color to draw the image with for this call. An optional z-buffer value between 0 and 1 can be specified using the `depth` argument, where `depth` describes the distance from the viewer (lower values draw over higher values.) The image can be mirrored or flipped by making the `width` and `height` arguments respectively negative.
---@param id image | surface
---@param x number
---@param y number
---@param srcx number
---@param srcy number
---@param srcw number
---@param srch number
---@param width number
---@param height number
---@param color color
---@param depth number
function drawimg(id, x, y, srcx, srcy, srcw, srch, width, height, color , depth) end

--- Draw text using the Kitsune Tails font. The `color` and `stroke` arguments set the colors for the text and the text stroke respectively and default to white and black if omitted. Text isn’t wordwrapped unless `width` and `height` are specified. The `halign` and `valign` parameters define the text’s alignment where 0 corresponds to left and top, 1 corresponds to center, and 2 corresponds to right and bottom. To disable wordwrap when specifying `width` and `height` set `wordwrap` to `false`.
---@param text string
---@param x number
---@param y number
---@param color? color
---@param stroke? color
---@param width? number
---@param height? number
---@param halign? number
---@param valign? number
---@param wordwrap? boolean
function drawtext(text, x, y, color, stroke, width, height, halign, valign, wordwrap) end

---Same as drawimg, with the addition of the `rot`, `xorg`, and `yorg` arguments. The `rot` argument is the rotation of the image in radians, with a full rotation happening between 0 and two times pi. The optional `xorg` and `yorg` arguments apply a pixel offset to the point around which the sprite rotates, which defaults to the center of the image after scaling.
---@param id image | surface
---@param x number
---@param y number
---@param rot number
---@param xorg? number
---@param yorg? number
---@param srcx? number
---@param srcy? number
---@param srcw? number
---@param srch? number
---@param width? number
---@param height? number
---@param color? color
---@param depth? number
function drawrot(id, x, y, rot, xorg, yorg, srcx, srcy, srcw, srch, width, height, color, depth) end

---Draw a tile from an image loaded using `loadresource` or `loadbuiltin` or a software surface created using `createsurf` at the coordinates specified by x, and y. If the color argument isn’t specified the color will be the global drawing color set using the `color` function, which defaults to white.
---
---The tile argument is an index corresponding to the 16x16 tile portion of the image to draw from, starting at the top-left of an image and increasing right, then down. This is the same as the ‘Tile ID’ value shown in the properties in Tiled Map Editor when a tile in a tileset is selected. An optional z-buffer value between 0 and 1 can be specified using the `depth` argument, where `depth` describes the distance from the viewer (lower values draw over higher values.)
---
---@param id image | surface
---@param tile number
---@param x number
---@param y number
---@param color? color
---@param depth? number
function drawtile(id, tile, x, y, color, depth) end

---Draws a filled rectangle using the coordinates specified by `x`, `y`, `w`, and `h`. If the `color` argument isn’t specified the color will be the global drawing color set using the `color` function, which defaults to white. An optional z-buffer value between 0 and 1 can be specified using the `depth` argument, where `depth` describes the distance from the viewer (lower values draw over higher values.)
---@param x number
---@param y number
---@param w number
---@param h number
---@param color? color
---@param depth? number
function drawrect(x, y, w, h, color, depth) end

-- Map Functions

---Clears a tile at the specified `x` and `y` coordinates on an instance of a map. The `layer` argument is a string that corresponds to the name of a layer present in the map. If the layer argument is present then tiles will only be removed from that specific layer, otherwise tiles on all layers will be cleared.
---@param map tilemap
---@param tilex number
---@param tiley number
---@param layer? string
function cleartile(map, tilex, tiley, layer) end

---Creates a new instance of a map based on the default state of the map specified in the `map` argument.
---@param map tilemap
---@return tilemap
function clonemap(map) end

---Draws the specified map with `x` and `y` being the pixel coordinates of the top-left of the map’s top-left most tile.
---@param map tilemap
---@param x integer
---@param y integer
function drawmap(map, x, y) end

---Gets the tile at coordinates `x` and `y` on the layer specified by layer. The `layer` argument is a string that corresponds to the name of a layer present in the map. This returns two values, the first is the name of the tileset such as "introworld-fall" or "fireworld" and the second is the same as the ‘Tile ID’ value shown in the properties in Tiled Map Editor when a tile in a tileset is selected. If there is no tile then the tileset name will be nil and the tile ID will be 0.
---@param map tilemap
---@param x integer
---@param y integer
---@param layer string
---@return [string, tileId]
---@return [nil, 0]
function gettile(map, x, y, layer) end

---Hides a tile layer in `map`. The `layer` argument is a string that corresponds to the name of a layer present in the map and cannot be `nil`.
---@param map tilemap
---@param layer string
function hidelayer(map, layer) end

---Sets the tile at coordinates `x` and `y` on the layer specified by `layer` to the tile specified by `tileset` and `tile`, where `tileset` is the name of the tileset such as "introworld-fall" or "fireworld" and `tile` is the same as the ‘Tile ID’ value shown in the properties in Tiled Map Editor when a tile in a tileset is selected.
---
--- If `layer` is `nil` then all tiles on all layers will be set to the specified tile.
---@param map tilemap
---@param x integer
---@param y integer
---@param layer? string
---@param tileset string
---@param tile tileId
function settile(map, x, y, layer, tileset, tile) end

---Shows a tile layer in `map`. The `layer` argument is a string that corresponds to the name of a layer present in the map and cannot be `nil`.
---@param map tilemap
---@param layer string
function showlayer(map, layer) end

-- Audio Functions

---Returns a number corresponding to the state of the music being played:
--- - 0   Stopped
--- - 1   Playing
--- - 2   Paused
---@return (0 | 1 | 2)
function musstate() end

---If `volume` argument is present sets the music volume as a percentage value between 0 and 100. Returns the current (or new) volume.
---@param volume? number
---@return number
function musvol(volume) end

---Pauses currently playing music. If `unpause` is true any previously paused music will be resumed.
---@param unpause? boolean
function pausemus(unpause) end

---Plays music loaded using `loadresource` or `loadbuiltin` and specified by `id`. Optionally sets the music to loop (defaults to true) and specifies the volume as a percentage value between 0 and 100 (default 100). If no arguments are given, or the first argument is `nil`, stops playing music. If `loop` is a number then the loop point for the music will be set to the value of `loop` in seconds only if the music was loaded via `loadresource`, as assets loaded with `loadbuiltin` have a loop point which cannot be changed. Negative values for `loop` will be treated as identical to passing in `false`.
---@param id music
---@param loop? (boolean | number)
---@param volume? number
function playmus(id, loop, volume) end

---Plays sound loaded using `loadresource` or `loadbuiltin` and specified by `id`. Optionally specifies the volume as a percentage value between 0 and 200 (default 100). The `pitch` argument specifies the pitch of the sound effect, where 1.0 is the default pitch, values below 1.0 pitch the sound down, and values above 1.0 pitch the sound up. The `pan` argument controls the stereo panning from -1 (left) to 1 (right) where 0 is the default.
---@param id sound
---@param volume? number
---@param pitch? number
---@param pan? number
function playsfx(id, volume, pitch, pan) end

-- Sprite functions --

---Animate a sprite created using the `sprite` function. The `frames` argument specifies how many frames to advance the sprite’s animation, which can be a decimal (floating point) value. The `animtype` argument must be a number or a string (not case sensitive) that corresponds to the table of available animations below, and sets the sprite’s animation. If the `animtype` argument is not a number or a string then it is ignored and the sprite’s animation type remains unchanged. The `reset` argument will reset the sprite’s animation back to the first frame if `true`, and defaults to `false` if not specified.
---
---This function returns a boolean indicating whether the sprite’s current animation has looped. Once the animation has looped and the value `true` has been returned once it will once again return `false`.
---
---Note that most sprites will not have animations for most of the animtype values and missing animations will default to other animations the sprite does have.
---
--- - 0           Standing
--- - 1           Idle
--- - 2           Crouching
--- - 3           Moving
--- - 4           Jumping
--- - 5           DoubleJump
--- - 6           Apex
--- - 7           Falling
--- - 8           Gliding
--- - 9           Sprinting
--- - 10          SprintingJump
--- - 11          SprintingApex
--- - 12          SprintingFall
--- - 13          Skidding
--- - 14          Floating
--- - 15          Sinking
--- - 16          Swimming
--- - 17          Spinning
--- - 18          Dying
--- - 19          PowerUp
--- - 20          PowerDown
--- - 21          Shoot
--- - 22          Curl
--- - 23          Rise
--- - 24          Ball
--- - 25          Roll
--- - 26          Kick
--- - 27          SpecialWindUp
--- - 28          SpecialEaseOut
--- - 29          WallSlide
--- - 30          ButtSlide
--- - 128-159     Emote1 through Emote32
---@param spr sprite
---@param frames number
---@param animtype? (number | string)
---@param reset? boolean
function animate(spr, frames, animtype, reset) end

---Defines a custom sprite with alias `name`. The binary argument must be a PNG image with indexed (8-bit or less) colors, which can be loaded via loadresource and loadbuiltin with type "binary". The `anims` parameter defines the animation data for the sprite.
---
---There are two formats possible for the anims argument, the simple format looks like this:
---
---```lua
---{
---    sizeX = 1, -- width in tiles
---    sizeY = 2, -- height in tiles
---    animations = {
---        {
---            name = "standing",
---            baseWidth = 16,
---            baseHeight = 32,
---            frames = {
---                { duration = 0.1, source = { x = 0, y = 0 } },
---                { duration = 0.1, source = { x = 16, y = 0 } },
---            }
---        },
---        {
---            name = "moving",
---            baseWidth = 16,
---            baseHeight = 32,
---            frames = {
---                { duration = 0.1, source = { x = 0, y = 32 } },
---                { duration = 0.1, source = { x = 16, y = 32 } },
---                { duration = 0.1, source = { x = 32, y = 32 } },
---                { duration = 0.1, source = { x = 48, y = 32 } },
---            }
---        }
---    }
---}
---```
---This defines a sprite with a width of 1 tile and height of 2 tiles, and two animations (“standing” and “moving”), both of which have frames of animation that are 16 pixels wide and 32 pixels tall. The “standing” animation has two frames, defining the location of its frames to be at pixel coordinates (0, 0) and (16, 0), whereas the “moving” animation has four frames, located at (0, 32), (16, 32), (32, 32), and (48, 32). The animation names correspond to the names listed for the `animate` function. Carrying animations may be added by appending “carry” at the end of the name, for example: “movingcarry”.
---
---The second complex format follows the format of the json found in files shipped with Kitsune Tails. For example:
---```lua
---{
---    sizeX = 1, -- width in tiles
---    sizeY = 2, -- height in tiles
---    animations = {
---        {
---            name = "standing",
---            frames = {
---                {
---                    duration = 0.1,
---                    baseWidth = 16,
---                    baseHeight = 32,
---                    offset = { x = 2, y = 0 },
---                    rectangle = { x = 0, y = 0, width = 12, height = 24 }
---                },
---                {
---                    duration = 0.1,
---                    baseWidth = 16,
---                    baseHeight = 32,
---                    offset = { x = 3, y = 0 },
---                    rectangle = { x = 14, y = 0, width = 12, height = 24 }
---                }
---            }
---        },
---        {
---            name = "moving",
---            frames = {
---                {
---                    duration = 0.1,
---                    baseWidth = 16,
---                    baseHeight = 32,
---                    offset = { x = 2, y = 0 },
---                    rectangle = { x = 0, y = 32, width = 12, height = 24 }
---                },
---                {
---                    duration = 0.1,
---                    baseWidth = 16,
---                    baseHeight = 32,
---                    offset = { x = 1, y = 0 },
---                    rectangle = { x = 13, y = 32, width = 14, height = 24 }
---                },
---                {
---                    duration = 0.1,
---                    baseWidth = 16,
---                    baseHeight = 32,
---                    offset = { x = 2, y = 0 },
---                    rectangle = { x = 27, y = 32, width = 12, height = 24 }
---                },
---                {
---                    duration = 0.1,
---                    baseWidth = 16,
---                    baseHeight = 32,
---                    offset = { x = 1, y = 0 },
---                    rectangle = { x = 40, y = 32, width = 14, height = 24 }
---                }
---            }
---        }
---    }
---}
---```
---This is largely the same as the simple format, the difference is that every frame now can have a `baseWidth` and `baseHeight` and can have an offset, and specifies its source rectangle in the image. This means that blank areas of a sprite can be cropped for efficiency, and the offset used to offset the cropped portion from the base width and height.
---@param binary binary
---@param name string
---@param anims table[]
function definesprite(binary, name, anims) end

---Draw a sprite created using the `sprite` function at the specified `x` and `y` coordinates. The `rot` argument is the rotation of the sprite in radians, with a full rotation happening between 0 and two times pi. The optional `xorg` and `yorg` arguments apply a pixel offset to the point around which the sprite rotates, which defaults to the center of its scaled size in tiles. Note that the `x` and `y` coordinates correspond to where the “feet”, or bottom center, of the sprite will be. The sprite can be scaled using the `scalex` and `scaley` arguments, which default to 1. An optional z-buffer value between 0 and 1 can be specified using the `depth` argument.
---@param spr sprite
---@param x number
---@param y number
---@param rot? number
---@param xorg? number
---@param yorg? number
---@param scalex? number
---@param scaley? number
---@param depth? number
function drawsprite(spr, x, y, rot, xorg, yorg, scalex, scaley, depth) end

---Creates a new sprite of a type specified using the `type` argument. Aside from aliases specified in calls to `definesprite` there are built in types which are:
---@param type spriteType
---@return sprite
function sprite(type) end

---Gets or sets the flags for a sprite created using the sprite function. The `flag` argument specifies the index of the desired flag according to the table below. If `value` is specified the flag is set to the desired value and the new value returned. Otherwise this function simply returns the current value of the flag.
---
--- - 1       Mirrored (horizontal)
--- - 2       Flipped (vertical)
--- - 3       Carrying
---@param spr sprite
---@param flag spriteFlag
---@param value? boolean
---@return boolean
function spriteflags(spr, flag, value) end

---Gets or sets the palette for a sprite created using the `sprite` function. If `palindex` is specified the palette is set to the desired value and the new value returned. Otherwise this function simply returns the current palette for the sprite. If the value of `palindex` is not a number or less than zero, the default palette for the sprite is set.
---@param spr sprite
---@param palindex? integer
---@return integer
function spritepal(spr, palindex) end


---This function works identical to the sprite function but instead of creating a new sprite, it will change the graphical representation of an existing sprite.
---@param spr sprite
---@param name string
function swapsprite(spr, name) end

-- Input Functions

--- Gets the state of the controls. The btn argument can be a number corresponding to the controls listed in the table below, or a number of controls combined using bitwise or, in which case this function returns true only if all of the controls are currently held down. If no btn argument is specified this function returns a number that represents the state of all the controls where if an input is held down the bit it corresponds to is set to one, or zero otherwise.
---
--- Bit  | Value  | Input
--- -----|--------|-----------
--- 1    |  1     | Left
--- 2    |  2     | Right
--- 3    |  4     | Up
--- 4    |  8     | Down
--- 5    |  16    | Main (jump in game)
--- 6    |  32    | Alt (run in game)
--- 7    |  64    | Special (power special move in game)
--- 8    |  128   | Back (open menu button in game)
--- 9    |  256   | Start (open inventory button in game)
---
---@param btn? integer
---@return boolean
function input(btn) end

---Polls control key repeat status. This function returns `true` if a button press repeats this frame, and `false` otherwise. The `btn` argument must be a number corresponding to the controls listed in the table below. When a button is pressed by the user that button is set as repeating this frame. If the user continues pressing the button then, after a short initial pause, that button will be set as repeating with a much smaller delay. The button values are the same as the values for `input` and `lastinput`, although only a single button can be polled using this function.
---
--- Bit  | Value  | Input
--- -----|--------|-----------
--- 1    |  1     | Left
--- 2    |  2     | Right
--- 3    |  4     | Up
--- 4    |  8     | Down
--- 5    |  16    | Main (jump in game)
--- 6    |  32    | Alt (run in game)
--- 7    |  64    | Special (power special move in game)
--- 8    |  128   | Back (open menu button in game)
--- 9    |  256   | Start (open inventory button in game)
---@param btn integer
---@return boolean
function keyrepeat(btn) end

---This function works identical to the `input` function except for the state of input for the previous frame.
---@param btn? integer
---@return boolean
function lastinput(btn) end

-- Software surfaces

---Returns an iterator for a generic for loop which loops over all the pixels in the image data table data (returned by `locksurf`). Example:
---```lua
----- lock surface, mode "rw" fetches current pixel values
---local data = locksurf(mysurf, "rw")
---
----- add 1 to all pixels in image data
---for index, c0, c1, c2, c3, c4, c5 in allpixels(data) do
---    packpixels(data, index, c0 + 1, c1 + 1, c2 + 1, c3 + 1, c4 + 1, c5 + 1)
---end
---```
---@param data surfaceLock
---@return fun():integer, integer, integer, integer, integer, integer, integer  
function allpixels(data) end

---unlock surface, updating pixel values due to "rw" mode
---@param mysurf surface
function unlocksurf(mysurf, data) end

---Clears software surface `surf` to the palette color `color`. If `color` is omitted it defaults to 0 (transparent).
---@param surf surface
---@param color? color
function clearsurf(surf, color) end

---Creates an 8-bit software surface with dimensions of `width` by `height` in pixels and returns a reference to the surface. The 8-bit pixel indices in this surface correspond to the colors in the global palette. If `clearcolor` is specified the surface is cleared to the color in the global palette at index `clearcolor`.
---@param width integer
---@param height integer
---@param clearcolor? color
---@return surface
function createsurf(width, height, clearcolor) end

---Returns the value representing the pixel at coordinates x and y on software surface surf. This function does not require the surface to be locked.
---@param surf surface
---@param x integer
---@param y integer
---@return color
function getpixel(surf, x, y) end

---Extracts from the image data table data (returned by locksurf) the value representing the pixel at coordinates x and y.
---@param data surfaceLock
---@param x integer
---@param y integer
function getdatpixel(data, x, y) end

---Locks surface surf and returns a table containing the locked image data for direct manipulation of the image pixels. The optional mode argument defaults to read/write and can be one of the following:
---
--- - 0  "rw" lock for read/write
--- - 1  "r"  lock for read only
--- - 2  "w"  lock for write only
---
---The `x`, `y`, `width`, and `height` arguments specify a portion of the surface to lock. Locking a smaller region means transferring fewer pixels during lock/unlock operations, which is faster. If the locking mode is read/write or read only, this will copy the pixel data from the surface into the data table.
---
---The table returned by lock contains the following properties:
---
--- - `mode`\
---   The mode used when locking this surface (0, 1, or 2)
---
--- - `x`, `y`, `width`, `height`\
---   Coordinates of the locked area of the surface
---
--- - `stride`\
---   Value indicating how many values there are in the image data per row of locked pixels
---
--- - `count`\
---   Number of entries in this table representing pixels
---
---If the `lock` function was called with read or read/write modes the table will also contain `width * stride` values, starting at index 0, representing all the pixels of the surface. Each value represents 6 pixels, with the leftmost pixel bit packed into the value’s lowest bits, and the rightmost pixel bit packed into the value’s high bits. If the locking mode was write only then these values will be `nil`. The bit masks for each pixel are represented as such:
---
--- Pixel Index   | Mask
--- --------------|----------------
--- 0 (leftmost)  | 0xFF
--- 1             | 0xFF00
--- 2             | 0xFF0000
--- 3             | 0xFF000000
--- 4             | 0xFF00000000
--- 5 (rightmost) | 0xFF0000000000
---
---You can then extract the value of a given pixel using `px = (value & mask) >> (pixelindex * 8)`, or use the `getdatpixel` or `unpackpixels` functions.
---
---The value at index 0 corresponds to the top-left six pixels inside the locked area of the surface. The value at index 1 corresponds to the next 6, and so on. The second row of pixels will start at index `stride`, the third row at index `stride * 2`, and so on. Any given pixel can be extracted as follows (or use the `getdatpixel` and `unpackpixels` functions):
---
---```lua
----- given pixel location 'x' and 'y', and locked image table 'data'
---offset = x % 6                      -- remainder of x, a value between 0 and 5 inclusive
---shf = offset * 8                    -- how much to shift bits for value
---index = y * data.stride + x // 6    -- packed colors value index
---values = data[index] or 0           -- 'or 0' makes sure that the value will never be nil
---pixel =
---    (values >> shf)                 -- shift bits down to the bottom
---    & 0xFF                          -- mask off high bits using bitwise AND to get pixel value
---```
---And any pixel can be written to as follows (or use the setdatpixel and packpixels functions):
---```lua
----- given pixel location 'x' and 'y', pixel 'pixel', and locked image table 'data'
---pixel = pixel & 0xFF                -- make sure pixel is inside 0-255 range
---offset = x % 6                      -- remainder of x, a value between 0 and 5 inclusive
---shf = offset * 8                    -- how much to shift bits for mask and value
---mask = ~(0xFF << shf)               -- bitmask to delete previous pixel value
---index = y * data.stride + x // 6    -- packed colors value index
---values = data[index] or 0           -- 'or 0' makes sure that the value will never be nil
---data[index] = 
---    (values & mask)                 -- bitwise AND with the mask, because this is inverted
---                                    -- it will zero out the bits for this pixel
---    | (pixel << shf)                -- shift pixel value into position and insert using a
---                                    -- bitwise OR
---```
---@param surf surface
---@param mode? (0 | 1 | 2 | "rw"| "r" | "w")
---@param x? integer
---@param y? integer
---@param width? integer
---@param height? integer
---@return surfaceLock
function locksurf(surf, mode, x, y, width, height) end


---Packs colors `c0` through `c5` into a single value and stores it in the image data table `data` (returned by `locksurf`) at position `index`.
---@param data surfaceLock
---@param index integer
---@param c0 integer
---@param c1 integer
---@param c2 integer
---@param c3 integer
---@param c4 integer
---@param c5 integer
function packpixels(data, index, c0, c1, c2, c3, c4, c5) end

---Sets the value representing the pixel at coordinates `x` and `y` on software surface `surf` to the palette color `color`. This function does not require the surface to be locked.
---@param surf surface
---@param x integer
---@param y integer
---@param color color
function setpixel(surf, x, y, color) end

---Packs into the image data table `data` (returned by `locksurf`) the palette color `color` representing the pixel at coordinates `x` and `y`.
---@param data surfaceLock
---@param x integer
---@param y integer
---@param color color
function setdatpixel(data, x, y, color) end

---Unlocks a software surface `surf` locked through the `locksurf` function, with `data` being the table `locksurf` returned. If the mode when the surface was locked was read/write or write only, this will copy the pixel data from the data table back into the surface. Any pixel entry that isn’t a number is skipped when setting data, leaving the original 6 pixels for that value undisturbed.
---@param surf surface
---@param data surfaceLock
function unlocksurf(surf, data) end

---Takes the value in the image data table `data` (returned by `locksurf`) at position `index` and returns six color values for the packed pixels from leftmost to rightmost.
---@param data surfaceLock
---@param index integer
---@return [integer, integer, integer, integer, integer, integer]
function unpackpixels(data, index) end
