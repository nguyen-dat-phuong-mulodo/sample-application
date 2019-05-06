public class InheritedSharingClass {
 	public List<Contact> getAllTheSecrets(){
        return [SELECT Name FROM Contact];
    }

}