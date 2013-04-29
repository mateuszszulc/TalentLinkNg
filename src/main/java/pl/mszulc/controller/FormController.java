package pl.mszulc.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.mszulc.model.SimpleForm;

@Controller
@RequestMapping("/forms")
public class FormController {

//    @Autowired
//    SessionFactory sessionFactory;

    @RequestMapping(value = "add", method = RequestMethod.GET)
    public String setupForm(Model model) {
        SimpleForm simpleForm = new SimpleForm();
        model.addAttribute(simpleForm);
        return "forms/add";
    }

    @RequestMapping(method = RequestMethod.GET)
    public String index() {
        //Session session = sessionFactory.getCurrentSession();
        return "forms/list";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String processSubmit(@ModelAttribute("form") SimpleForm simpleForm,
                                BindingResult result) {

        if (result.hasErrors()) {
            return "add";
        }
        return "redirect:/forms";
    }
}
