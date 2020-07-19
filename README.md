# How Do Cloud Services Fail? A Study of Provider-Reported Data
This is the repository for my Honours project at Vrije Universiteit Amsterdam: an analysis of service failure data from AWS, GCP, and Microsoft Azure.
[Here is the final project report](report/report.pdf).

Other key files include:

* [notebooks/Preprocessing.ipynb](notebooks/Preprocessing.ipynb): data cleaning & preprocessing after classification
* [notebooks/Plotting.ipynb](notebooks/Plotting.ipynb): data visualisation
* [data/outages.parquet](data/outages.parquet): provider outage data
* [data/classified.parquet](data/classified.parquet): extracted metadata
* [data/preprocessed.parquet](data/preprocessed.parquet): combined provider data and metadata, after preprocessing (this is used in the plots)
