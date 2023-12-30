package com.eazybytes.accounts.service.impl;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "spring.contact-info")
public record CustomerInfo(String name) {
}
