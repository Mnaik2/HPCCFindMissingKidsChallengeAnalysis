IMPORT $;
HMK := $.File_AllData;

HospitalGroupedByState := TABLE(HMK.HospitalDS, {state, total_rec := COUNT(GROUP)}, state);
OUTPUT(HospitalGroupedByState, {State, Value := total_rec}, NAMED('HospitalByState'));
