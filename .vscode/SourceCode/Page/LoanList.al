page 50231 "Loan List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Loan Table";
    CardPageId = "Loan Card";
    // SourceTableView = where(Posted = const(false));

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Loan No"; Rec."Loan No")
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
                field("Loan Ammount"; Rec."Loan Ammount")
                {
                    ApplicationArea = All;

                }
                field("Loan Start Date"; Rec."Loan Start Date")
                {
                    ApplicationArea = All;

                }
                field("Loan End Date"; Rec."Loan End Date")
                {
                    ApplicationArea = All;

                }
                field("Bank Account"; Rec."Bank Account")
                {
                    ApplicationArea = All;

                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ApplicationArea = All;

                }
                field("Paid Amount"; Rec."Paid Amount")
                {
                    ApplicationArea = All;


                }
                field(Posted; Rec.Posted)
                {
                    ApplicationArea = All;

                }

            }

        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Retrive LoanNo")
            {
                ApplicationArea = All;

                trigger OnAction();
                var
                    Loan: Record "Loan Table";
                begin
                    Loan.Reset();
                    Loan.SetFilter("Loan Ammount", '>%1', 20000);
                    Loan.SetFilter("Loan Start Date", '<>%1', 0D);
                    If Loan.FindFirst() then
                        repeat
                            Message(Loan."Loan No");
                        until Loan.Next() = 0;
                end;
            }
        }
    }

    // trigger OnOpenPage()
    // var
    //     a: Page "Loan List";
    // begin
    //     rec.SetRange(posted, false);
    //     CurrPage.Update();
    // end;
}