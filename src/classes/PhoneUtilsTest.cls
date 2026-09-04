@IsTest
private class PhoneUtilsTest {
    @IsTest
    static void testPhoneMethods() {
        System.assertEquals(
            '919876543210',
            PhoneUtils.getDigitsOnly('+91 98765-43210')
        );

        System.assertEquals(
            '3210',
            PhoneUtils.getLastFourDigits('+91 98765-43210')
        );
    }
}