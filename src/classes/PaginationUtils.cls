public with sharing class PaginationUtils {
    public static Integer calculateOffset(
        Integer pageNumber,
        Integer pageSize
    ) {
        if (
            pageNumber == null ||
            pageSize == null ||
            pageNumber < 1 ||
            pageSize < 1
        ) {
            return 0;
        }

        return (pageNumber - 1) * pageSize;
    }

    public static Integer calculateTotalPages(
        Integer totalRecords,
        Integer pageSize
    ) {
        if (
            totalRecords == null ||
            totalRecords <= 0 ||
            pageSize == null ||
            pageSize <= 0
        ) {
            return 0;
        }

        return (Integer) Math.ceil(
            Decimal.valueOf(totalRecords) / pageSize
        );
    }
}