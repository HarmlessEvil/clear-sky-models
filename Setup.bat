if not exist "output/cache/bruneton" mkdir "output/cache/bruneton"
if not exist "output/cache/haber" mkdir "output/cache/haber"
if not exist "output/cache/input" mkdir "output/cache/input"
if not exist "output/cache/nishita" mkdir "output/cache/nishita"
if not exist "output/cache/polradtran" mkdir "output/cache/polradtran"
if not exist "output/figures" mkdir "output/figures"
if not exist "output/libradtran" mkdir "output/libradtran"



wget -O input/2013-05-27___09.30.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___09.30.00.7z
wget -O input/2013-05-27___09.45.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___09.45.00.7z
wget -O input/2013-05-27___10.00.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___10.00.00.7z
wget -O input/2013-05-27___10.15.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___10.15.00.7z
wget -O input/2013-05-27___10.30.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___10.30.00.7z
wget -O input/2013-05-27___10.45.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___10.45.00.7z
wget -O input/2013-05-27___11.00.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___11.00.00.7z
wget -O input/2013-05-27___11.15.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___11.15.00.7z
wget -O input/2013-05-27___11.30.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___11.30.00.7z
wget -O input/2013-05-27___11.45.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___11.45.00.7z
wget -O input/2013-05-27___12.00.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___12.00.00.7z
wget -O input/2013-05-27___12.15.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___12.15.00.7z
wget -O input/2013-05-27___12.30.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___12.30.00.7z
wget -O input/2013-05-27___12.45.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___12.45.00.7z
wget -O input/2013-05-27___13.00.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___13.00.00.7z
wget -O input/2013-05-27___13.15.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___13.15.00.7z
wget -O input/2013-05-27___13.30.00.7z http://web.archive.org/web/20160617214029/http://www.graphics.cornell.edu/resources/clearsky/data/2013-05-27/RADIANCE/2013-05-27___13.30.00.7z


7zr x -oinput input/2013-05-27___09.30.00.7z
7zr x -oinput input/2013-05-27___09.45.00.7z
7zr x -oinput input/2013-05-27___10.00.00.7z
7zr x -oinput input/2013-05-27___10.15.00.7z
7zr x -oinput input/2013-05-27___10.30.00.7z
7zr x -oinput input/2013-05-27___10.45.00.7z
7zr x -oinput input/2013-05-27___11.00.00.7z
7zr x -oinput input/2013-05-27___11.15.00.7z
7zr x -oinput input/2013-05-27___11.30.00.7z
7zr x -oinput input/2013-05-27___11.45.00.7z
7zr x -oinput input/2013-05-27___12.00.00.7z
7zr x -oinput input/2013-05-27___12.15.00.7z
7zr x -oinput input/2013-05-27___12.30.00.7z
7zr x -oinput input/2013-05-27___12.45.00.7z
7zr x -oinput input/2013-05-27___13.00.00.7z
7zr x -oinput input/2013-05-27___13.15.00.7z
7zr x -oinput input/2013-05-27___13.30.00.7z