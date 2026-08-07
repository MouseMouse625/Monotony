# Changelog

## v1.0.1

### Added

- settings.json for VSCode file nesting
- All the blur sections to the images folder (to function as a default seed, an upcoming feature)

### Updated

- .gitignore since settings.json sits in the .vscode folder
- README.md (formatting and content since the extension change changes how installs the codebase version)
- Removed blurs as a separate program (aforementioned upcoming feature)
- Removed the need to generate symlinks (replaced by file nesting)
- Ensured higher pixel density for high DPI screens

### Fixed

- Removed the redundant main folder since the source folder now only contains one program
- Removed the sky "gradient" and replaced it with a solid colour
- Removed the finicky masks in several locations
- Fixed the data import paths due to the removal of the main folder
- Fixed the achievements having overlapping coordinates
- Fixed various other typos in the coordinates of a multitude of sprites
- Fixed the malfunctioning exit button
- Restructured the code and optimised several 
    - Matched the declaration-initialisation order
    - Automation of using the next section
    - Improved the structure of several classes to prevent bugs caused by future restructurings

## v1.0.0

### Added

- Initial release
