# Releasing

Note: There is not yet a formal release process for this repository.

The following artifacts are created or updated as a result of pushing changes to the `main` branch:

- Go repositories
    - [fabric-protos-go](https://github.com/hyperledger/fabric-protos-go)
    - [fabric-protos-go-apiv2](https://github.com/hyperledger/fabric-protos-go-apiv2)
- npm modules
    - [@hyperledger/fabric-protos](https://www.npmjs.com/package/@hyperledger/fabric-protos)
- Java libraries
    - [fabric-protos](https://github.com/hyperledger/fabric-protos/packages/1412970)


The following artifacts are created or updated as a result of tagging a new release:

- Go repositories
    - [fabric-protos-go-apiv2](https://github.com/hyperledger/fabric-protos-go-apiv2)
- npm modules
    - [@hyperledger/fabric-protos](https://www.npmjs.com/package/@hyperledger/fabric-protos)
- Java libraries
    - [fabric-protos](https://search.maven.org/artifact/org.hyperledger.fabric/fabric-protos)

## Before releasing

The following tasks are required before releasing:

- Update version numbers if required (see below for details)

## Create release

Creating a GitHub release on the [releases page](https://github.com/hyperledger/fabric-protos/releases) will trigger the build to publish the new release.

When drafting the release, create a new tag for the new version (with a `v` prefix), e.g. `vX.Y.Z`

See previous releases for examples of the title and description.

## After releasing

The following tasks are required after releasing:

- Update version numbers to the next point release (see below for details)

# Versioning

Use the [Go module version numbering system](https://go.dev/doc/modules/version-numbers).

## Updating version numbers

The following files need to be modified when updating the version number, and these are checked by the build process to ensure they match a tagged release:

- The `BINDING_VERSION` variable in `.github/workflows/ci-checks.yml`
- The `version` element in `bindings/java/pom.xml`
- The `version` property in `bindings/node/package.json`
  (The `bindings/node/package-lock.json` should also be updated with the new version.)

**Note:** there is no file to update for the Go bindings, which are versioned by the release tag.

## Updating the major version

Incompatible changes, which would require a major version change, should not be made to the Fabric proto definitions.
