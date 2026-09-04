public with sharing class SafeValueUtils {
    public static String stringOrDefault(
        String inputValue,
        String defaultValue
    ) {
        return inputValue == null
            ? defaultValue
            : inputValue;
    }

    public static Decimal decimalOrZero(
        Decimal inputValue
    ) {
        return inputValue == null ? 0 : inputValue;
    }

    public static Boolean booleanOrFalse(
        Boolean inputValue
    ) {
        return inputValue == null ? false : inputValue;
    }
}