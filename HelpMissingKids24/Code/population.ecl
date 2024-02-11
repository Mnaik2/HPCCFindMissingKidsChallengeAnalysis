IMPORT $;
HMK := $.File_AllData;

// Aggregating population estimates data by state
PopulationEstimatesGroupedByState := TABLE(HMK.pop_estimatesDS, {State, total_rec := COUNT(GROUP)}, State);

OUTPUT(PopulationEstimatesGroupedByState, {State, Value := total_rec}, NAMED('PopulationEstimatesByState'));
