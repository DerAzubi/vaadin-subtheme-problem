# Description of the bug
I do have a problem with Subthemes. I do have the following project setup:
- core
- basic
- customer

The customer project depends on the basic project and the basic project depends on the core project. Each project has a theme.
In the theme.json of the customer project I added the parent:

```json
{ "parent": "basic-theme" }
```

In the basic project the core theme is added:
```json
{ "parent": "core-theme" }
```

If there are no Npm Packages, the "core-theme" gets loaded when I start the customer project. 
But if there is a NpmPackage added, the "core-theme" does not get loaded. 

The following project was the default project from start.vaadin.com.

I debugged it a bit and found out, 
that the application-theme-plugin does not load the core theme, 
because there is no theme.json in the folder 
```
customer\frontend\generated\jar-resources\themes\core-theme
```

(not sure if that helps or is evem the error?)

# Expected behavior
Parent theme of a parent theme should get loaded even with Npm-Packages.

# Versions
Vaadin / Flow version: 24.2.2

Java version: 21

Spring Boot 3.1.5

# How to start
the projects should be installed in the right order (core,basic,customer) with
```
mvn clean install -DskipTests -Pproduction
```

Alternatively in the win/ folder the install.cmd should do the trick (you can specify the java version in the entsampled setenv.cmd) 