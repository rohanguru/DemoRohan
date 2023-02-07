import { LightningElement,track } from 'lwc';
import { loadStyle } from 'lightning/platformResourceLoader';
import bulma from '@salesforce/resourceUrl/bulma';
export default class Lds extends LightningElement {
    @track firstName = '';
    @track lastName = '';
    @track phone = '';
    @track textValue = '';
  
    handleFirstNameChange(event) {
      this.firstName = event.target.value;
    }
  
    handleLastNameChange(event) {
      this.lastName = event.target.value;
    }
  
    handlePhoneChange(event) {
      this.phone = event.target.value;
    }
  
    handleTextChange(event) {
      this.textValue = event.target.value;
    }
  
    connectedCallback() {
        loadStyle(this, bulma);
    }
}