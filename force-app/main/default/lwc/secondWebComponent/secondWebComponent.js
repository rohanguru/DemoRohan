import { LightningElement,wire,track,api } from 'lwc';
import { subscribe, unsubscribe, APPLICATION_SCOPE, MessageContext} from 'lightning/messageService';
import searchMessage from '@salesforce/messageChannel/gitSearchMessageChannel__c';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class SecondWebComponent extends LightningElement {

    publisherMessage = '';
    subscription = null;
 
    @wire(MessageContext)
    messageContext;
 
    connectedCallback() {
        this.handleSubscribe();
    }
 
    handleSubscribe() {
        if (this.subscription) {
            return;
        }
        this.subscription = subscribe(this.messageContext, searchMessage, (message) => {
            console.log(message.message);
            this.publisherMessage = message.message;
            this.ShowToast('Success', message.message, 'success', 'dismissable');
        });
    }
 
    ShowToast(title, message, variant, mode){
        const evt = new ShowToastEvent({
            title: title,
            message:message,
            variant: variant,
            mode: mode
        });
        this.dispatchEvent(evt);
    }
     
}
/* 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
@api personName;
    
    subscription = null;

    @wire(MessageContext)
    messageContext;

    connectedCallback(){
        this.subscribeToMessageChannel();
    }

    disconnectedCallback(){
        this.unsubscribeToMessageChannel();
    }

    subscribeToMessageChannel() {
        if (!this.subscription) {
            this.subscription = subscribe(
                this.messageContext,
               searchMessage,
                (message) => this.handleMessage(message),
                { scope: APPLICATION_SCOPE }
            );
        }
    }

    handleMessage(message) {
     //  alert("message:"+JSON.stringify(message));
        console.log('handleMessage',message);
    }

    unsubscribeToMessageChannel() {
        unsubscribe(this.subscription);
        this.subscription = null;
    }

}  */