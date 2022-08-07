package com.klosowsky.api;

public class UserInfoDTO {
    private String userName = "ad";
    private String crushName = "te";

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getCrushName() {
        return crushName;
    }

    public void setCrushName(String crushName) {
        this.crushName = crushName;
    }
}
