public class Note1ControllerExt {
    private final Note1__c note;
    public Note1ControllerExt(ApexPages.StandardSetController controller){
        note = (Note1__c) controller.getRecord();
    }
    public String getText(){
        return 'text output';
    }
}