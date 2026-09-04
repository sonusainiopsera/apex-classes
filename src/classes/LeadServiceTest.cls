@IsTest
private class LeadServiceTest {
    @IsTest
    static void testLeadMethods() {
        Lead qualifiedLead = new Lead(
            LastName = 'Qualified',
            Company = 'Test Company',
            Rating = 'Hot',
            Email = 'qualified@example.com'
        );

        Lead unqualifiedLead = new Lead(
            LastName = 'Unqualified',
            Company = 'Test Company',
            Rating = 'Cold'
        );

        System.assertEquals(
            true,
            LeadService.isQualifiedLead(qualifiedLead)
        );

        System.assertEquals(
            1,
            LeadService.filterQualifiedLeads(
                new List<Lead>{
                    qualifiedLead,
                    unqualifiedLead
                }
            ).size()
        );
    }
}