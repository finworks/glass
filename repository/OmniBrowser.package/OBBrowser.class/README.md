OBBrowser is the core of OmniBrower. It's the root object for each browser and the model for the SystemWindows which display them. Its main responsibily is managing panels, particularly passing update messages between them.

On the class side, OBBrowser provides some default settings for creating and opening browsers. Subclasses can override these settings to acheive customized behavior.

iVars:

panels	- A collection of objects which manage submorphs of the browser's SystemWindow.

cVars:

MetaGraphs - A dictionary matching names to metagraphs