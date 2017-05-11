as yet unclassified
divideDeltasBy: batchSize
	"This layer has no weights (and therefore no deltas), so it just passes the message to the next layer"

	nextLayer divideDeltasBy: batchSize.