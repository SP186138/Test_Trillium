for /F "tokens=*" %%A in (E:\myfile.txt) do forfiles -p %%A /S -m *.* /D -2 -C "cmd /c del @path" 