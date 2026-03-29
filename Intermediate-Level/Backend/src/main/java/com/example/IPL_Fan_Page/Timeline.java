package com.example.IPL_Fan_Page;

import jakarta.persistence.*;

@Entity
@Table(name="timeline")
public class Timeline {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private Integer year;
    private String title;
    private String description;
    private String category;

    @Column(name = "image_url")
    private String imageUrl;
    //ID
    public Integer getId() {
        return id;
    }
    public void setId(Integer id)
    {
        this.id=id;
    }

    //Year
    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    //title

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    //description

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    //category

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
}
