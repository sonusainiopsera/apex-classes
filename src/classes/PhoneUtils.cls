public with sharing class PhoneUtils {
    public static String getDigitsOnly(String phoneNumber) {
        if (phoneNumber == null) return null;
        return phoneNumber.replaceAll('[^0-9]', '');
    }

    public static String getLastFourDigits(String phoneNumber) {
        String digits = getDigitsOnly(phoneNumber);

        if (String.isBlank(digits) || digits.length() <= 4) {
            return digits;
        }

        return digits.right(4);
    }
}