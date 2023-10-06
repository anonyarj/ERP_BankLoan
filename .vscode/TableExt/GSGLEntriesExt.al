tableextension 50237 "GS G/L Entries Ext" extends "G/L Entry"
{
    fields
    {
        field(50231; "Transfer ID:"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}