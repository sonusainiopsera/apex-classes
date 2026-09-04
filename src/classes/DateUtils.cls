public with sharing class DateUtils {
    public static Date getStartOfMonth(Date inputDate) {
        if (inputDate == null) return null;

        return Date.newInstance(
            inputDate.year(),
            inputDate.month(),
            1
        );
    }

    public static Integer getDaysBetween(
        Date startDate,
        Date endDate
    ) {
        if (startDate == null || endDate == null) return null;
        return startDate.daysBetween(endDate);
    }
}