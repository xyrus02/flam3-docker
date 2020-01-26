FROM gcc:9.2

# Labels
LABEL vendor="Georg Kiehne"
LABEL maintainer="info@xyrus-worx.org"

LABEL org.label-schema.schema-version=1.0

LABEL org.label-schema.name="flam3 cosmic recursive fractal flames"
LABEL org.label-schema.description="Flames are algorithmically generated images and animations."
LABEL org.label-schema.vendor="Georg Kiehne"

LABEL org.label-schema.url="https://flam3.com"
LABEL org.label-schema.vcs-url="https://github.com/xyrus02/flam3"

LABEL org.label-schema.docker.cmd="docker run -iv ${PWD}:/out xyrusworx/flam3 < input.flam3"

# Clone and compile
WORKDIR /usr/src/flam3
RUN git clone https://github.com/scottdraves/flam3 /usr/src/flam3
RUN ./configure && make && make install && mkdir -p /out && rm -rf /usr/src/flam3

# Provide binary
WORKDIR /out
ENTRYPOINT /usr/local/bin/flam3-render