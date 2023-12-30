package com.eazybytes.accounts.service.impl;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "spring.contact-info")
@Getter
@Setter
public class ContactInfo {
    private String name;
}
