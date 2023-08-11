This file explains the GLF format (to be done) and the reasoning behind the decisions.

The idea is to have a file (named .glf) that is really a .zip format with a standard file structure behind it.
The files (organized in folders) would contain all the data for balance of an Allegiance 2 match. As of 8/10/2023, I am unsure if I want it to also include the sound and model files (and things like that).
The files would be in human readable format (.json), and editable without needing a custom editor (although a custom editor might be easier to use).
.zip is a very well developed format, doing compression is outside of the scope of this game. This would allow people to have easy access to the information of the core. Using a different file descriptor (in this case, .glf), means that these files do not get mixed up with actual zips
The game should come with a default/debug .glf, that would be a backup for future .glf files, where if information is not found/wrong, the default .glf would be used instead.
Alternative idea: force there to be a default .json of each type (ship, modules etc)
Alternative alternative idea: this would be done with the default .glf (as a hardcoded thing)

Some planned faetures: the ability to inherit values from a previous model
