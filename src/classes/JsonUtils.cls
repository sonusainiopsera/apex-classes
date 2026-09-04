public with sharing class JsonUtils {
    public static String serializeData(Object inputData) {
        return JSON.serialize(inputData);
    }

    public static Map<String, Object> deserializeToMap(
        String jsonPayload
    ) {
        if (String.isBlank(jsonPayload)) {
            return new Map<String, Object>();
        }

        return (Map<String, Object>)
            JSON.deserializeUntyped(jsonPayload);
    }
}