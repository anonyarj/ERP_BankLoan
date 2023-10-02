tableextension 50230 "GS Number Series Ext" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50141; "Loan No."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
    }

    var
        myInt: Integer;
}