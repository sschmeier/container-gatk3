FROM frolvlad/alpine-glibc:alpine-3.7
ADD gatk3.sh /usr/local/bin/gatk3
RUN apk add --no-cache openjdk8-jre
COPY --from=broadinstitute/gatk3:3.8-1 /usr/GenomeAnalysisTK.jar /usr/GenomeAnalysisTK.jar
