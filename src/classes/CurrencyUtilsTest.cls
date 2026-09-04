@IsTest
private class CurrencyUtilsTest {
    @IsTest
    static void testCurrencyMethods() {
        System.assertEquals(
            118,
            CurrencyUtils.addTax(100, 18)
        );

        System.assertEquals(
            90,
            CurrencyUtils.applyDiscount(100, 10)
        );

        System.assertEquals(
            null,
            CurrencyUtils.addTax(null, 10)
        );
    }
}