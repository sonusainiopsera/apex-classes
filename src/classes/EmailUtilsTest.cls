@IsTest
private class EmailUtilsTest {
    @IsTest
    static void testEmailMethods() {
        System.assertEquals(
            'user@example.com',
            EmailUtils.normalizeEmail(' USER@Example.com ')
        );

        System.assertEquals(
            'example.com',
            EmailUtils.getEmailDomain('user@example.com')
        );

        System.assertEquals(
            null,
            EmailUtils.getEmailDomain('invalid-email')
        );
    }
}