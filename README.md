# Arch Config

## General Info
Display Server: XORG
Window Manager: DWM
Status Bar: DWM Blocks
Terminal Emulator: RXVT-Unicode
File Browser: Ranger

## DWM Commands
| command | description | binding |
|---------|-------------|---------|
| View | View tag| Super + Tag|
| Combo View | Fast add multiple tags to view | Super + (Tags in quick succesision)|
| Toggle View | Toggle view of tag | Super + Ctrl + Tag|
| Move Window | Move current window to new tag| Supter + Shift + Tag |
| Duplicate Window | Duplicate window to new tag | Super + Shift + Control + Tag |
| Duplicate Window to all tags | Duplicate current window to all tags | Super + Shift + 0|
| View last viewed tag| View windows on the previous tag | Super + TAB |
| View all tags | View the windows from all tags | Super + 0|
| Move Focus Up Stack | Move focus up the stack | Super + J |
| Move Focus Down Stack | Move focus down the stack | Super + K|
| Prioritize | Move current window to top of stack | Super + Shift + Enter |
| Move Window Up Stack | Move focused window up the stack | Super + Shift + J |
| Move Window Down Stack | Move focused window down the stack | Super + Shift + K |
| Increase Master Number | Increases number of windows shown in the master stack | Super + I|
| Decrease Master NUmber | Decreases number of windows shown in the master stack | Super + D|
| Toggle window in stack | Move window to/from master stack | Super + X |
| Move Divider Left| Move Divider between master and stack left | Super + H |
| Move Divider Right | Move Divider between master and stack right | Super + L |
| Increase Window Height | Increase Window Height | Super + Shift + H |
| Decrease Window height | Decrease Window Height | Super + Shift + L |
| Reset Window height | Reset window to default height | Super + Shift + O|
| Decrease Gaps | Decrease gaps between windows | Super + MINUS |
| Increase Gaps | Increase gaps between windows | Super + EQUALs |
| Remove Gaps | Remove gaps between windows | Super + Shift + EQUALS |
| Close window | Closes currently focused window | Super + C | 
| Run Terminal | Open terminal | Super + Enter |
| Run Dmenu | Application launcher | Super + P |
| Lock Screen | Locks screen with i3 lock | Alt + L|
| Quit DWM | Exit dwm, go back to tty | Super + Shift + Q |
| Layout Tile | Set layout to tile (Default) | Super + T |
| Layout Monocle | Lay windows fullscreen on top of each other | Super + M |
| Layout Deck | Monicle only in stack | Super + C |
| Layout Tatami | Layout Stack like tatami mats | Super + Y |
| Toggle Window Fullscreen | Toggles window into fullscreen mode | Super + Shift + F |
| Toggle Floating | Set window as floating | Super + Shift + Space |
| Set Floating | Set Tag as floating | Super + F |
| Move Window (Mouse) | Move window with mouse (Window set as floating) | Super + LeftMouseButton |
| Resize Window (Mouse) | Resize window with mouse (Window set as floating) | Super + RightMouseButton |


## New Commands
| command | description |
|---------|-------------|
| lock | Locks screen with i3, generates background from random image in ~/Wallpapers |
| setWallpaper | sets wallpaper from image path or random file in ~/Wallpapers |
| tray | opens a temporary tray | 

## Ranger
Image Preview: Ueberzug
Video Thumbnail Preview: ffmpegthumbnailer
| command | binding |
|---------|---------|
| Set wallpaper to file | bs |
| Set wallpaper to random file | br |
| Lock with file | bl |
