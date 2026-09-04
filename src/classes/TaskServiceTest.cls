@IsTest
private class TaskServiceTest {
    @IsTest
    static void testTaskMethods() {
        Task overdueTask = new Task(
            Subject = 'Overdue Task',
            Status = 'Not Started',
            ActivityDate = Date.today().addDays(-2)
        );

        Task futureTask = new Task(
            Subject = 'Future Task',
            Status = 'Not Started',
            ActivityDate = Date.today().addDays(2)
        );

        System.assertEquals(
            true,
            TaskService.isTaskOverdue(
                overdueTask,
                Date.today()
            )
        );

        System.assertEquals(
            1,
            TaskService.filterOverdueTasks(
                new List<Task>{ overdueTask, futureTask },
                Date.today()
            ).size()
        );
    }
}