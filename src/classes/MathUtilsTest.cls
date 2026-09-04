@IsTest
private class MathUtilsTest {
    @IsTest
    static void testMathMethods() {
        System.assertEquals(
            25,
            MathUtils.calculatePercentage(25, 100)
        );
        System.assertEquals(
            0,
            MathUtils.calculatePercentage(10, 0)
        );
        System.assertEquals(true, MathUtils.isEven(10));
        System.assertEquals(false, MathUtils.isEven(11));
    }
}