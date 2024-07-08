package com.library;

public class Book {
    private int bookId;
    private String bookName;
    private double bookPrice;
    private String bookAuthor;

    public Book(int bookId, String bookName, double bookPrice, String bookAuthor) {
        this.bookId = bookId;
        this.bookName = bookName;
        this.bookPrice = bookPrice;
        this.bookAuthor = bookAuthor;
    }

    public int getBookId() {
        return bookId;
    }

    public String getBookName() {
        return bookName;
    }

    public double getBookPrice() {
        return bookPrice;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }
}
