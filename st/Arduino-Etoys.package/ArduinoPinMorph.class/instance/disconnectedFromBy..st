attaching
disconnectedFromBy: aConnector
[
aConnector destinationMorph ifNotNilDo: [:m | m owner detach].
aConnector sourceMorph ifNotNilDo: [:m | m owner detach].]
on: Error do: []