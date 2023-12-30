package com.eazybytes.accounts.service.impl;

import com.eazybytes.accounts.AccountsApplication;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.env.Environment;
import org.springframework.test.context.ContextConfiguration;

import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
@ContextConfiguration(classes = {AccountsApplication.class, ContactInfo.class})
@EnableConfigurationProperties(value = CustomerInfo.class)
class AccountsServiceImplTest {

    @Value("${spring.application.name}")
    private String appName;

    @Value("${spring.application.description}")
    private String appDescription;

    @Autowired
    private Environment environment;

    @Test
    void testNameAndDescription() {
        assertEquals("accounts", appName);
        assertEquals("Accounts Microservice", appDescription);

        assertEquals("accounts", environment.getProperty("spring.application.name"));
        assertEquals("Accounts Microservice", environment.getProperty("spring.application.description"));
    }

    @Autowired
    ContactInfo contactInfo;

    @Autowired
    CustomerInfo customerInfo;

    @Test
    void testContactInfo() {
        assertEquals("Vamsi Krishna Nalluri", contactInfo.getName());
        assertEquals("Vamsi Krishna Nalluri", customerInfo.name());
    }

}