# Monotony

>   platformers are supposed to have varied level styles, dynamic movement, and creative approaches to the same, core idea. right?

## Description

Monotony is a 2D platformer aiming to provide a repetitive, hardcore platformer with a high-risk playstyle. Unlike most traditional platformers, with creative, diverse levels, Monotony follows a linear, predictable pattern designed to frustrate the player.

Made with Processing 4.4, an open-source programming language forked from Java. Processing's main purpose is to provide simple visual integration and graphics libraries designed for visual games and GUI.

## Features

- Simplistic movement controls
- An easy to learn, hard to master playstyle
- Repetitive level design
- Minimalist GUI
- Custom cursors
- Easy navigation
- Built-in themes

## Installation

### Executable

<ol>
  <li>Download the latest <code>release</code> of the game for your <code>operating system</code>.
    <ol type="a">
      <li>This is done by navigating to the <a href="https://github.com"><code>Releases</code></a> section of this <code>repository</code>.</li>
      <li>Find the latest <code>release</code> (such as v1.0.0).</li>
      <li>In the <code>Assets</code> section of the release, download the corresponding <strong>file</strong> for your <code>operating system</code> by clicking it (<code>binaryWindows64.zip</code> for <code>Windows</code> and <code>binaryLinux64.zip</code> for <code>Linux</code>).</li>
    </ol>
  </li>
  <li>Run the local copy of your game.
    <ol type="a">
      <li>Locate the downloaded <code>ZIP file</code>, probably in the <code>Downloads</code> folder and <strong>extract</strong> its <code>contents</code>. You can do this by <strong>right-clicking</strong> the <code>file</code> and selecting <code>Extract All</code> or using a tool like <code>7-Zip</code>.</li>
      <li>Locate and open the newly <code>extracted folder</code>.</li>
      <li>Open the <code>nested folder</code> of (probably) the same name.</li>
      <li>
        Run the game's executable files.
        <br>
        &nbsp;&nbsp;&nbsp;Windows: <strong>double-click</strong> <code>processingPlatformerSketch.exe</code>. <code>Windows</code> might show a <code>Windows protected your PC</code> warning (click <code>More info</code> and then <code>Run anyway</code> to launch the game).
        <br>
        &nbsp;&nbsp;&nbsp;Linux: run the file named <code>processingPlatformerSketch.x86_64</code></summary>. You may need to grant <strong>execute permissions</strong> first using <code>chmod +x processingPlatformerSketch.x86_64</code> via the <code>terminal</code>.
      </li>
    </ol>
  </li>
</ol>

### VSCode

1. Download and install `VSCode` from the [official website](https://code.visualstudio.com).

2. Install `Processing` for running the actual game.
    a. **Download** and **install** `Processing 4.5.6` from the [official website](https://processing.org).
    b. After the installation, run the `Processing IDE` (PDE) at least once to complete its **initial setup**.

3. Install the `Processing` extension in `VSCode`.
    a. Open `VSCode`.
    b. Navigate to the `Extensions` tab (`Ctrl+Shift+X` for `Windows` and `Cmd+Shift+X` for `Mac`).
    c. Search for and install the `Processing` extension by `Processing Foundation`.

4. Download the `Sound` library in `Processing` (for sound effects and music).
    a. Open the `Processing IDE`.
    b. Go to `Sketch` > `Import Library` > `Add Library`.
    c. In the `Library Manager`, search for `Sound` by `The Processing Foundation` and click `Install`.

5. Clone the `repository` to your device.
    a. Create a `folder` where you'd like the game to be stored (for example, `Documents/Monotony`)
    b. Right-click the folder and select `Open in Terminal`.
    c. Enter the command `git clone https://github.com/MouseMouse625/Monotony` to **clone** the `repository`.

6. Running the game in `VSCode`.
    a. Open the `cloned folder` in `VSCode` by going to `File` > `Open Folder` and selecting the correct `folder`.
    b. Press the `play` button in the **top-right hand corner** of the screen while having any of the `.pde files` open.

### Comparision

VSCode Version
-   Harder to setup
-   Better anti-alising as it detects app scaling
-   More optimised (less lag)

Processing Version
-   Easier to setup
-   Worse anti-aliasing due to unability to detect app scaling
-   Less optimised due to the native IDE not being the best (more lag)

## Contributions

Do you have any suggestions, fixes, or extensions? If so, you can submit a pull request on [Github](https://github.com/MouseMouse625/Monotony).

## Credits

- [`HCB`](https://hackclub.com) for hosting this whole thing
    - [`Stardance`](https://stardance.hackclub.com) for running an actual summer event
- [`The World's Hardest Game`](https://en.wikipedia.org/wiki/The_World%27s_Hardest_Game) for the mocking remarks
- [`OCO`](https://oco-game.com) for the minimalism in both the aesthetics and sound effects
- [`VSCode`](https://code.visualstudio.com) and [`Processing`](https://processing.org) for making the coding part of all of this possible
- [`DeepSeek`](https://chat.deepseek.com) for enhancing small parts of the game (such as symlinks, blurs and the parallax effect)
- [`Google`](https://www.google.com) for acting as a universal search engine for all of my dumb queries

## License

This project uses the MIT License stating that the project is open source and free for anyone to use or develop. For more info, navigate to the [LICENSE.md](https://github.com/MouseMouse625/Monotony/blob/main/LICENSE.md) file.

---

Copyright © 2025 Monotony
