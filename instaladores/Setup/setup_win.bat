%windir%\System32\cmd.exe "/C"

call %USERPROFILE%\Anaconda3\Scripts\activate.bat %USERPROFILE%\Anaconda3

call conda remove --yes --name dhdsblend2021 --all

call conda create --yes --name dhdsblend2021 python=3.8

call conda install --yes --name dhdsblend2021 --file %~dp0\requirements.txt

call conda install -c conda-forge --yes --name dhdsblend2021 --file %~dp0\requirements_conda-forge.txt

call conda install -c plotly --yes --name dhdsblend2021 --file %~dp0\requirements_plotly.txt

call conda activate dhdsblend2021

REM # Jupyter widgets extension
call jupyter labextension install @jupyter-widgets/jupyterlab-manager

REM # jupyterlab renderer support
call jupyter labextension install jupyterlab-plotly@4.14.1 --no-build

REM # FigureWidget support
call jupyter labextension install plotlywidget@4.14.1 --no-build

REM # Build extensions (must be done to activate extensions since --no-build is used above)
call jupyter lab build

call set NODE_OPTIONS=

pause