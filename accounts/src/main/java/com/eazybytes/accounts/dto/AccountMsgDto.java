package com.eazybytes.accounts.dto;

public record AccountMsgDto(Long accountNumber,
                            String name,
                            String email,
                            String mobileNumber) {
}
