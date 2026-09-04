public with sharing class ValidationUtils {
    public static Boolean isValidEmail(String emailAddress) {
        if (String.isBlank(emailAddress)) return false;

        return Pattern.matches(
            '^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$',
            emailAddress
        );
    }

    public static Boolean hasMinimumLength(
        String inputValue,
        Integer minimumLength
    ) {
        return inputValue != null &&
            minimumLength != null &&
            inputValue.length() >= minimumLength;
    }
}