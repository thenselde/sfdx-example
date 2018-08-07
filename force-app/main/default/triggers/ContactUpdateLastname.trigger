trigger ContactUpdateLastname on Contact (after insert, after update) {
    list<Contact> contactlist = trigger.new;
    for (Contact con:contactlist) {
        con.PreviousLastName__c = 'XXX';
    }
}