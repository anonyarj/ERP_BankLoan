page 50233 "Posted Loan List"
{
    PageType = List;
    InsertAllowed = false;
    ModifyAllowed = false;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Posted Loan Table";
    CardPageId = "Posted Loan card";
    //SourceTableView = where(Posted = const(true));
    Editable = false;

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
                    ShowMandatory = true;


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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

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