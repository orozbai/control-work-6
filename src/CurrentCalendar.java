public class CurrentCalendar {
    private String month;
    private int day;

    public CurrentCalendar(String month, int day) {
        this.month = month;
        this.day = day;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    @Override
    public String toString() {
        return String.format("%s %s", month, day);
    }
}