@IsTest
private class ContactServiceTest {
    @IsTest
    static void testContactMethods() {
        Contact firstContact = new Contact(
            FirstName = 'Sonu',
            LastName = 'Saini',
            Email = 'sonu@example.com'
        );

        Contact secondContact = new Contact(
            LastName = 'Test Contact'
        );

        System.assertEquals(
            'Sonu Saini',
            ContactService.getFullName(firstContact)
        );

        System.assertEquals(
            1,
            ContactService.filterContactsWithEmail(
                new List<Contact>{
                    firstContact,
                    secondContact
                }
            ).size()
        );
    }
}