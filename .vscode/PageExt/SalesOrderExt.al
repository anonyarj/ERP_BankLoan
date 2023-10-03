pageextension 50230 "Sales Order" extends "Sales Order"
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