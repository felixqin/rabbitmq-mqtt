
set(EXECUTABLE_OUTPUT_PATH  "${OUTDIR}")


add_custom_target(mqtt_docker ALL
    sh pack-docker.sh ${EXECUTABLE_OUTPUT_PATH}
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/pack
    COMMENT "build mqtt server docker" VERBATIM
    SOURCES pack/pack-docker.sh pack/build-docker.sh Dockerfile
    )

