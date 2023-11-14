package de.mme.core.views.helloworld;

import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.router.RouteAlias;

@PageTitle("Hello World")
@Route(value = "hello")
@RouteAlias(value = "")
public class HelloWorldView extends HorizontalLayout {

    private Button red;
    private Button yellow;
    private Button green;

    public HelloWorldView() {
        red = new Button("Red");
        red.addClassName("buttonColorRed");

        yellow = new Button("Yellow");
        yellow.addClassName("buttonColorYellow");

        green = new Button("Green");
        green.addClassName("buttonColorGreen");

        add(red, yellow, green);
    }

}
