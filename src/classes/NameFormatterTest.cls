@IsTest
private class NameFormatterTest {
    @IsTest
    static void testNameFormatting() {
        System.assertEquals(
            'SS',
            NameFormatter.getInitials('Sonu', 'Saini')
        );

        System.assertEquals(
            'Sonu Saini',
            NameFormatter.combineNames(
                ' Sonu ',
                ' Saini '
            )
        );

        System.assertEquals(
            'S',
            NameFormatter.getInitials('Sonu', null)
        );
    }
}