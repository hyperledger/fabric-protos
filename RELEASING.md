# Releasing

Note: There is not yet a formal release process for this repository.

The following artifacts are created as a result of pushing changes to the `main` branch:

- Go repository
    - [fabric-protos-go](https://github.com/hyperledger/fabric-protos-go)
- npm modules
    - [@hyperledger/fabric-protos](https://www.npmjs.com/package/@hyperledger/fabric-protos)
- Java libraries
    - [fabric-protos](https://github.com/hyperledger/fabric-protos/packages/1412970)

# Versioning

The Hyperledger Fabric protobufs and generated bindings follow the [Go module version numbering system](https://go.dev/doc/modules/version-numbers)

## Updating version numbers

The following files need to be modified when updating the version number, and these are checked by the build process to ensure they match a tagged release:

- The `BINDING_VERSION` variable in `.github/workflows/ci-checks.yml`
- The `version` element in `bindings/java/pom.xml`
- The `version` property in `bindings/node/package.json`

**Note:** there is no file to update for the Go bindings, since these are versioned by the release tag.

`release-2.4` should be versioned as `v0.1.x`
`release-2.5` should be versioned as `v0.2.x`
`main` should be versioned as `v0.3.x`

**Important:** Current releases are all in the unstable v0.x.x range. A v0 version makes **no stability or backward compatibility guarantees**.
