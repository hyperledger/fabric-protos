# Releasing

The following artifacts are created or updated as a result of pushing changes to the `main` branch, and when tagging a new release:

- Go repositories
    - [fabric-protos-go](https://github.com/hyperledger/fabric-protos-go)
    - [fabric-protos-go-apiv2](https://github.com/hyperledger/fabric-protos-go-apiv2)
- npm module
    - [@hyperledger/fabric-protos](https://www.npmjs.com/package/@hyperledger/fabric-protos)
- Java libraries
    - GitHub packages: [fabric-protos](https://github.com/hyperledger/fabric-protos/packages/1412970)
    - Maven central repository: [fabric-protos](https://search.maven.org/artifact/org.hyperledger.fabric/fabric-protos) (tagged release only)

## Before releasing

The following tasks are required before releasing:

- Update version numbers if required (see below for details)

## Create release

Creating a GitHub release on the [releases page](https://github.com/hyperledger/fabric-protos/releases) will trigger the build to publish the new release.

When drafting the release, create a new tag for the new version (with a `v` prefix), e.g. `vX.Y.Z`

The CI actions triggered from a tag will set publish_release to 'true' causing downstream artifacts to be published.

See previous releases for examples of the title and description.

**Important:** make sure you target the correct branch when creating a release (see below for version details)

## After releasing

The following tasks are required after releasing:

- Update version numbers to the next **patch** release (see below for details)

# Versioning

The Hyperledger Fabric protobufs and generated bindings follow the [Go module version numbering system](https://go.dev/doc/modules/version-numbers)

**Important:** Current releases are all in the unstable v0.x.x range. A v0 version makes **no stability or backward compatibility guarantees**.

## Updating version numbers

Use the following version numbers on each branch:

- the `0.1.x` branch is intended for Fabric 2.4 releases and should be versioned as `v0.1.x`
- the `0.2.x` branch is intended for Fabric 2.5 releases and should be versioned as `v0.2.x`
- the `main` branch is intended for Fabric 3.0 releases and should be versioned as `v0.3.x`

The following files need to be modified when updating the version number, and these are checked by the build process to ensure they match a tagged release:

- The `BINDING_VERSION` variable in `.github/workflows/ci-checks.yml`
- The `version` element in `bindings/java/pom.xml`
- The `version` property in `bindings/node/package.json`
  (The `bindings/node/package-lock.json` should also be updated with the new version.)

**Note:** there is no file to update for the Go bindings, since these are versioned by the release tag.
