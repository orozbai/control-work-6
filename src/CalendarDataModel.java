import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class CalendarDataModel {
    private final CurrentCalendar calendars;
    private List<Tasks> tasks = new ArrayList<>();

    public CalendarDataModel() {
        LocalDate currentDate = LocalDate.now();
        String month = currentDate.getMonth().toString();
        int day = currentDate.getDayOfMonth();
        List<Tasks> tasksList = new ArrayList<>();
        for (int i = 0; i < FileService.readFileTasks().size(); i++) {
            tasksList.add(new Tasks(FileService.readFileTasks().get(i).getDay(),
                    FileService.readFileTasks().get(i).getName(),
                    FileService.readFileTasks().get(i).getDescription(),
                    FileService.readFileTasks().get(i).getType()));
        }
        for (int i = 0; i < FileService.readFileTasks().size(); i++) {
            this.tasks = tasksList;
        }
        this.calendars = new CurrentCalendar(month, day);
    }

    public List<Tasks> getTasks() {
        return tasks;
    }

    public CurrentCalendar getCalendars() {
        return calendars;
    }
}