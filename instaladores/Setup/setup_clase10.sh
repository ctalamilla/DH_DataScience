
#!/usr/bin/env bash

conda init bash

conda create --yes --name dhdsblend2021_clase10 python=3.7

conda activate dhdsblend2021_clase10

conda install jupyterlab=2.2.6

conda install -c conda-forge nb_conda_kernels=2.3.1

conda install -c conda-forge pyproj=2.4.2.post1

conda install -c conda-forge descartes=1.1.0

conda install -c conda-forge geopandas=0.8.1

conda install -c conda-forge geopy=2.0.0

conda install -c conda-forge matplotlib=3.2.2

conda install -c anaconda seaborn=0.11.0

conda install -c conda-forge contextily=1.1.0 

