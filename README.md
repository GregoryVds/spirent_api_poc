# Spirent automation

POC trying to use ue OpenAPI Generator to generate the client library from
the OpenAPI spec provided by Spirent (https://github.com/OpenAPITools/openapi-generator).

It doesn't work at the moment. I am not sure if this is due to the Spirent
spec being invalid?

```
make spirent
```

A working baseline to compare is the standard petstore spec:

```
make petstore
```

## Commands

Learn about generic generator options:

```
docker run --rm -v "${PWD}:${PWD}" openapitools/openapi-generator-cli help generate
```

Learn about Go generator options:

```
docker run --rm -v "${PWD}:${PWD}" openapitools/openapi-generator-cli config-help -g go
```

These options should be placed in `config.json` file.

Output Mustache template, can probably be helpful to troubleshoot:

```
docker run --rm -v "${PWD}:${PWD}" --workdir "${PWD}" openapitools/openapi-generator-cli author template -g go
```

# Caveats

- Spirent OpenAPI spec generates code that does not compile?
```
go build .
# tessares.net/spirent/openapi/client
openapi/client/api_default.go:37:19: undefined: UNKNOWN_BASE_TYPE
```
- Spirent OpenAPI spec invalid?
- isGoSubmodule option doesn't seem to work?
