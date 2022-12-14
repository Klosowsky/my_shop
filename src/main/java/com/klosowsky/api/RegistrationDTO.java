package com.klosowsky.api;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class RegistrationDTO {

    @Size(min = 3,max = 15,message = " * username should have 3 to 15 chars *")
    private String username;
    private char[] password;
    private char[] repeatPassword;

    private String country;
    private String[] hobbies;
    private String gender;
    private CommunicationDTO communicationDTO;

    public CommunicationDTO getCommunicationDTO() {
        return communicationDTO;
    }

    public void setCommunicationDTO(CommunicationDTO communicationDTO) {
        this.communicationDTO = communicationDTO;
    }

    private boolean sendingInformationAgreement;
    private boolean conditionsAgreement;

    public boolean isSendingInformationAgreement() {
        return sendingInformationAgreement;
    }

    public void setSendingInformationAgreement(boolean sendingInformationAgreement) {
        this.sendingInformationAgreement = sendingInformationAgreement;
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

    public char[] getRepeatPassword() {
        return repeatPassword;
    }

    public void setRepeatPassword(char[] repeatPassword) {
        this.repeatPassword = repeatPassword;
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

    public boolean isConditionsAgreement() {
        return conditionsAgreement;
    }

    public void setConditionsAgreement(boolean conditionsAgreement) {
        this.conditionsAgreement = conditionsAgreement;
    }
}

