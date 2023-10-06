tableextension 50236 "GS Sales Line Ext" extends "Sales Line"
{

    fields
    {
        field(50230; "Partner ID"; Code[20])
        {
            DataClassification = CustomerContent;
        }

    }

    var
        myInt: Integer;
}