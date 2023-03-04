public class Tasks {
    private int day;
    private String name;
    private String description;
    private String type;

    public Tasks(int day, String name, String description, String type) {
        this.day = day;
        this.name = name;
        this.description = description;
        this.type = type;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return String.format("%s %s %s %s", day, name, description, type);
    }
}