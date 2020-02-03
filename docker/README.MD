# Data Science Docker Image
This image contain some libs to data science and data analysis projects.  Basically include jupyter notebook, plotly, orca and other default libs like numpy, pandas(1.0.0), scikit-learn, etc. 

## Installation
To create an image locally (change `jupy` to what you want)
```bash
docker build -t jupy . 
```

To download a image from DockerHub
```bash
docker pull sergiosjs/jupy_plotly:latest
```

The `latest` tag (Docker's default if you don't specify a tag)
will give you the most recently-built version of this image.

## Usage
Python packges are installed in the root environment and the full list of the libs can seen in [requirements.txt](requirements.txt)

To start a docker container from this image use:
```bash
docker run -p 8888:8888 -v local_path:/home/jovyan/work/file image_name
```

`-v` to mount a volume between the container and docker server and `-p` to define the jupyter notebook port. A example:

```bash
docker run -p 8888:8888 -v F:\Projects\data_science_portfolio\:/home/jovyan/work/ds sergiosjs/jupy_plotly 
```