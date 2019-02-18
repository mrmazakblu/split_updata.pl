@echo off
if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )
title EXTRACT UPDATE.APP
echo FIRST STEP IS TO SELECT THE UPDATE.APP TO WORK ON
echo SELECT THE UPDATE.APP FROM THE FILE SELECT WINDOW THAT OPENS
echo SOMETIMES THE WINDOW TAKES A MOMENT TO OPEN, BE PATIENT
call bin\file-chooser.bat
echo NEXT STEP IS TO SELECT THE FOLDER TO EXTRACT TO
echo SOMETIMES THE WINDOW TAKES A MOMENT TO OPEN, BE PATIENT
call bin\folder-chooser.bat
::THIS FIRST CALL IS USED TO GET LIST OF CONTAINED IMAGES
bin\perl\bin\perl.exe bin\splitupdate "%file%" null
echo INPUT PARTITION NAME TO EXTRACT
echo JUST ENTER a period "." TO EXTRACT ALL
echo INPUT NULL TO SKIP EXTRACTION
echo IF DISPLAYED NAME ABOVE IS IN CAPITOLS THEN IT MUST BE ENTERED THAT WAY
SET /P filename="What would you like to Extract ?  "
bin\perl\bin\perl.exe bin\splitupdate "%file%" %filename% "%folder%"
pause
exit
