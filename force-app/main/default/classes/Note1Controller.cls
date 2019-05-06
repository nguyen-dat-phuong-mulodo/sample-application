public with sharing class Note1Controller {
    
    private List<Note1__c> notes;
    
    public Note1Controller(){
        notes = getNotes();
    }
    
    public static List<Note1__c> getNotes(){
         return [SELECT Id, Name, Demo__c, Send_Mail__c, Owner.Name FROM Note1__c];
    }	
}