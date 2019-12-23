package com.printaktobe.Utils;

import com.printaktobe.domain.*;
import com.printaktobe.repos.*;
import org.springframework.ui.Model;

import java.util.List;
import java.util.Optional;

public class ControlUtil {
    public static void addcustomerModel(Model model,
                                        UserRepo userRepo,
                                        ContactRepository contactRepository,
                                        TelephoneRepository telephoneRepository){
        User user = userRepo.findByRoles(Role.USER);
        Contact contact = contactRepository.findByUser(user);
        Iterable<Telephone> telephones = telephoneRepository.findAll();
        model.addAttribute("contact", contact);
        model.addAttribute("telephones", telephones);
    }
    public static void addcontrolModel(Model model,SectionnRepository sectionnRepository, ServiceRepository serviceRepository, String controlpaneltype ){
        Iterable<Sectionn> sections = sectionnRepository.findAllBySectionntype(controlpaneltype);
        Iterable<Service> services = serviceRepository.findAllByServicetype(controlpaneltype);
        model.addAttribute("controlpaneltype", controlpaneltype);
        if(controlpaneltype == "product") {
            model.addAttribute("nameofitem", "товар");
        }else{
            model.addAttribute("nameofitem", "услугу");
        }
        model.addAttribute("listofsections", sections);
        model.addAttribute("listofservices", services);
    }

    public static void addsectiontoRepo(Model model,String sectionname, String sectiontype, SectionnRepository sectionnRepository ){
        if(sectionnRepository.findSectionByName(sectionname) == null) {
            Sectionn s = new Sectionn();
            s.setName(sectionname);
            s.setSectionntype(sectiontype);
            sectionnRepository.save(s);
        }else{
            model.addAttribute("message", true);
            model.addAttribute("messagetext", "Такой раздел уже существует!");
        }
    }
    public static void additemtoserviceRepo(String itemtype,
                                            String addservicesectionname,
                                            String servicename,
                                            String servicedescription,
                                            String serviceprice,
                                            ServiceRepository serviceRepository,
                                            SectionnRepository sectionnRepository){
        Sectionn s = sectionnRepository.findSectionByName(addservicesectionname);
        Service serv = new Service();
        serv.setServicetype(itemtype);
        serv.setSectionn(s);
        serv.setSectionName(s.getName());
        serv.setName(servicename);
        serv.setDescription(servicedescription);
        serv.setPrice(serviceprice);
        serviceRepository.save(serv);
    }

    public static void deletesection(Model model,String sectionname,
                                     ServiceRepository serviceRepository,
                                     SectionnRepository sectionnRepository){
        if(sectionnRepository.findSectionByName(sectionname) == null) {
            model.addAttribute("message", true);
            model.addAttribute("messagetext", "Такой раздел уже удален или не существует!");
        }else{
            Sectionn s = sectionnRepository.findSectionByName(sectionname);
            List<Service> servicess =  serviceRepository.findAllBySectionn(s);
            serviceRepository.deleteAll(servicess);
            sectionnRepository.delete(s);
        }
    }
    public static void deleteitemfromserviceRepo(Model model,
                                            String deletedserviceid,
                                            ServiceRepository serviceRepository){
        if(serviceRepository.findById(Long.parseLong(deletedserviceid )) == null) {
            model.addAttribute("message", true);
            model.addAttribute("messagetext", "Ошибка удаления услуги!");
        }else{
            Optional<Service> s = serviceRepository.findById(Long.parseLong(deletedserviceid ));
            serviceRepository.delete(s.get());
        }
    }
    public static void editsection(String oldsectionname,
                                   String newsectionname,
                                   ServiceRepository serviceRepository,
                                   SectionnRepository sectionnRepository){
        Sectionn s = sectionnRepository.findSectionByName(oldsectionname);
        List<Service> servicesedit = serviceRepository.findAllBySectionn(s);
        s.setName(newsectionname);
        sectionnRepository.save(s);
        for(int i = 0; i<servicesedit.size(); i++){
            servicesedit.get(i).setSectionName(newsectionname);
            servicesedit.get(i).setSectionn(s);
            serviceRepository.save(servicesedit.get(i));
        }
    }
    public static void edititemofserviceRepo(String serviceid,
                                             String servicename,
                                             String serviceprice,
                                             String servicedescription,
                                             ServiceRepository serviceRepository) {
        Optional<Service> s = serviceRepository.findById(Long.parseLong(serviceid));
        Service serv = s.get();
        if(!servicename.equals("")){
            serv.setName(servicename);
        }
        if(!serviceprice.equals("")){
            serv.setPrice(serviceprice);
        }
        if(!servicedescription.equals("")){
            serv.setDescription(servicedescription);
        }
        serviceRepository.save(serv);
    }
}
