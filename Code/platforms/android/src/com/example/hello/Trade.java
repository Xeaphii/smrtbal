package com.example.hello;

public class Trade {
    public long timestamp;
    public double volume;
    public double price;

    public String toString() {
        return String.valueOf(timestamp) + "," + String.valueOf(price) + "," + String.valueOf(volume);
    }
}
