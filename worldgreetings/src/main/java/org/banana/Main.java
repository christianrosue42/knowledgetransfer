package org.banana;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.*;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello world!");
        ObjectMapper mapper = new ObjectMapper();

        try {
            Greetings greetings = mapper.readValue(new File("src/main/greetings.json"), Greetings.class);
            for (Greeting greeting : greetings.getGreetings()) {
                System.out.println("Language: " + greeting.getLanguage());
                System.out.println("Greeting: " + greeting.getGreeting());
                System.out.println("Country: " + greeting.getCountry());
                System.out.println("Formal: " + greeting.isFormal());
            }

        } catch (IOException e) {
          e.printStackTrace();
        }

    }
}