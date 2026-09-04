public with sharing class OpportunityService {
    public static Decimal calculateTotalAmount(
        List<Opportunity> opportunities
    ) {
        Decimal totalAmount = 0;

        if (opportunities == null) return totalAmount;

        for (Opportunity opportunityRecord : opportunities) {
            if (opportunityRecord.Amount != null) {
                totalAmount += opportunityRecord.Amount;
            }
        }

        return totalAmount;
    }

    public static Boolean isOpportunityOpen(
        Opportunity opportunityRecord
    ) {
        if (opportunityRecord == null) return false;

        return opportunityRecord.StageName != 'Closed Won' &&
            opportunityRecord.StageName != 'Closed Lost';
    }
}