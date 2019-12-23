package com.printaktobe.domain;
import javax.persistence.*;

@Entity
public class Sectionn {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;

    private String name;
    private String itemId;
    private String sectionntype;


    public Sectionn() {
    }
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public String getSectionntype() {
        return sectionntype;
    }

    public void setSectionntype(String sectionntype) {
        this.sectionntype = sectionntype;
    }
}
