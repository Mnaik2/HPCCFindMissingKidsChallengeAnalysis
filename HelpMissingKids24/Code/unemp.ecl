IMPORT $;
HMK := $.File_AllData;

// Aggregating unemployment data by county
UnemploymentGrouped := TABLE(HMK.unemp_byCountyDS, {State, total_rec := COUNT(GROUP)}, State);

OUTPUT(UnemploymentGrouped, {County := State, Value := total_rec}, NAMED('UnemploymentByCounty'));
