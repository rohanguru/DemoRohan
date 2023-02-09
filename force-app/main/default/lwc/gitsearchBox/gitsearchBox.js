import { LightningElement,wire} from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import searchMessage from '@salesforce/messageChannel/searchGitChannel__c';
import Pikachu from '@salesforce/resourceUrl/Pikachu2';

export default class gitSearchBox extends LightningElement {
    imageUrl = Pikachu ;
    @wire(MessageContext)
    messageContext;
    handleClick(event){
    let inputvalue=this.template.querySelectorAll("lightning-input")[0].value;
    const payload = { isTermvalid:true, searchTerm:inputvalue };
        publish(this.messageContext, searchMessage, payload);
    }
    
}