IMPORT $;
HMK := $.File_AllData;

// Filtering for multiple specified attributes
FilteredEducationDS := HMK.EducationDS(
    Attribute IN [
        'Percent of adults with a high school diploma only, 2000',
        'Percent of adults completing some college or associate\'s degree, 2000',
        'Percent of adults with a bachelor\'s degree or higher, 2000'
    ]);

OUTPUT(FilteredEducationDS, {State, Attribute, Value}, NAMED('EducationAttributesByState2000'));
