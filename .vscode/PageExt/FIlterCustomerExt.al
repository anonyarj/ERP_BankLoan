pageextension 50232 "Ext Customer List" extends "Customer List"
{
    layout
    {

        // Add changes to page layout here
    }

    actions
    {
        addafter(SendApprovalRequest)
        {
            action("FILTER DATA")
            {
                ApplicationArea = All;
                trigger OnAction()
                var
                // Cust: Record "Customer";
                begin
                    rec.SetFilter("Location Code", 'GELB', '');
                    rec.SetFilter("Balance (LCY)", '>2000');


                end;
            }

        }

    }

    var
        myInt: Integer;
}