trigger Note1Trigger on Note1__c (before insert, after insert, after update, after delete, after undelete) {
    if (Trigger.isInsert) {
        if (Trigger.isBefore) {
            for(Note1__c item : Trigger.new) {
                item.Description__c = 'des note1';
            }   
        } else if (Trigger.isAfter) {
            for (Note1__c item: Trigger.newMap.values()) {
                try{
                    EmailManager.sendMail('nguyendatphuong@mkuk14@gmail.com', 'test send mail', 'insert row: ' + item.Demo__c);
                }catch(System.EmailException e){
                    System.debug(e);
                }
                
      		}
        }  
    }
    else if (Trigger.isUpdate) {
        if (Trigger.isAfter) {
            for (Note1__c item: Trigger.newMap.values()) { 
                System.debug(item);
      		}
             
        }       
    }
    else if (Trigger.isDelete) {
        if (Trigger.isAfter) {
            for (Note1__c item: Trigger.oldMap.values()) { 
                System.debug('after delete row: ' + item);
      		}
        }       
    }else if (Trigger.isUndelete) {
         for (Note1__c item: Trigger.newMap.values()) { 
               System.debug('undelete row: ' + item);
      	}
    }
	
}