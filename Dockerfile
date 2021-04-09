FROM python:3-alpine

LABEL name photon
LABEL src "https://github.com/gormux/Photon"
LABEL creator gormux
LABEL dockerfile_maintenance khast3x
LABEL desc "Incredibly fast crawler designed for reconnaissance."

RUN apk add git && git clone https://github.com/gormux/Photon.git Photon
WORKDIR Photon
RUN pip install -r requirements.txt

VOLUME [ "/Photon" ]
# ENTRYPOINT ["sh"]
ENTRYPOINT [ "python", "photon.py" ]
CMD ["--help"]
