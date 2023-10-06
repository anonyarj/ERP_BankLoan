tableextension 50238 "GS Purchase Header Ext" extends "Purchase Header"
{
    fields
    {
        field(50231; "Transfer ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}