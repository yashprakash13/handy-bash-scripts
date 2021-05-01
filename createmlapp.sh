#!/bin/bash

APP_NAME="$1"
cd
cd Desktop/MLApps/
mkdir $APP_NAME
cd $APP_NAME
python -m venv newenv
source newenv/bin/activate
pip install --upgrade pip
pip install numpy pandas matplotlib streamlit
code . 