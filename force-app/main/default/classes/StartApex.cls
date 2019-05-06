public class StartApex {
    public void run(){
      
        List<String> colors = new List<String> { 'red', 'green', 'blue' };
        List<String> moreColors = new List<String>();
        moreColors.add('orange');
        moreColors.add('purple');
        
        String color1 = moreColors.get(0);
		String color2 = moreColors[0];
		System.assertEquals(color1, color2);
        for(Integer i=0;i<colors.size();i++) {
            System.debug(colors[i]);
        }
    }
    
    public void insertNote(){
        Note1__c note = new Note1__c();
        note.Name = 'Name Note1';
        note.Description__c = 'des Note1';
        note.note__c = 'note Note 1';
        note.Send_Mail__c = true;
        Database.insert(note, false);
    }
    
   
    
    public void insertMultipleNote(){
        List<Note1__c> notes = new List<Note1__c>();
        for(Integer i = 1; i<= 10; i++){
            Note1__c note = new Note1__c();
            note.Name = 'Name Note1 ' + i;
            note.Description__c = 'des Note1' + i;
            note.note__c = 'Note Note 1' + i;
            notes.add(note);
        }
        insert notes;
    }
    
    public void updateMultipleNote(){
       	List<Note1__c> notes = [SELECT Id, Name, Send_Mail__c FROM Note1__c];
        for(Note1__c item: notes){
            item.Name = 'Note Update';
            item.Send_Mail__c = true;
        }
        update notes;
    }
    
    public void deleteNote(){
       delete [SELECT Id FROM Note1__c];
    }
    
    public void undeleteNote(){
        undelete [SELECT Id FROM Note1__c ALL ROWS];
    }
    
  
}