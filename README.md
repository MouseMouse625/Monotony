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

### Codebase

<ol>
  <li>Download and install <code>VSCode</code> from the <a href="https://code.visualstudio.com">official website</a>.</li>
  <li>Install <code>Processing</code> for running the actual game.
    <ol type="a">
      <li>Download and install <code>Processing 4.5.6</code> from the <a href="https://processing.org">official website</a>.</li>
      <li>After the installation, run the <code>Processing IDE</code> (PDE) at least once to complete its <strong>initial setup</strong>.</li>
    </ol>
  </li>
  <li>Install the <code>Processing</code> extension in <code>VSCode</code>.
    <ol type="a">
      <li>Open <code>VSCode</code>.</li>
      <li>Navigate to the <code>Extensions</code> tab (<code>Ctrl+Shift+X</code> for <code>Windows</code> and <code>Cmd+Shift+X</code> for <code>Mac</code>).</li>
      <li>Search for and install the <code>Processing</code> extension by <code>Processing Foundation</code>.</li>
    </ol>
  </li>
  <li>Download the <code>Sound</code> library in <code>Processing</code> (for sound effects and music).
    <ol type="a">
      <li>Open the <code>Processing IDE</code>.</li>
      <li>Go to <code>Sketch</code> > <code>Import Library</code> > <code>Add Library</code>.</li>
      <li>In the <code>Library Manager</code>, search for <code>Sound</code> by <code>The Processing Foundation</code> and click <code>Install</code>.</li>
    </ol>
  </li>
  <li>Clone the <code>repository</code> to your device.
    <ol type="a">
      <li>Create a <code>folder</code> where you'd like the game to be stored (for example, <code>Documents/Monotony</code>)</li>
      <li>Right-click the folder and select <code>Open in Terminal</code>.</li>
      <li>Enter the command <code>git clone https://github.com/MouseMouse625/Monotony</code> to <strong>clone</strong> the <code>repository</code>.</li>
    </ol>
  </li>
  <li>Running the game in <code>VSCode</code>.
    <ol type="a">
      <li>Open the <code>cloned folder</code> in <code>VSCode</code> by going to <code>File</code> > <code>Open Folder</code> and selecting the correct <code>folder</code>.</li>
      <li>Press the <code>play</code> button in the <strong>top-right hand corner</strong> of the screen while having any of the <code>.pde files</code> open.</li>
    </ol>
  </li>
</ol>

### Comparision

<table>
  <tr>
    <th>Codebase</th>
    <th>Executable</th>
  </tr>
  <tr>
    <td>More dependencies</td>
    <td>Standalone</td>
  </tr>
  <tr>
    <td>Better anti-aliasing</td>
    <td>Worse anti-aliasing</td>
  </tr>
  <tr>
    <td>Editable</td>
    <td>Version-locked</td>
  </tr>
  <tr>
    <td>Slower startup</td>
    <td>Faster startup</td>
  </tr>
  <tr>
    <td>Smaller file size</td>
    <td>Larger file size</td>
  </tr>
  <tr>
    <td>Editable</td>
    <td>Version-locked</td>
  </tr>
</table>

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
