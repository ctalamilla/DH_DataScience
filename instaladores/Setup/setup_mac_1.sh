#!/usr/bin/env bash

conda init bash


conda remove --yes --name dhdsblend2021 --all


conda create --yes --name dhdsblend2021 python=3.8

conda install --yes --name dhdsblend2021 --file requirements.txt


conda install -c conda-forge --yes --name dhdsblend2021 --file requirements_conda-forge.txt


conda install -c plotly --yes --name dhdsblend2021 --file requirements_plotly.txt


conda activate dhdsblend2021
