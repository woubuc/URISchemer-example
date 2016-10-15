# URISchemer Example
This is an example Gamemaker: Studio project for my [URISchemer DLL](https://github.com/woubuc/URISchemer).

## How it works
There are three scripts in the project.

`uri_schemer_init()`

Always call this script before using the other two. It loads the DLL and links the external functions.

`uri_schemer_register_scheme(string scheme)`

Registers a URI scheme. Takes a string argument of the URI scheme you want (e.g. pass it `"example"` to get the URI scheme `example://`).

- Returns `-1` if the URI scheme already exists (the DLL does not override existing registry entries)
- Returns `0` if there was an error or the user did not have permission
- Returns `1` if the URI scheme was created successfully

`uri_schemer_request_admin_rights()`

Launches the game again in a new process with admin rights. This will pop up a Windows UAC window.

It does not automatically close the current process, you need to manually end it (e.g. by calling `game_end()`).

It also does not remember if you've already asked for admin permission. See the example code in the object for a way to easily keep track of this information using an INI file.