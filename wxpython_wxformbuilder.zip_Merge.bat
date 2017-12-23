rem : batchfile automatically created by chainsaw
rem : use this batchfile to put the chunks together again
rem: $CRC32=E75F8F88
@if not exist "wxpython_wxformbuilder.zip" goto reassemble
@echo *** Cannot start reassembly: file already exists ***
@pause
@goto end
:reassemble
copy /b "wxpython_wxformbuilder.zip.chunk001" + "wxpython_wxformbuilder.zip.chunk002" "wxpython_wxformbuilder.zip"
del "wxpython_wxformbuilder.zip.chunk001"
del "wxpython_wxformbuilder.zip.chunk002"
copy /b "wxpython_wxformbuilder.zip" + "wxpython_wxformbuilder.zip.chunk003" "wxpython_wxformbuilder.zip"
del "wxpython_wxformbuilder.zip.chunk003"
del "wxpython_wxformbuilder.zip_Merge.bat"
:end
