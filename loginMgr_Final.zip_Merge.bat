rem : batchfile automatically created by chainsaw
rem : use this batchfile to put the chunks together again
rem: $CRC32=E5467E50
@if not exist "loginMgr_Final.zip" goto reassemble
@echo *** Cannot start reassembly: file already exists ***
@pause
@goto end
:reassemble
copy /b "loginMgr_Final.zip.chunk001" + "loginMgr_Final.zip.chunk002" "loginMgr_Final.zip"
del "loginMgr_Final.zip.chunk001"
del "loginMgr_Final.zip.chunk002"
del "loginMgr_Final.zip_Merge.bat"
:end
