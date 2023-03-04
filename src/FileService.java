import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class FileService {
    private static final Gson GSON = new GsonBuilder().setPrettyPrinting().create();

    public static void addFileTasks(int day, String name, String description, String type) {
        try {
            Tasks task = new Tasks(day,name,description,type);

            FileReader reader = new FileReader("data/tasks.json");
            BufferedReader bufferedReader = new BufferedReader(reader);
            String fileContent = bufferedReader.lines().collect(Collectors.joining());

            Gson gson = new Gson();
            JsonArray jsonArray = gson.fromJson(fileContent, JsonArray.class);
            jsonArray.add(gson.toJsonTree(task));

            FileWriter writer = new FileWriter("data/tasks.json");
            writer.write(gson.toJson(jsonArray));
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static List<Tasks> readFileTasks() {
        String json = "";
        List<Tasks> calendars = new ArrayList<>();
        try {
            Path path = Paths.get("data/tasks.json");
            json = Files.readString(path);
            calendars.addAll(Arrays.asList(GSON.fromJson(json, Tasks[].class)));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return calendars;
    }
}