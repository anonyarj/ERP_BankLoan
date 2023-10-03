tableextension 50231 "My Sales Header" extends "Sales Header"
{
    fields
    {
        field(50231; "External Document Id"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}