FROM itzg/minecraft-server:java25-graalvm

COPY packs/ /image/packs/
COPY --chmod=755 start-deployGTNH /image/scripts/

ENTRYPOINT [ "/image/scripts/start" ]
HEALTHCHECK --start-period=2m --retries=2 --interval=30s CMD mc-health
