package org.banana;

import java.util.HashMap;
import java.util.Map;

import org.apache.camel.Exchange;
import org.apache.camel.Processor;

/** Processor does NOTHING right now */
public class JsonToSqlProcessor implements Processor {
   @Override

   public void process (Exchange exchange) throws Exception {
    // get JSON body as map
    Map<String, Object> jsonData = exchange.getIn().getBody(Map.class);

    // Extract the values from JSON

       String name = "" + jsonData.get("name");
       String email = "" + jsonData.get("email");

       // Insert to postgres DB. Use placeholders to prevent sql injection
       String sqlInsert = "INSERT INTO users (name, email) VALUES (#, #)";


    // Set the SQL & parameters in exchange header & body
       exchange.getIn().setHeader("CamelSqlQuery", sqlInsert);
      // Set the parameters in the exchange body as a single string
      exchange.getIn().setBody(new Object[]{name, email});

   }

}