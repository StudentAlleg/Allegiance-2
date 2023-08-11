This file explains the GLF format (to be done) and the reasoning behind the decisions.

The idea is to have a file (named .glf) that is really a .zip format with a standard file structure behind it.
The files (organized in folders) would contain all the data for balance of an Allegiance 2 match. As of 8/10/2023, I am unsure if I want it to also include the sound and model files (and things like that).
The files would be in human readable format (.json), and editable without needing a custom editor (although a custom editor might be easier to use).
The game should come with a default/debug .glf, that would be a backup for future .glf files, where if information is not found/wrong, the default .glf would be used instead

