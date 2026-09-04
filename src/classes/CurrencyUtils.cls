public with sharing class CurrencyUtils {
    public static Decimal addTax(
        Decimal amount,
        Decimal taxRate
    ) {
        if (amount == null) return null;

        Decimal rate = taxRate == null ? 0 : taxRate;
        return amount + (amount * rate / 100);
    }

    public static Decimal applyDiscount(
        Decimal amount,
        Decimal discountRate
    ) {
        if (amount == null) return null;

        Decimal rate = discountRate == null
            ? 0
            : discountRate;

        return amount - (amount * rate / 100);
    }
}