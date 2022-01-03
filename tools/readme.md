This is a list of Programms needed to make your own Translation.

JSON File Editing
a Texteditor, preferably for Coding like Atom, Visual Studio Code and such.
Just open the JSON that you want to edit with the Editor and change your Text and save it. 

Getting the necessary JSON Files
a Programm called AssetStudio, this Programm allows you to open Unity Packaged Files.
To access the original French JSONs we are opening 
"YOUR INSTALL LOCATION\Waven\Waven_Data\StreamingAssets\AssetBundles\core\localization.fr-fr" and extract all the files into a new Folder
after that we use my PowerShell script "GenerateJSON.ps1" in the extraction Folder, it creates a Folder called "Generation" which has the Files with the correct order for the "Waven Merge.exe" later

Patching a new DLL 
I Personally use dnSpy, target is the Ankama.cube.dll

we are editting the File with some Code in order to download our translation from the Github and apply it to the game. Due to the Complexity for this, I recommend reading the Word Document i created.
https://docs.google.com/document/d/1l_y1nXmM8upnWglrjn4XQau7WXfSRiAt9ytYMSvzSuM/edit?usp=sharing
