public with sharing class ContactService {
    public static String getFullName(Contact contactRecord) {
        if (contactRecord == null) return null;

        List<String> nameParts = new List<String>();

        if (!String.isBlank(contactRecord.FirstName)) {
            nameParts.add(contactRecord.FirstName);
        }

        if (!String.isBlank(contactRecord.LastName)) {
            nameParts.add(contactRecord.LastName);
        }

        return String.join(nameParts, ' ');
    }

    public static List<Contact> filterContactsWithEmail(
        List<Contact> contacts
    ) {
        List<Contact> result = new List<Contact>();

        if (contacts == null) return result;

        for (Contact contactRecord : contacts) {
            if (!String.isBlank(contactRecord.Email)) {
                result.add(contactRecord);
            }
        }

        return result;
    }
}