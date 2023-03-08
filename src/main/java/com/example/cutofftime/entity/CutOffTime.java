package com.example.cutofftime.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;
import java.time.LocalTime;


@Entity
public class CutOffTime {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private String iso;
    private String country;
    private String today;
    private String tomorrow;
    private String after_tomorrow;

    public String getIso() {
        return iso;
    }

    public String getCountry() {
        return country;
    }


    public String getToday() {
        return today;
    }


    public String getTomorrow() {
        return tomorrow;
    }


    public String getAfterTomorrow() {
        return after_tomorrow;
    }

    public String getCutOffTime(LocalDate today, LocalDate targetDate) {
        if (today.isEqual(targetDate)) {
            return this.getToday();
        }
        if(targetDate.isEqual(today.plusDays(1))){
            return this.getTomorrow();
        }
        return this.getAfterTomorrow();
    }

    public static String compareCutOffTime(String time1, String time2){
        if ((time1.equals("Never possible")) || (time2.equals("Never possible"))) {
            return "Never possible";
        }
        if ((time1.equals("Always possible"))) {
            return time2;
        }
        if ((time2.equals("Always possible")))  {
            return time1;
        }
        LocalTime t1 = LocalTime.parse(time1);
        LocalTime t2 = LocalTime.parse(time2);
        if (t1.isBefore(t2)) {
            return time1;
        }
        return time2;
    }

}