package com.printaktobe.Controller;

import com.printaktobe.Utils.ControlUtil;
import com.printaktobe.domain.*;
import com.printaktobe.repos.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CustomerController {
    @Autowired
    private SectionnRepository sectionnRepository;

    @Autowired
    private ServiceRepository serviceRepository;

    @Autowired
    private ContactRepository contactRepository;
    @Autowired
    private TelephoneRepository telephoneRepository;

    @Autowired
    private UserRepo userRepo;

    @GetMapping("/services")
    public String services(Model model) {
        ControlUtil.addcontrolModel(model,sectionnRepository,serviceRepository,"service");
        ControlUtil.addcustomerModel(model,userRepo,contactRepository,telephoneRepository);
        return "servicesforcustomer";
    }
    @GetMapping("/products")
    public String products(Model model) {
        ControlUtil.addcontrolModel(model,sectionnRepository,serviceRepository,"product");
        ControlUtil.addcustomerModel(model,userRepo,contactRepository,telephoneRepository);
        return "servicesforcustomer";
    }

    @GetMapping("/main")
    public String cmain(Model model) {
        ControlUtil.addcustomerModel(model,userRepo,contactRepository,telephoneRepository);
        return "main";
    }
    @GetMapping("/contacts")
    public String contacts(Model model) {
        ControlUtil.addcustomerModel(model,userRepo,contactRepository,telephoneRepository);
        return "contactsforcustomer";
    }
    @GetMapping("/")
    public String main(Model model) {
        ControlUtil.addcustomerModel(model,userRepo,contactRepository,telephoneRepository);
        return "main";
    }

    @RequestMapping(value={"/robots.txt", "/robot.txt"}, method = RequestMethod.GET)
    @ResponseBody
    public String getRobotsTxt() {
        return "User-agent: Googlebot\n" +
                "Disallow: /login\n" +
                "Disallow: /accountparametercontrol\n" +
                "Disallow: /contactscontrol\n" +
                "Disallow: /productscontrol\n" +
                "Disallow: /servicecontrol\n" +
                "Disallow: /static\n" +
                "Allow: /services\n" +
                "Allow: /\n" +
                "Allow: /main\n" +
                "Allow: /contacts\n" +
                "Allow: /products\n" +
                "Sitemap: http://example.com/sitemap.txt\n" +
                "Host: http://printaktobe.com/\n" +
                "\n"+
                "User-agent: Yandex *\n" +
                "Disallow: /login\n" +
                "Disallow: /accountparametercontrol\n" +
                "Disallow: /contactscontrol\n" +
                "Disallow: /productscontrol\n" +
                "Disallow: /servicecontrol\n" +
                "Disallow: /static\n" +
                "Allow: /services\n" +
                "Allow: /\n" +
                "Allow: /main\n" +
                "Allow: /contacts\n" +
                "Allow: /products\n" +
                "Sitemap: http://example.com/sitemap.txt\n" +
                "Host: http://printaktobe.com/\n" +
                "\n"+
                "User-agent: *\n" +
                "Disallow: /login\n" +
                "Disallow: /accountparametercontrol\n" +
                "Disallow: /contactscontrol\n" +
                "Disallow: /productscontrol\n" +
                "Disallow: /servicecontrol\n" +
                "Disallow: /static\n" +
                "Allow: /services\n" +
                "Allow: /\n" +
                "Allow: /main\n" +
                "Allow: /contacts\n" +
                "Allow: /products\n" +
                "Sitemap: http://example.com/sitemap.txt\n" +
                "Host: http://printaktobe.com/\n";
    }
    @RequestMapping(value={"/sitemap.txt"}, method = RequestMethod.GET)
    @ResponseBody
    public String getSitemapTxt() {
        return  "http://printaktobe.com/services\n" +
                "http://printaktobe.com/\n" +
                "http://printaktobe.com/main\n" +
                "http://printaktobe.com/contacts\n" +
                "http://printaktobe.com/products\n";
    }
}
