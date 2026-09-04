@IsTest
private class JsonUtilsTest {
    @IsTest
    static void testJsonMethods() {
        Map<String, Object> inputData =
            new Map<String, Object>{
                'name' => 'Test Account',
                'active' => true
            };

        String payload = JsonUtils.serializeData(inputData);
        Map<String, Object> result =
            JsonUtils.deserializeToMap(payload);

        System.assertEquals(
            'Test Account',
            result.get('name')
        );
        System.assertEquals(true, result.get('active'));
    }
}