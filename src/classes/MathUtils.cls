public with sharing class MathUtils {
    public static Decimal calculatePercentage(
        Decimal value,
        Decimal total
    ) {
        if (value == null || total == null || total == 0) {
            return 0;
        }
        return (value / total) * 100;
    }

    public static Boolean isEven(Integer numberValue) {
        return numberValue != null &&
            Math.mod(numberValue, 2) == 0;
    }
}