public with sharing class NameFormatter {
    public static String getInitials(
        String firstName,
        String lastName
    ) {
        String initials = '';

        if (!String.isBlank(firstName)) {
            initials += firstName
                .substring(0, 1)
                .toUpperCase();
        }

        if (!String.isBlank(lastName)) {
            initials += lastName
                .substring(0, 1)
                .toUpperCase();
        }

        return initials;
    }

    public static String combineNames(
        String firstName,
        String lastName
    ) {
        List<String> nameParts = new List<String>();

        if (!String.isBlank(firstName)) {
            nameParts.add(firstName.trim());
        }

        if (!String.isBlank(lastName)) {
            nameParts.add(lastName.trim());
        }

        return String.join(nameParts, ' ');
    }
}