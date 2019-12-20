package models.parameter;

import java.util.HashMap;
import java.util.Map;

public class KeyFilter {

    private Map<String, String> key;

    public Map<String, String> get() {
        return key;
    }

    public void set(Map<String, String> key) {
        this.key = key;
    }

    public KeyFilter() {
        this.key = new HashMap<>();
        key.put("manu", null);
        key.put("type", null);
    }
    public void putManu(String key) {
        this.key.put("manu", key);
    }

    public String getManu() {
        return (String) key.get("manu");
    }

    public void putType(String key) {
        this.key.put("type", key);

    }
    public String getType() {
        return (String) key.get("type");
    }
}
