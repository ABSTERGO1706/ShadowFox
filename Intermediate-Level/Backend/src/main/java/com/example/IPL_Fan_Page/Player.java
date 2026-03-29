package com.example.IPL_Fan_Page;

import jakarta.persistence.*;

@Entity
@Table(name = "players")
public class Player {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    private String role;
    private Integer matches;
    private Integer runs;
    private Integer wickets;
    @Column(name = "strike_rate")
    private Float strikeRate;
    @Column(name = "years_active")
    private String yearsActive;
    @Column(name = "image_url")
    private String imageUrl;
    //Id
    public Integer getId() {
        return id;
    }
    public void setId(Integer id)
    {
        this.id=id;
    }
    //Name
    public String getName() {
        return name;
    }
    public void setName(String name)
    {
        this.name=name;
    }
    //Roles
    public String getRole() {
        return role;
    }
    public void setRole(String role)
    {
        this.role=role;
    }
    //Matches
    public Integer getMatches() {
        return matches;
    }
    public void setMatches(Integer matches)
    {
        this.matches=matches;
    }
    //Runs
    public Integer getRuns() {
        return runs;
    }
    public void setRuns(Integer runs)
    {
        this.runs=runs;
    }
    //Wickets
    public Integer getWickets() {
        return wickets;
    }
    public void setWickets(Integer wickets)
    {
        this.wickets=wickets;
    }
    //StrikeRate
    public Float getStrikeRate() {
        return strikeRate;
    }
    public void setStrikeRate(Float strikeRate)
    {
        this.strikeRate=strikeRate;
    }
    //YearsActive
    public String getYearsActive() {
        return yearsActive;
    }
    public void setYearsActive(String yearsActive)
    {
        this.yearsActive=yearsActive;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
}
