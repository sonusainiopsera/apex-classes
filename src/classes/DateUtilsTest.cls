@IsTest
private class DateUtilsTest {
    @IsTest
    static void testDateMethods() {
        Date inputDate = Date.newInstance(2026, 9, 15);

        System.assertEquals(
            Date.newInstance(2026, 9, 1),
            DateUtils.getStartOfMonth(inputDate)
        );

        System.assertEquals(
            10,
            DateUtils.getDaysBetween(
                inputDate,
                inputDate.addDays(10)
            )
        );
    }
}