@IsTest
private class OpportunityServiceTest {
    @IsTest
    static void testOpportunityMethods() {
        Opportunity firstOpportunity = new Opportunity(
            Name = 'Opportunity One',
            StageName = 'Prospecting',
            CloseDate = Date.today().addDays(30),
            Amount = 1000
        );

        Opportunity secondOpportunity = new Opportunity(
            Name = 'Opportunity Two',
            StageName = 'Closed Won',
            CloseDate = Date.today(),
            Amount = 2000
        );

        System.assertEquals(
            3000,
            OpportunityService.calculateTotalAmount(
                new List<Opportunity>{
                    firstOpportunity,
                    secondOpportunity
                }
            )
        );

        System.assertEquals(
            true,
            OpportunityService.isOpportunityOpen(
                firstOpportunity
            )
        );

        System.assertEquals(
            false,
            OpportunityService.isOpportunityOpen(
                secondOpportunity
            )
        );
    }
}