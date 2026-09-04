public with sharing class LeadService {
    public static Boolean isQualifiedLead(Lead leadRecord) {
        return leadRecord != null &&
            leadRecord.Rating == 'Hot' &&
            !String.isBlank(leadRecord.Email);
    }

    public static List<Lead> filterQualifiedLeads(
        List<Lead> leads
    ) {
        List<Lead> qualifiedLeads = new List<Lead>();

        if (leads == null) return qualifiedLeads;

        for (Lead leadRecord : leads) {
            if (isQualifiedLead(leadRecord)) {
                qualifiedLeads.add(leadRecord);
            }
        }

        return qualifiedLeads;
    }
}