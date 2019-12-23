package com.printaktobe.Controller;

import com.printaktobe.Utils.ControlUtil;
import com.printaktobe.domain.Sectionn;
import com.printaktobe.domain.Service;
import com.printaktobe.repos.SectionnRepository;
import com.printaktobe.repos.ServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Controller
public class AdminproductsController {

    @Autowired
    private SectionnRepository sectionnRepository;

    @Autowired
    private ServiceRepository serviceRepository;

    ControlUtil controlUtil;

    @GetMapping("/productscontrol")
    public String productscontrol(Model model) {
        controlUtil.addcontrolModel(model, sectionnRepository, serviceRepository, "product");
        return "servicecontrol";
    }
    @GetMapping("/addsectionofproducts")
    public String addsectionofproducts(Model model,@RequestParam String sectionname) {
        ControlUtil.addsectiontoRepo(model, sectionname, "product", sectionnRepository);
        controlUtil.addcontrolModel(model, sectionnRepository, serviceRepository, "product");
        return "servicecontrol";
    }

    @GetMapping("/addproduct")
    public String addproduct(Model model, @RequestParam String addservicesectionname,
                                        @RequestParam String servicename,
                                        @RequestParam String serviceprice,
                                        @RequestParam String servicedescription) {
        ControlUtil.additemtoserviceRepo("product",
                addservicesectionname,
                servicename,
                servicedescription,
                serviceprice,
                serviceRepository,
                sectionnRepository);
        controlUtil.addcontrolModel(model, sectionnRepository, serviceRepository, "product");
        return "servicecontrol";
    }

    @GetMapping("/deletesectionofproducts")
    public String deletesectionofproducts(Model model, @RequestParam String sectionname) {
        ControlUtil.deletesection(model,sectionname,serviceRepository,sectionnRepository);
        controlUtil.addcontrolModel(model, sectionnRepository, serviceRepository, "product");
        return "servicecontrol";
    }

    @GetMapping("/deleteproduct")
    public String deleteproduct(Model model, @RequestParam String deletedserviceid ) {
        ControlUtil.deleteitemfromserviceRepo(model,deletedserviceid,serviceRepository);
        controlUtil.addcontrolModel(model, sectionnRepository, serviceRepository, "product");
        return "servicecontrol";
    }

    @GetMapping("/editsectionofproducts")
    public String editsectionofproducts(Model model, @RequestParam String oldsectionname, @RequestParam String newsectionname) {
        ControlUtil.editsection(oldsectionname,newsectionname,serviceRepository,sectionnRepository);
        controlUtil.addcontrolModel(model, sectionnRepository, serviceRepository, "product");
        return "servicecontrol";
    }

    @GetMapping("/editproduct")
    public String editproduct(Model model,
                              @RequestParam String serviceid,
                              @RequestParam String servicename,
                              @RequestParam String serviceprice,
                              @RequestParam String servicedescription) {
        ControlUtil.edititemofserviceRepo(serviceid,servicename,serviceprice,servicedescription,serviceRepository);
        controlUtil.addcontrolModel(model, sectionnRepository, serviceRepository, "product");
        return "servicecontrol";
    }
}
