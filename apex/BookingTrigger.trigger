trigger BookingTrigger on Booking__c (before insert) {
    
    for(Booking__c b : Trigger.new){
        
        if(b.Destination__c == 'Goa'){
            b.Price__c = 8000;
        } 
        else if(b.Destination__c == 'Bali'){
            b.Price__c = 20000;
        } 
        else {
            b.Price__c = 5000;
        }
    }
}
