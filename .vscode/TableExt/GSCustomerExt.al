tableextension 50233 "Gs Customer Ext" extends Customer
{
    fields
    {
        field(50231; "External Document Id"; Code[20])
        {
            DataClassification = ToBeClassified;
        } // Add changes to table fields here
    }

    var
        myInt: Integer;
}