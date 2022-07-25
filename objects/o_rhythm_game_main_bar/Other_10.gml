/// @description Initialize Sequences

var sequences = global.ingredientLookup[itemId].rhythmGameSequences;
var sequenceIndex = irandom_range(0, array_length(sequences)-1);

buttonSequenceArray = sequences[sequenceIndex];