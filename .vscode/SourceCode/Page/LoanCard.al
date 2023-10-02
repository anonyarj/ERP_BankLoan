page 50230 "Loan Card"
{
    PageType = Card;
    SourceTable = "Loan Table";

    layout
    {
        area(Content)
        {
            group(GroupName)
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
            part(Lines; LoanLine)
            {
                ApplicationArea = All;
                SubPageLink = "Loan No." = field("Loan No");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}