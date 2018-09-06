splitupdate (formerly split_updata.pl)
===============

Improved tool for splitting UPDATE.APP for Huawei phones

To extract execute:
```
chmod +x splitupdate

Command plus 3 needed  arguments
Command = calling the perl script
argument 1 = the update.app to be opened
argument 2 = the image to be extracted (use period (.) to extract all)
argument 3 = base directory to be used when extracting

./splitupdate UPDATE.APP . /base-dir-for-extracting
```

The img files will be extracted in the /output/ folder.
