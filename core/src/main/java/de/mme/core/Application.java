package de.mme.core;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.vaadin.flow.component.dependency.NpmPackage;

/**
 * The entry point of the Spring Boot application.
 *
 * Use the @PWA annotation make the application installable on phones, tablets
 * and some desktop browsers.
 */
@SpringBootApplication
// As soon as this Npm Package is added, the Core theme does not load on the customer project
@NpmPackage(value = "line-awesome", version = "1.3.0")
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

}
