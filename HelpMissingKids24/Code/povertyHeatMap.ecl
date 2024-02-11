IMPORT $;
HMK := $.File_AllData;

// Aggregating poverty estimates data by state
PovertyEstimatesGroupedByState := TABLE(HMK.pov_estimatesDS, {State, total_rec := COUNT(GROUP)}, State);

OUTPUT(PovertyEstimatesGroupedByState, {State, Value := total_rec}, NAMED('PovertyEstimatesByState'));
