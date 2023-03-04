import com.sun.net.httpserver.HttpExchange;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;
import server.BasicServer;
import server.ContentType;
import server.ResponseCodes;
import utils.Utils;

import java.io.*;
import java.util.Map;

public class ServerCalendar extends BasicServer {
    private static int selectedDay;
    private final static Configuration freemarker = initFreeMarker();

    public ServerCalendar(String host, int port) throws IOException {
        super(host, port);
        registerGet("/calendar", this::calendarHandler);
        registerPost("/calendar", this::calendarPost);
        registerGet("/task-list", this::taskListHandler);
        registerPost("/task-list", this::taskListPost);
        registerGet("/add-task", this::addTaskHandler);
        registerPost("/add-task", this::addTaskPost);
    }

    private void addTaskPost(HttpExchange exchange) {
        String raw = getBody(exchange);
        Map<String, String> parsed = Utils.parseUrlEncoded(raw, "&");
        int day = Integer.parseInt(parsed.get("day"));
        String name = parsed.get("name");
        String description = parsed.get("description");
        String type = parsed.get("type");
        FileService.addFileTasks(day, name, description, type);
        redirect303(exchange,"task-list");
    }

    private void addTaskHandler(HttpExchange exchange) {
        renderTemplate(exchange, "add-task.ftlh", getAddTasks());
    }

    private Object getAddTasks() {
        return new AddTaskDataModel();
    }

    private void taskListPost(HttpExchange exchange) {
        String raw = getBody(exchange);
        Map<String, String> parsed = Utils.parseUrlEncoded(raw, "&");
        int day = Integer.parseInt(parsed.get("day"));
        String name = parsed.get("name");
        String description = parsed.get("description");
        String type = parsed.get("type");
        FileService.deleteFileTasks(day, name, description, type);
        redirect303(exchange, "/task-list");
    }

    private void calendarPost(HttpExchange exchange) {
        String raw = getBody(exchange);
        Map<String, String> parsed = Utils.parseUrlEncoded(raw, "&");
        int day = Integer.parseInt(parsed.get("calendarsDay"));
        setSelectedDay(day);
        redirect303(exchange, "/task-list");
    }

    private void taskListHandler(HttpExchange exchange) {
        renderTemplate(exchange, "task-list.ftlh", getTasks());
    }

    public static int getSelectedDay() {
        return selectedDay;
    }

    public static void setSelectedDay(int selectedDay) {
        ServerCalendar.selectedDay = selectedDay;
    }

    private Object getTasks() {
        return new TasksDataModel();
    }

    private void calendarHandler(HttpExchange exchange) {
        renderTemplate(exchange, "calendar.ftlh", getCalendar());
    }

    private Object getCalendar() {
        return new CalendarDataModel();
    }

    private static Configuration initFreeMarker() {
        try {
            Configuration cfg = new Configuration(Configuration.VERSION_2_3_29);
            cfg.setDirectoryForTemplateLoading(new File("data"));
            cfg.setDefaultEncoding("UTF-8");
            cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
            cfg.setLogTemplateExceptions(false);
            cfg.setWrapUncheckedExceptions(true);
            cfg.setFallbackOnNullLoopVariable(false);
            return cfg;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    protected void renderTemplate(HttpExchange exchange, String templateFile, Object dataModel) {
        try {
            Template temp = freemarker.getTemplate(templateFile);
            ByteArrayOutputStream stream = new ByteArrayOutputStream();
            try (OutputStreamWriter writer = new OutputStreamWriter(stream)) {
                temp.process(dataModel, writer);
                writer.flush();
                var data = stream.toByteArray();
                sendByteData(exchange, ResponseCodes.OK, ContentType.TEXT_HTML, data);
            }
        } catch (IOException | TemplateException e) {
            e.printStackTrace();
        }
    }
}