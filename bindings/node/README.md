# fabric-protos

Node bindings for [Hyperledger Fabric protocol buffers](https://github.com/hyperledger/fabric-protos)

## Usage

Import the packages you need from the protos, following the same structure as the protos themselves.
For example:

```
import { common, ledger, msp, orderer, peer } from '@hyperledger/fabric-protos';
```

Then refer to the implementations you want within those packages.
For example:

```
const proposal = peer.Proposal.deserializeBinary(bytes);
const header = common.Header.deserializeBinary(proposal.getHeader_asU8());
const channelHeader = common.ChannelHeader.deserializeBinary(header.getChannelHeader_asU8());
const channelName = channelHeader.getChannelId();
```

See [JavaScript Generated Code](https://developers.google.com/protocol-buffers/docs/reference/javascript-generated) for more details.
