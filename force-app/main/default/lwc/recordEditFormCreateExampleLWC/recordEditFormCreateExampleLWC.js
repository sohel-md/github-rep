import { LightningElement} from 'lwc';
export default class RecordEditFormCreateExampleLWC extends LightningElement {
    handleSuccess(event) {
        console.log('onsuccess event recordEditForm',event.detail.id)
    }
    handleSubmit(event) {
        console.log('onsubmit event recordEditForm'+ event.detail.fields);
    }
}