# Hyperledger Fabric gRPC Service Definitions

This repository contains the [grpc] service and [protocol buffer][protobuf] definitions for the Hyperledger Fabric project.
Tools like `protoc` can transform these definitions into code that can be used by clients and libraries to interact with Fabric.

Language bindings for Go, Node and Java are generated from the protocol buffer definitions within this repository, and published for use by other projects. For more information, please see the [documentation](https://hyperledger.github.io/fabric-protos/).

Issues and pull requests related to any of the published language bindings should be raised in this repository.

## Building and testing

### Build using make

The following Makefile targets are available:

- `make lint` - run [Buf] linter and breaking change detection
- `make javabindings` - run Java bindings code generation
- `make nodebindings` - run Node.js bindings code generation

Note: there is a separate Makefile for the original version of Go protocol buffers APIv1, which you can specifiy using `make -f Makefile.apiv1 ...`

See [A new Go API for Protocol Buffers][apiv2] for details of the Go protocol buffers APIv1 and APIv2.

[Buf]: https://github.com/bufbuild/buf
[grpc]: https://grpc.io/docs/guides/
[protobuf]: https://github.com/protocolbuffers/protobuf/
[apiv2]: https://go.dev/blog/protobuf-apiv2
