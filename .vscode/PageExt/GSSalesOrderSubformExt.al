pageextension 50236 "GS Sales Order Subform Ext" extends "Sales Order Subform"
{

    layout
    {
        addafter("Location Code")
        {
            field("Partner ID"; Rec."Partner ID")
            {
                ApplicationArea = All;

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