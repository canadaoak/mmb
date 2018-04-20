rem : batchfile automatically created by chainsaw
rem : use this batchfile to put the chunks together again
rem: $CRC32=ED769487
@if not exist "20180420.zip" goto reassemble
@echo *** Cannot start reassembly: file already exists ***
@pause
@goto end
:reassemble
copy /b "20180420.zip.chunk001" + "20180420.zip.chunk002" "20180420.zip"
del "20180420.zip.chunk001"
del "20180420.zip.chunk002"
del "20180420.zip_Merge.bat"
:end
