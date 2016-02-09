package com.carwashes.kuzovatov.util;

public class CustomErrorHandler extends RuntimeException {
    public CustomErrorHandler() {
        super();
    }

    public CustomErrorHandler(String message) {
        super(message);
    }

    public CustomErrorHandler(String message, Throwable cause) {
        super(message, cause);
    }

    public CustomErrorHandler(Throwable cause) {
        super(cause);
    }
}
