public with sharing class CollectionUtils {
    public static Set<Id> collectRecordIds(
        List<SObject> records
    ) {
        Set<Id> recordIds = new Set<Id>();

        if (records == null) return recordIds;

        for (SObject recordItem : records) {
            if (recordItem.Id != null) {
                recordIds.add(recordItem.Id);
            }
        }

        return recordIds;
    }

    public static List<String> removeBlankValues(
        List<String> values
    ) {
        List<String> result = new List<String>();

        if (values == null) return result;

        for (String value : values) {
            if (!String.isBlank(value)) {
                result.add(value);
            }
        }

        return result;
    }
}