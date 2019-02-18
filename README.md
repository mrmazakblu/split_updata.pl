splitupdate (formerly split_updata.pl)
===============

Improved tool for splitting UPDATE.APP for Huawei phones

To extract execute:
```
Need perl installed and have perl listed in system path.
Or call perl first

chmod +x splitupdate

Command plus 3 needed  arguments
Command = calling the perl script
argument 1 = the update.app to be opened
argument 2 = the image to be extracted (use period (.) to extract all)
argument 3 = base directory to be used when extracting

./splitupdate UPDATE.APP . /base-dir-for-extracting
```
In above example the "." is used to force all images contained in update.app to be extracted
If you only want one image, replace the "." with image you want extracted. (it needs to be case sensitive)

The img files will be extracted in the /base-dir-for-extracting/output/ folder.

There is inclded a batch file. "extract.bat" this is simple batch calling for split update to run file extraction.
