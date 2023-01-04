public class SwitchStatementExample {

    public static void switchExample(){
        Integer num = 5;
        
        switch on num {
           when 3 {
               //If num is 3 this block is called
               System.debug('when num is 3');
           }
           when 5{
               //If num is 5 this block is called
               System.debug('when num is 5');
           }
           when else {
               //If num did not match any of the blocks already, this block is called
               System.debug('when num was not 3 or 5');
           }
        }
    }
}