public class Note1ControllerExt1 {
	private final Note1__c note;
    public Note1ControllerExt1(ApexPages.StandardSetController controller){
        note = (Note1__c) controller.getRecord();
    }
    public String getText(){
        return 'text output 1';
    }
}