import { LightningElement } from 'lwc';
import createBooking from '@salesforce/apex/BookingController.createBooking';

export default class BookingForm extends LightningElement {

    name;
    date;
    destination;

    handleName(event) {
        this.name = event.target.value;
    }

    handleDate(event) {
        this.date = event.target.value;
    }

    handleDestination(event) {
        this.destination = event.target.value;
    }

    handleBooking() {
        createBooking({ 
            name: this.name, 
            travelDate: this.date, 
            destination: this.destination 
        })
        .then(result => {
            alert('Booking Created Successfully! ID: ' + result);
        })
        .catch(error => {
            console.error(error);
        });
    }
}
