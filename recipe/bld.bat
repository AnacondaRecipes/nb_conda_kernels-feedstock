%PYTHON% -m pip install --no-deps --ignore-installed .
if errorlevel 1 exit 1

set SCRIPTS="%PREFIX%\Scripts"
if not exist %SCRIPTS% mkdir %SCRIPTS%
if errorlevel 1 exit 1

:: Install pre-link and pre-unlink script from recipe which include changes similar to
:: https://github.com/Anaconda-Platform/nb_conda_kernels/pull/124
::copy %SRC_DIR%\conda-recipe\post-link.bat %SCRIPTS%\.nb_conda_kernels-post-link.bat || exit 1
::copy %SRC_DIR%\conda-recipe\pre-unlink.bat %SCRIPTS%\.nb_conda_kernels-pre-unlink.bat || exit 1
copy %RECIPE_DIR%\post-link.bat %SCRIPTS%\.nb_conda_kernels-post-link.bat || exit 1
copy %RECIPE_DIR%\pre-unlink.bat %SCRIPTS%\.nb_conda_kernels-pre-unlink.bat || exit 1
