
# Jupyter widgets extension
jupyter labextension install @jupyter-widgets/jupyterlab-manager

# jupyterlab renderer support
jupyter labextension install jupyterlab-plotly@4.14.1 --no-build

# FigureWidget support
jupyter labextension install plotlywidget@4.14.1 --no-build

# Build extensions (must be done to activate extensions since --no-build is used above)
jupyter lab build

unset NODE_OPTIONS
