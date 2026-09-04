public with sharing class TaskService {
    public static Boolean isTaskOverdue(
        Task taskRecord,
        Date currentDate
    ) {
        return taskRecord != null &&
            taskRecord.ActivityDate != null &&
            currentDate != null &&
            taskRecord.ActivityDate < currentDate &&
            taskRecord.Status != 'Completed';
    }

    public static List<Task> filterOverdueTasks(
        List<Task> tasks,
        Date currentDate
    ) {
        List<Task> overdueTasks = new List<Task>();

        if (tasks == null) return overdueTasks;

        for (Task taskRecord : tasks) {
            if (isTaskOverdue(taskRecord, currentDate)) {
                overdueTasks.add(taskRecord);
            }
        }

        return overdueTasks;
    }
}