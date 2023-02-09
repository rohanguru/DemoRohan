//import { LightningElement } from 'lwc';

//export default class DemoObject extends LightningElement {}
const object1 = {
    a: 'somestring',
    b: 42
  };
  
  for (const [key, value] of Object.entries(object1)) {
    console.log('the key is' + key + ' and the value is:'+value);
   //console.log('the key is' ${key} and the value is : ${value});
  }
  ////////////////////////////////////////////////////////////

  let DC={
    firstName:'Batman',
    secondName: '',
    age:34,
    gender:'Male'};
  
  
  let DCNew={...DC};
  
  DCNew['secondName']='isRich';
  
  console.log(DC);
  console.log(DCNew);
///////////////////////////////////////////