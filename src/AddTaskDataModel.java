import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class AddTaskDataModel {
    private final List<Tasks> tasks;
    private final CurrentCalendar calendars;

    public AddTaskDataModel() {
        LocalDate currentDate = LocalDate.now();
        String month = currentDate.getMonth().toString();
        int day = ServerCalendar.getSelectedDay();
        List<Tasks> tasksList = new ArrayList<>();
        CurrentCalendar dayAndMonth = new CurrentCalendar(month, day);
        tasksList.add(new Tasks(ServerCalendar.getSelectedDay(), "someName", "some description", "red"));
        this.tasks = tasksList;
        this.calendars = dayAndMonth;
    }

    public CurrentCalendar getCalendars() {
        return calendars;
    }

    public List<Tasks> getTasks() {
        return tasks;
    }
}