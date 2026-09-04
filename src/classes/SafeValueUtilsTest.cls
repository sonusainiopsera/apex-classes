@IsTest
private class SafeValueUtilsTest {
    @IsTest
    static void testSafeValues() {
        System.assertEquals(
            'Default',
            SafeValueUtils.stringOrDefault(
                null,
                'Default'
            )
        );

        System.assertEquals(
            0,
            SafeValueUtils.decimalOrZero(null)
        );

        System.assertEquals(
            false,
            SafeValueUtils.booleanOrFalse(null)
        );
    }
}