# AutoHotkey Scripts I Use

[index.ahk](./index.ahk) is for scripts that I have not yet converted to AutoHotkey V2 syntax.
[index.ah2](./index.ah2) is for scripts that are AutoHotkey V2 already. Eventually, I just want to have one index file.

The index files just import all the other scripts that I want to use on a regular basis. That way, I only see two AutoHotkey symbols in my system tray and not a bunch.

I associate `.ahk` files with Autohotkey version 1 and I associate the extension `.ah2` with Autohotkey version 2 in Windows. Then I create shortcuts to the index files and place them in my user startup folder so that they are available at startup.

---

## [Layout Manager](./src/layout-manager.ahk) / [Layout Manager V2](./src/layout-manager.ah2)

This script makes it easy to move windows around to fixed positions on the screen. One of the main reasons I like it is that it leaves a little gap between windows. This is not only aesthetically pleasing, but makes it easy to adjust the window sizes with the mouse. For example you can move a window to the upper left corner of the screen with `Win + Shift + Alt + L` and then make it a little taller or shorter as needed.

| Key binding | Description |
| --- | --- |
| `Win + Shift + U` | Makes the active window take up the majority of the screen, but leaves a ten pixel margin around the edges. |
| `Win + U` | Moves and resizes the active window to the upper half of the screen |
| `Win + Shift + C` | Centers the active window on the screen |
| `Win + B` | Moves and resizes the active window to the bottom of the screen |
| `Win + Shift + H` | Moves and resizes the active window to the left half of the screen. The choice of `H` is Vim-inspired. |
| `Win + Shift + L` | Moves and resizes the active window to the right half of the screen. The choice of `L` is Vim-inspired. |
| `Win + Shift + Alt + L` | Snaps the active window the upper right corner of the screen. The choice of `L` is Vim-inspired. Useful combo is to use `Win + Shift + Ctrl + C` to make a window take up a quarter of the screen and then use another shortcut to snap it to a corner. |
| `Win + Shift + Ctrl + L` | Moves the active window to the bottom right corner of the screen. The choice of `L` is Vim-inspired. Useful combo is to use `Win + Shift + Ctrl + C` to make a window take up a quarter of the screen and then use another shortcut to snap it to a corner. |
| `Win + Shift + Alt + H` | Snaps the active window the upper left corner of the screen. The choice of `H` is Vim-inspired. Useful combo is to use `Win + Shift + Ctrl + C` to make a window take up a quarter of the screen and then use another shortcut to snap it to a corner. |
| `Win + Shift + Ctrl + H` | Moves the active window to the bottom left corner of the screen. The choice of `H` is Vim-inspired. Useful combo is to use `Win + Shift + Ctrl + H` to make a window take up a quarter of the screen and then use another shortcut to snap it to a corner. |
| `Win + Shift + Ctrl + C` | Centers the active window on the screen and shrinks it to take up a quarter of the screen. Useful combo is to do this and then use another shortcut like `Win + Shift + Alt + L` to snap the screen to the upper right quarter of the screen.  |

---

## [Launcher](./src/launcher.ahk) 🚀

The launcher script is for launching commonly used programs using hotkeys.

| Key binding | Description |
| --- | --- |
| `Win + Enter` |  Launches the terminal |
| `Win + C` | 🧮 Launches calculator app |


---

## [Desktop Switcher](./src/desktop-switcher.ah2)

This script comes from [VirtualDesktopAccessor](https://github.com/Ciantic/VirtualDesktopAccessor). I built the VirtualDesktopAccessor DLL and include it under `/src`.

Press `Win + <number>` 0 - 9 to switch to that desktop (0 is actually 10 here since it's furthest right on the keyboard. 1 = 1, ..., 9 = 9, 0 = 10).

---

## [Other](./src/other.ah2)

This script has more miscellaneous utilities.

| Key binding | Description |
| --- | --- |
| `Win + F` | Performs ctrl + f. This disables the Windows feedback hub shortcut |
| Win + C | Performs ctrl + c. This disables the Teams shortcut |
| `Capslock` | Sends the down arrow key. This is especially useful with context menus to quickly cycle through options without needing the mouse. |
| `Shift + Capslock` | Sends the up arrow key. This is especially useful with context menus to quickly cycle through options without needing the mouse. |
| Win + , | Opens the preferences window in some applications |

