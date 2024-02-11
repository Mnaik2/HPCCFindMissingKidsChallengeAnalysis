IMPORT $;
HMK := $.File_AllData;

PoliceGroupedByState := TABLE(HMK.PoliceDS, {state, total_rec := COUNT(GROUP)}, state);
OUTPUT(PoliceGroupedByState, {State, Value := total_rec}, NAMED('PoliceByState'));
