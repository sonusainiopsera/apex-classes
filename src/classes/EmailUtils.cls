public with sharing class EmailUtils {
    public static String normalizeEmail(String emailAddress) {
        if (String.isBlank(emailAddress)) return null;
        return emailAddress.trim().toLowerCase();
    }

    public static String getEmailDomain(String emailAddress) {
        String normalizedEmail = normalizeEmail(emailAddress);

        if (
            normalizedEmail == null ||
            !normalizedEmail.contains('@')
        ) {
            return null;
        }

        return normalizedEmail.substringAfter('@');
    }
}