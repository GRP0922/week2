package week2.slf4jlogging;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LoggingExample {
    private static final Logger LOGGER = LoggerFactory.getLogger(LoggingExample.class);

    public static void main(String[] args) {
        LOGGER.info("This is an info message.");
        LOGGER.error("This is an error message.");
    }
}