import { LightningElement,wire,track } from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import searchMessage from '@salesforce/messageChannel/gitSearchMessageChannel__c';
export default class FirstComponent extends LightningElement {
    @wire(MessageContext)
    messageContext;
    message;
 
    handleChange(event){
        this.message = event.detail.value;
    }
 
    handleClick() {
        let message = {message: this.message};
        publish(this.messageContext, searchMessage, message);
    }
}













   /* @track  searchText;
    connectedCallback(){
        console.log('connected callback');
    }
    renderedCallback(){
        console.log('rendered callback');
    }
    
    @wire(MessageContext)
    messageContext;

    handleClick(event){
        let inputvalue=this.template.querySelectorAll("lightning-input")[0].value;
        console.log('gameengine time',inputvalue);
        this.searchText=inputvalue;
        const payload = { isTermvalid:true,searchTerm:inputvalue };

        publish(this.messageContext, searchMessage, payload);
    }
}  */