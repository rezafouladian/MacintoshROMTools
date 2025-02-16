

#### To add the submodule to your repo
```
git submodule add https://github.com/rezafouladian/MacintoshROMTools.git ROMTools
``` 

#### To update the submodule with the latest changes
```
cd ROMTools
git pull origin main
```
If you are using Visual Studio Code, you can go to Source Control on the left, find ROMTools, and click the "Syncronize Changes" button.

If you choose not to name the folder "ROMTools", you will also need to update `Include.s` to replace all occurances of "ROMTools".
