import { LightningElement, track ,api} from 'lwc';

export default class GithubUsers extends LightningElement {
    @track users = [];

    connectedCallback() {
        // listen for message from parent component
        this.template.addEventListener('users', this.handleUsers.bind(this));
    }

    handleUsers(event) {
        this.users = event.detail;
    }
  }
