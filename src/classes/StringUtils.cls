public with sharing class StringUtils {
    public static Boolean isBlank(String value) {
        return String.isBlank(value);
    }

    public static String reverse(String value) {
        if (value == null) return null;

        String result = '';
        for (Integer i = value.length() - 1; i >= 0; i--) {
            result += value.substring(i, i + 1);
        }
        return result;
    }
}