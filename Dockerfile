FROM fedora:34

RUN dnf -y install rpmlint
RUN rpmlint --version

WORKDIR /work
ENTRYPOINT ["rpmlint"]
