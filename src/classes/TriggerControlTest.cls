@IsTest
private class TriggerControlTest {
    @IsTest
    static void testTriggerControl() {
        TriggerControl.reset();

        TriggerControl.disable('AccountTriggerHandler');

        System.assertEquals(
            true,
            TriggerControl.isDisabled(
                'AccountTriggerHandler'
            )
        );

        TriggerControl.enable('AccountTriggerHandler');

        System.assertEquals(
            false,
            TriggerControl.isDisabled(
                'AccountTriggerHandler'
            )
        );
    }
}