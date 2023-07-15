public with sharing class lwcAppExampleApex {
 
    @AuraEnabled
    public static Account submitScoreAction(Account acc){
    
        insert acc;
        return acc;
    }
}