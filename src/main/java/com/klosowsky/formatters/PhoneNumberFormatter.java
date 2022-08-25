package com.klosowsky.formatters;

import com.klosowsky.api.Phone;
import org.springframework.format.Formatter;

import java.text.ParseException;
import java.util.Locale;

public class PhoneNumberFormatter implements Formatter<Phone> {


    @Override
    public Phone parse(String text, Locale locale) throws ParseException {

        System.out.println("inside parse method in formatter");
        String[] phoneArray = text.split("-");
        Phone phone = new Phone();
        phone.setCountryCode(phoneArray[0]);
        phone.setPhoneNumber(phoneArray[1]);

        return phone;
    }

    @Override
    public String print(Phone phone, Locale locale) {
        System.out.println("inside print method in formatter");

        return phone.getCountryCode()+"-"+phone.getPhoneNumber();
    }
}
