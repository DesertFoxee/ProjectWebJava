package models.parameter;

import javafx.util.Pair;

public class KeySort {

    private Pair<String, String> sort;

    public KeySort() {
        this.sort = null;
    }

    public Pair<String, String> get() {
        return sort;
    }

    public void set(String name, String value) {
        sort = new Pair(name, value);
    }

    public String getKeySort() {
        return (sort != null) ? sort.getKey() : null;
    }

    public String getValueSort() {
        return (sort != null) ? sort.getValue() : null;
    }

}
