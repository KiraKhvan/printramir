package com.printaktobe.Controller;
import com.printaktobe.Utils.ControlUtil;
import com.printaktobe.repos.SectionnRepository;
import com.printaktobe.repos.ServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class AdminserviceController {
    @Autowired
    private SectionnRepository sectionnRepository;

    @Autowired
    private ServiceRepository serviceRepository;

    ControlUtil controlUtil;

    @GetMapping("/servicecontrol")
    public String adminpanel(Model model) {
        controlUtil.addcontrolModel(model, sectionnRepository, serviceRepository, "service");
        return "servicecontrol";
    }

    @PostMapping("/servicecontrol")
    public String servicecontrol(Model model) {
        controlUtil.addcontrolModel(model, sectionnRepository, serviceRepository, "service");
        return "servicecontrol";
    }


    @GetMapping("/addsection")
    public String addsection(Model model, @RequestParam String sectionname) {
        ControlUtil.addsectiontoRepo(model, sectionname, "service", sectionnRepository);
        controlUtil.addcontrolModel(model, sectionnRepository, serviceRepository, "service");
        return "servicecontrol";
    }

    @GetMapping("/editsection")
    public String editsection(Model model, @RequestParam String oldsectionname, @RequestParam String newsectionname) {
        ControlUtil.editsection(oldsectionname,newsectionname,serviceRepository,sectionnRepository);
        controlUtil.addcontrolModel(model, sectionnRepository, serviceRepository, "service");
        return "servicecontrol";
    }
    @GetMapping("/editservice")
    public String editservice(Model model,
                              @RequestParam String serviceid,
                              @RequestParam String servicename,
                              @RequestParam String serviceprice,
                              @RequestParam String servicedescription) {
        ControlUtil.edititemofserviceRepo(serviceid,servicename,serviceprice,servicedescription,serviceRepository);
        controlUtil.addcontrolModel(model, sectionnRepository, serviceRepository, "service");
        return "servicecontrol";
    }

    @GetMapping("/deleteservice")
    public String deleteservice(Model model, @RequestParam String deletedserviceid ) {
        ControlUtil.deleteitemfromserviceRepo(model,deletedserviceid,serviceRepository);
        controlUtil.addcontrolModel(model, sectionnRepository, serviceRepository, "service");
        return "servicecontrol";
    }
    @GetMapping("/deletesection")
    public String deletesection(Model model, @RequestParam String sectionname) {
        ControlUtil.deletesection(model,sectionname,serviceRepository,sectionnRepository);
        controlUtil.addcontrolModel(model, sectionnRepository, serviceRepository, "service");
        return "servicecontrol";
    }

    @GetMapping("/addservice")
    public String addservice(Model model, @RequestParam String addservicesectionname,
                             @RequestParam String servicename,
                             @RequestParam String serviceprice,
                             @RequestParam String servicedescription) {
        ControlUtil.additemtoserviceRepo("service",
                addservicesectionname,
                servicename,
                servicedescription,
                serviceprice,
                serviceRepository,
                sectionnRepository);
        controlUtil.addcontrolModel(model, sectionnRepository, serviceRepository, "service");
        return "servicecontrol";
    }

}
