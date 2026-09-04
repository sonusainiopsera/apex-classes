@IsTest
private class StringUtilsTest {
    @IsTest
    static void testStringMethods() {
        System.assertEquals(true, StringUtils.isBlank(' '));
        System.assertEquals(false, StringUtils.isBlank('Salesforce'));
        System.assertEquals('tset', StringUtils.reverse('test'));
        System.assertEquals(null, StringUtils.reverse(null));
    }
}