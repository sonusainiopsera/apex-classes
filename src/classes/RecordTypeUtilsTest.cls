@IsTest
private class RecordTypeUtilsTest {
    @IsTest
    static void testRecordTypeMethods() {
        Id masterRecordTypeId =
            RecordTypeUtils.getRecordTypeId(
                Account.SObjectType,
                'Master'
            );

        System.assertNotEquals(
            null,
            masterRecordTypeId
        );

        Id invalidRecordTypeId =
            RecordTypeUtils.getRecordTypeId(
                Account.SObjectType,
                'Invalid_Record_Type'
            );

        System.assertEquals(
            null,
            invalidRecordTypeId
        );
    }
}