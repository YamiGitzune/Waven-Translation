This is a list of Programms needed to make your own Translation.

# JSON File Editing
1. a Texteditor, preferably for Coding like Atom, Visual Studio Code and such.
2. Just open the JSON that you want to edit with the Editor and change your Text and save it. 

# Getting the necessary JSON Files
1. a Programm called AssetStudio, this Programm allows you to open Unity Packaged Files.
2.To access the original French JSONs we are opening "YOUR INSTALL LOCATION\Waven\Waven_Data\StreamingAssets\AssetBundles\core\localization.fr-fr" and extract all the files into a new Folder
4. create a Folder called "Generation" in the extraction Folder
3. after that we use my PowerShell script "GenerateJSON.ps1" in the extraction Folder, it creates JSONs that are in the Format for the "Waven Merger.exe", with some minor bugs atm. These need to be ironed out by hand while translating. 

# Merging the files
1. Please Check the Waven Merger folder for this


# Patching a new DLL 
1. I Personally use dnSpy, target is the Ankama.cube.dll

2. we are editting the File with some Code in order to download our translation from the Github and apply it to the game. Due to the Complexity for this, I recommend reading the Word Document i created.
3. https://docs.google.com/document/d/1l_y1nXmM8upnWglrjn4XQau7WXfSRiAt9ytYMSvzSuM/edit?usp=sharing
