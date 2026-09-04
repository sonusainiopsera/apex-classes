@IsTest
private class CollectionUtilsTest {
    @IsTest
    static void testCollectionMethods() {
        Account accountRecord = new Account(
            Id = '001000000000001AAA',
            Name = 'Test Account'
        );

        Set<Id> recordIds =
            CollectionUtils.collectRecordIds(
                new List<SObject>{ accountRecord }
            );

        System.assertEquals(1, recordIds.size());

        List<String> values =
            CollectionUtils.removeBlankValues(
                new List<String>{ 'A', '', null, 'B' }
            );

        System.assertEquals(2, values.size());
    }
}