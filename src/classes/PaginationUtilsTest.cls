@IsTest
private class PaginationUtilsTest {
    @IsTest
    static void testPaginationMethods() {
        System.assertEquals(
            20,
            PaginationUtils.calculateOffset(3, 10)
        );

        System.assertEquals(
            3,
            PaginationUtils.calculateTotalPages(21, 10)
        );

        System.assertEquals(
            0,
            PaginationUtils.calculateOffset(0, 10)
        );
    }
}