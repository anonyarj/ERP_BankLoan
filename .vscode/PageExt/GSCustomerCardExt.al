pageextension 50233 "Ext Customer Card" extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field("External Document Id"; Rec."External Document Id")
            {
                ApplicationArea = All;
            }
        }
        // Add changes to page layout here
    }

    // actions
    // {
    //     addafter(SendApprovalRequest)
    //     {
    //         action("FILTER DATA")
    //         {
    //             ApplicationArea = All;
    //             trigger OnAction()
    //             var
    //             // Cust: Record "Customer";
    //             begin
    //                 rec.SetFilter("Location Code", 'GELB', '');
    //                 rec.SetFilter("Balance (LCY)", '>2000');
    //                 Page.RunModal(Page::"GS Customer", Rec)


    //             end;
    //         }

    //     }

    // }

    var
        myInt: Integer;
}