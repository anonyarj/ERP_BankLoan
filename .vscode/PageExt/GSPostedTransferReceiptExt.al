pageextension 50235 "GS Posted Transfer Receipt" extends "Posted Transfer Receipt"
{
    layout
    {
        addafter("Posting Date")
        {
            field("Transfer ID"; Rec."Transfer ID")
            {
                ApplicationArea = All;
                Editable = false;
            }

        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}