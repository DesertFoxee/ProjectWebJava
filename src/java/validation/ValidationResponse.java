package validation;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.validation.FieldError;

public class ValidationResponse {

    private boolean validated;
    private Map<String, String> errorMessages = new HashMap<>();
    private String redirect;

    public String getRedirect() {
        return redirect;
    }

    public void setRedirect(String redirect) {
        this.redirect = redirect;
    }

    public boolean isValidated() {
        return validated;
    }

    public void setValidated(boolean validated) {
        this.validated = validated;
    }

    public void setErrorMessages(Map<String, String> errorMessages) {
        this.errorMessages = errorMessages;
    }

    public void addErrorMessages(String key, String msg) {
        if (errorMessages.containsKey(key) == false) {
            errorMessages.put(key, msg);
        }
    }

    public void processError(List<FieldError> error) {
        for (FieldError fieldError : error) {
            String key = fieldError.getField();
            String err = fieldError.getDefaultMessage();
            addErrorMessages(key, err);
        }
    }

    public Map<String, String> getErrorMessages() {
        return errorMessages;
    }
}
