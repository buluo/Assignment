package com.example.cutofftime.exception;

import java.security.PublicKey;

public class IsoCodeNotFoundException extends RuntimeException{
    public IsoCodeNotFoundException(String message){
        super(message);
    }
}
