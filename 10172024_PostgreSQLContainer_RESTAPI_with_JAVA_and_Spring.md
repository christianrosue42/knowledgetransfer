// PostgreSQL DB Profile:
Host (localhost): 
Server: bananaDBServerContainer
DB: bananaDB

user: bananaDBAdmin
pw: bernerner42

PostgreSQL Docker Image starten (mit credentials)
docker run -d --name bananaDBServerContainer -e POSTGRES_DB=bananaDB -e POSTGRES_USER=bananaDBAdmin -e POSTGRES_PASSWORD=bernerner42 -p 5432:5432 postgres




// Java REST

package com.bananaadapter;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class RestClient {
    public String getStarWarsData(){
        try {
            // Creating a URL object -  Die Adresse unseres Contents in der Bib mit dem wir eine Verbindung eingehen wollen ^^
            URL url = new URL("https://swapi.dev/api/planets/1/");

            // open connection - Erstellung meines Bib-Ausweis und zeige diesen dem Bibliothekar (URL). 
            // connection Variable = Ich stecke meinen Ausweis in die Tasche
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();

            // Im nächsten Schritt erkläre ich dem smorten Bibliothekar, was ich mit dem Content machen will (GET, POST, PUT or DELTE..).
            // Ich möchte Content aus der Bib HOLEN bzw abholen lassen. Das schreibe ich auf meinen Ausweis.
            connection.setRequestMethod("GET");

            // Jetzt möchte ich von dem Bibliothekar wissen, ob meine Anfrage nach einem bestimmten Content erfolgreich war oder ob es Fehler gab
            int responseCode = connection.getResponseCode();

            //um das Resultat bei Aufruf der Methode an mich zurück zu geben
            String result; 

            // Wenn sie erfolgreich war kann ich meinen Content konsumieren und verarbeiten. Verdauungssystem oder so.
            if(responseCode == HttpURLConnection.HTTP_OK) {
                // Um den Content zu konsumieren habe ich mein krosses Werkzeug (BufferedReder) dabei. 
                // Da der Bibliothekar mir einen Daten Stream ("Sei wie das Wasser" - Bruce Lee) liefert benötige ich einen Übersetzer (Rohes Wasser zu Buchstaben (Weisheiten des Wassers))
                // InputStreamReader ist so ein Übersetzer-Plugin für mein krosses Werkzeug. Dadurch kann ich den gewünschten Content easy line by line konsumieren 
                BufferedReader krossesWerkzeug = new BufferedReader(new InputStreamReader(connection.getInputStream()));

                // Jetzt verwende ich Notiz-Zettel (inputLine Variable) für jede gelesene Zeile an Daten um sie nacheinander (while loop) 
                // in mein Notizbuch (StringBuilder) zu kleben (Iteration und kleberei übernimmt der Loop-Robo für mich)
                String inputLine;
                StringBuilder response = new StringBuilder();
                

                while((inputLine = krossesWerkzeug.readLine()) != null ) {
                    response.append(inputLine);
                }

                // wenn das durch ist, muss ich mein krosses Werkzeug wieder schließen!!
                krossesWerkzeug.close();
                
                // Nun lasse ich mir noch kurz (nur in der Konsole und ungefiltert, also alles was mir zurückgeliefert wurde) die Antwort der Bibliothek anzeigen
                result = response.toString();
                System.out.println("Bib sagt: " + result);

                
                return result;
            // Für den Fall, dass etwas schiefgelaufen ist    
            } else {
                System.out.println("Bib Anfrage gescheitert. Bib sagt: " + responseCode);
                return "Banana Error";
            }

            

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "Banana Errors: " + e.toString();
        }

        
    }
}

// Java Spring REST

package com.bananaadapterspring;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        //SpringApplication.run(Application.class);
        final String apiUrl = "https://swapi.dev/api/planets/1/";
        
        // Creating a RestTemplate instance - Hiermit beschwöre ich meinen HighTech-Bib Assistent (RestTemplate)
        RestTemplate restTemplate = new RestTemplate();

        // Making a GET request and retrieving the response
        String response = restTemplate.getForObject(apiUrl, String.class);
        System.out.println("API Response: " + response);
    }
} 

