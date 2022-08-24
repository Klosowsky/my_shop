package com.klosowsky.api;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class RegistrationDTO {

    @Size(min = 3,max = 15,message = " * username should have 3 to 15 chars *")
    private String username;

    private char[] password;

    private String email;
    private String country;
    private String[] hobbies;
    private String gender;

    private boolean sendingInformationAgreement;

    public boolean isSendingInformationAgreement() {
        return sendingInformationAgreement;
    }

    public void setSendingInformationAgreement(boolean sendingInformationAgreement) {
        this.sendingInformationAgreement = sendingInformationAgreement;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public char[] getPassword() {
        return password;
    }

    public void setPassword(char[] password) {
        this.password = password;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String[] getHobbies() {
        return hobbies;
    }

    public void setHobbies(String[] hobbies) {
        this.hobbies = hobbies;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}
