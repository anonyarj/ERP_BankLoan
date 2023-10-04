page 50234 "GS Customer"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;

                }
                field("Balance (LCY)"; Rec."Balance (LCY)")
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    // actions
    // {
    //     // area(Processing)
    //     // {
    //     //     action("FILTER DATA")
    //     //     {
    //     //         ApplicationArea = All;
    //     //         trigger OnAction()
    //     //         var
    //     //         // Cust: Record "Customer";
    //     //         begin
    //     //             rec.SetFilter("Location Code", 'GELB', '');
    //     //             rec.SetFilter("Balance (LCY)", '>2000');

    //     //         end;
    //     //     }

    // }

}
