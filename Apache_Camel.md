# Apache Camel
<img src="img_camel_logo.png" alt="drawing" width="200"/>

### [Documentation](https://camel.apache.org/docs/)
#### What is Camel?
**regelbasierte Routing- und Messaging-Engine**

https://stackoverflow.com/questions/8845186/what-exactly-is-apache-camel

https://camel.apache.org/manual/faq/what-is-camel.html

#### Integration Example Articles
https://dzone.com/articles/open-source-integration-apache


### Data Formats
Camel has support for message transformation using several techniques. One such technique is 
**data formats, where marshal and unmarshal comes from.**

So in other words, the Marshal and Unmarshal **EIPs** are used data formats.

Marshal - Transforms the message body (such as Java object) into a binary or textual format, ready to be wired over the network.

Unmarshal - Transforms data in some binary or textual format (such as received over the network) into a Java object; or some other representation according to the data format being used.