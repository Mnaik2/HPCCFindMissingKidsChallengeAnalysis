IMPORT $;
HMK := $.File_AllData;


r := RECORD
   STRING State;
   INTEGER4 weight;
END;


NCMECGrouped := TABLE(HMK.mc_byStateDS, {missingstate, total_rec := COUNT(GROUP)}, missingstate);


OUTPUT(NCMECGrouped, {County := missingstate, Value := total_rec}, NAMED('MissingChoropleth'));
