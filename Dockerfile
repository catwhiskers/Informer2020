ARG BASE_IMG=${BASE_IMG}
FROM ${BASE_IMG} 

ENV PATH="/opt/ml/code:${PATH}"
## install cmake 3.17 && opencv

WORKDIR /opt/program
RUN cp /changehostname.c /opt/program/
COPY . /opt/program/
#entry point for sagemaker training job 
ENTRYPOINT ["python", "informer_sm_entry.py"]

