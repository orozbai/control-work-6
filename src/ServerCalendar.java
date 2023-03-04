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
            // путь к каталогу в котором у нас хранятся шаблоны
            // это может быть совершенно другой путь, чем тот, откуда сервер берёт файлы
            // которые отправляет пользователю
            cfg.setDirectoryForTemplateLoading(new File("data"));

            // прочие стандартные настройки о них читать тут
            // https://freemarker.apache.org/docs/pgui_quickstart_createconfiguration.html
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
            // загружаем шаблон из файла по имени.
            // шаблон должен находится по пути, указанном в конфигурации
            Template temp = freemarker.getTemplate(templateFile);

            // freemarker записывает преобразованный шаблон в объект класса writer
            // а наш сервер отправляет клиенту массивы байт
            // по этому нам надо сделать "мост" между этими двумя системами

            // создаём поток который сохраняет всё, что в него будет записано в байтовый массив
            ByteArrayOutputStream stream = new ByteArrayOutputStream();
            // создаём объект, который умеет писать в поток и который подходит для freemarker
            try (OutputStreamWriter writer = new OutputStreamWriter(stream)) {

                // обрабатываем шаблон заполняя его данными из модели
                // и записываем результат в объект "записи"
                temp.process(dataModel, writer);
                writer.flush();

                // получаем байтовый поток
                var data = stream.toByteArray();

                // отправляем результат клиенту
                sendByteData(exchange, ResponseCodes.OK, ContentType.TEXT_HTML, data);
            }
        } catch (IOException | TemplateException e) {
            e.printStackTrace();
        }
    }
}