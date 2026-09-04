public with sharing class RecordTypeUtils {
    public static Id getRecordTypeId(
        Schema.SObjectType objectType,
        String developerName
    ) {
        if (
            objectType == null ||
            String.isBlank(developerName)
        ) {
            return null;
        }

        Map<String, Schema.RecordTypeInfo>
            recordTypeInfoMap = objectType
                .getDescribe()
                .getRecordTypeInfosByDeveloperName();

        if (!recordTypeInfoMap.containsKey(developerName)) {
            return null;
        }

        return recordTypeInfoMap
            .get(developerName)
            .getRecordTypeId();
    }
}