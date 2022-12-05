ARG BUILD_FROM
FROM $BUILD_FROM

# Setup
RUN apk add --no-cache ser2net

# Copy data for add-on
COPY run.sh /

# Build arugments
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION
ARG BUILD_ARCH

# Labels
LABEL \
    io.hass.name="ser2net" \
    io.hass.description="Proxy tcp connections to serial ports in Home Assistant" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="redloro <redloro@gmail.com>" \
    org.label-schema.description="Proxy tcp connections to serial ports in Home Assistant" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="ser2net" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://github.com/redloro/hassio/tree/main/ser2net" \
    org.label-schema.usage="https://github.com/redloro/hassio/tree/main/ser2net/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/redloro/hassio" \
    org.label-schema.vendor="redloro"

RUN chmod a+x /run.sh
CMD [ "/run.sh" ]