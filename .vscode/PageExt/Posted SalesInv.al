pageextension 50231 "My Posted Sales Invoice" extends "Posted Sales Invoice"
{
    layout
    {
        addafter("External Document No.")
        {
            field("External Document Id"; Rec."External Document Id")
            {
                ApplicationArea = All;
            }
        }
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}