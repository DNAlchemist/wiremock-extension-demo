FROM wiremock/wiremock

ADD https://repo1.maven.org/maven2/org/wiremock/wiremock-webhooks-extension/2.31.0/wiremock-webhooks-extension-2.31.0.jar /var/wiremock/extensions/

EXPOSE 8585 8080 8081

COPY __files __files
COPY mappings mappings

CMD "--extensions org.wiremock.webhooks.Webhooks"