package org.banana;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;

public class Greetings {
    @JsonProperty("greetings")
    private List<Greeting> greetings;

    // Getters and setters
    public List<Greeting> getGreetings() {
        return greetings;
    }

    public void setGreetings(List<Greeting> greetings) {
        this.greetings = greetings;
    }
}
