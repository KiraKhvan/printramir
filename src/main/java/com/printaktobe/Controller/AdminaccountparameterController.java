package com.printaktobe.Controller;


import com.printaktobe.domain.Contact;
import com.printaktobe.domain.Telephone;
import com.printaktobe.domain.User;
import com.printaktobe.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminaccountparameterController {

    @Autowired
    private UserRepo userRepo;
    @GetMapping("/accountparametercontrol")
    public String accountparametercontrol(Model model, @AuthenticationPrincipal User user) {

        model.addAttribute("login", user.getUsername());
        model.addAttribute("password", user.getPassword());
        return "accountparametercontrol";
    }

    @GetMapping("/editaccountparameter")
    public String editaccountparameter(Model model,
                                       @AuthenticationPrincipal User user,
                                       @RequestParam String parametertype,
                                       @RequestParam String elementvalue) {

        switch (parametertype){
            case "login": user.setUsername(elementvalue); break;
            case "password":  user.setPassword(elementvalue); break;

        }
        userRepo.save(user);

        model.addAttribute("login", user.getUsername());
        model.addAttribute("password", user.getPassword());
        return "accountparametercontrol";
    }
}
