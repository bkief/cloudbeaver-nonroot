FROM dbeaver/cloudbeaver:22.2.4
RUN addgroup --gid 6000 --system cloudbeaver && adduser --disabled-password --uid 6000 --gid 6000 --gecos '' cloudbeaver
RUN apt-get update && apt-get install -yq --no-install-recommends \
  libsystemd0 \
  libudev1
USER 6000
