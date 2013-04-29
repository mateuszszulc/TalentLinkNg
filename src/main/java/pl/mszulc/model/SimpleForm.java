package pl.mszulc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class SimpleForm {
    private Long id;

    private String skillName;

    @Id
    @GeneratedValue
    public Long getId() {
        return id;
    }

    @Column
    public String getSkillName() {
        return skillName;
    }

    public void setSkillName(String skillName) {
        this.skillName = skillName;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
