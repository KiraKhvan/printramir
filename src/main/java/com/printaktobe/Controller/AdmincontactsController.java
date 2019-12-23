package com.printaktobe.Controller;

import com.printaktobe.domain.*;
import com.printaktobe.repos.ContactRepository;
import com.printaktobe.repos.ServiceRepository;
import com.printaktobe.repos.TelephoneRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
public class AdmincontactsController {

    @Autowired
    private ContactRepository contactRepository;

    @Autowired
    private TelephoneRepository telephoneRepository;

    @GetMapping("/contactscontrol")
    public String contacts(Model model,  @AuthenticationPrincipal User user) {
        Contact contact = contactRepository.findByUser(user);
        model.addAttribute("contact", contact);
        addModel(model);
        return "contactscontrol";
    }

    @GetMapping("/editelement")
    public String editelement(Model model,
                                @AuthenticationPrincipal User user,
                                @RequestParam String editedelement,
                              @RequestParam String typeelement) {
        Contact contact = contactRepository.findByUser(user);
        switch (typeelement){
            case "country":  contact.setCountry(editedelement); break;
            case "email":  contact.setEmail(editedelement); break;
            case "vk":  contact.setVk(editedelement); break;
            case "instagramlink":  contact.setInstagramlink(editedelement); break;
            case "whatsappphone":  contact.setWhatsappphone(editedelement); break;
            case "city":  contact.setCity(editedelement); break;
            case "address":  contact.setAddress(editedelement); break;
            case "scheduleofwork":  contact.setScheduleofwork(editedelement); break;
            case "phone":  contact.setPhone(editedelement); break;
        }
        contactRepository.save(contact);
        model.addAttribute("contact", contact);
        addModel(model);
        return "contactscontrol";
    }

    @GetMapping("/deleteelement")
    public String deleteelement(Model model,
                              @AuthenticationPrincipal User user,
                              @RequestParam String editedelement) {
        Contact contact = contactRepository.findByUser(user);
        switch (editedelement){
            case "country":  contact.setCountry(""); break;
            case "email":  contact.setEmail(""); break;
            case "vk":  contact.setVk(""); break;
            case "instagramlink":  contact.setInstagramlink(""); break;
            case "whatsappphone":  contact.setWhatsappphone(""); break;
            case "city":  contact.setCity(""); break;
            case "address":  contact.setAddress(""); break;
            case "scheduleofwork":  contact.setScheduleofwork(""); break;
            case "phone":  contact.setScheduleofwork(""); break;
        }
        contactRepository.save(contact);
        model.addAttribute("contact", contact);
        addModel(model);
        return "contactscontrol";
    }

    @GetMapping("/addphonecontact")
    public String addphonecontact(Model model,
                                @AuthenticationPrincipal User user,
                                @RequestParam String phonestag,
                                  @RequestParam String phonenum,
                                  @RequestParam String actiontype,
                                  @RequestParam String phoneid) {
        Contact contact = contactRepository.findByUser(user);
        Telephone telephone = new Telephone();
        switch (actiontype){
            case "add":
                telephone.setContact(contact);
                telephone.setNumber(phonenum);
                telephone.setTag(phonestag);
                telephoneRepository.save(telephone);
                break;
            case "edit":
                Optional<Telephone> opttel = telephoneRepository.findById(Long.parseLong(phoneid));
                telephone = opttel.get();
                telephone.setContact(contact);
                telephone.setNumber(phonenum);
                telephoneRepository.save(telephone);
                break;
            case "delete":
                Optional<Telephone> opttel2 = telephoneRepository.findById(Long.parseLong(phoneid));
                telephone = opttel2.get();
                telephoneRepository.delete(telephone);
                break;

        }
        model.addAttribute("contact", contact);
        addModel(model);
        return "contactscontrol";
    }
    void addModel(Model model){
        Iterable<Telephone> telephones = telephoneRepository.findAll();
        model.addAttribute("listoftelephones", telephones);
    }
}