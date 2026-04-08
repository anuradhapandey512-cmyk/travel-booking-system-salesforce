public with sharing class BookingController {
    
    @AuraEnabled
    public static String createBooking(String name, Date travelDate, String destination) {
        
        // Create new booking record
        Booking__c booking = new Booking__c(
            Customer_Name__c = name,
            Travel_Date__c = travelDate,
            Destination__c = destination,
            Status__c = 'Pending'
        );
        
        // Insert into database
        insert booking;
        
        // Return Booking Id
        return booking.Id;
    }
}
