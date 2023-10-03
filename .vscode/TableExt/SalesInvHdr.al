tableextension 50232 MyExtension extends "Sales Invoice Header"
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