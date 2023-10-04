pageextension 50234 "Ext Transfer Order" extends "Transfer Order"
{
    layout
    {
        addafter(Status)
        {
            field("Transfer ID"; Rec."Transfer ID")
            {
                ApplicationArea = All;
            }
        }

    }
}