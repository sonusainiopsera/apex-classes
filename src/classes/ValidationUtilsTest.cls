@IsTest
private class ValidationUtilsTest {
    @IsTest
    static void testValidationMethods() {
        System.assertEquals(
            true,
            ValidationUtils.isValidEmail('user@example.com')
        );

        System.assertEquals(
            false,
            ValidationUtils.isValidEmail('invalid-email')
        );

        System.assertEquals(
            true,
            ValidationUtils.hasMinimumLength('Salesforce', 5)
        );
    }
}