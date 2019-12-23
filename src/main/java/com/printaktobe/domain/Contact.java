package com.printaktobe.domain;

import javax.persistence.*;

@Entity
public class Contact {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;
    @OneToOne (fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User user;
    private String email;
    private String vk;
    private String instagramlink;
    private String whatsappphone;
    private String city;
    private String address;
    private String country;
    private String scheduleofwork;
    private String phone;


    public Contact() {
    }
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getVk() {
        return vk;
    }

    public void setVk(String vk) {
        this.vk = vk;
    }

    public String getInstagramlink() {
        return instagramlink;
    }

    public void setInstagramlink(String instagramlink) {
        this.instagramlink = instagramlink;
    }

    public String getWhatsappphone() {
        return whatsappphone;
    }

    public void setWhatsappphone(String whatsappphone) {
        this.whatsappphone = whatsappphone;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getScheduleofwork() {
        return scheduleofwork;
    }

    public void setScheduleofwork(String scheduleofwork) {
        this.scheduleofwork = scheduleofwork;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
