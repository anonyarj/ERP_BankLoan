page 50235 "Posted Loan Card"
{
    PageType = Card;
    SourceTable = "Posted Loan Table";
    Editable = false;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Loan No"; Rec."Loan No")
                {
                    Editable = not Rec.Posted;
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    Editable = not Rec.Posted;
                    ApplicationArea = All;

                }
                field("Loan Ammount"; Rec."Loan Ammount")
                {
                    Editable = not Rec.Posted;
                    ApplicationArea = All;


                }
                field("Loan Start Date"; Rec."Loan Start Date")
                {
                    Editable = not Rec.Posted;
                    ApplicationArea = All;

                }
                field("Loan End Date"; Rec."Loan End Date")
                {
                    Editable = not Rec.Posted;
                    ApplicationArea = All;

                }
                field("Bank Account"; Rec."Bank Account")
                {
                    Editable = not Rec.Posted;
                    ApplicationArea = All;

                }
                field("Bank Name"; Rec."Bank Name")
                {
                    Editable = not Rec.Posted;
                    ApplicationArea = All;

                }
                field("Paid Amount"; Rec."Paid Amount")
                {
                    Editable = not Rec.Posted;
                    ApplicationArea = All;
                    // trigger OnValidate()
                    // var
                    //     myInt: Integer;
                    // begin
                    //     if Rec."Paid Amount" <= Rec."Loan Ammount" then begin
                    //         Message('Paid amount is added');
                    //     end
                    //     else begin
                    //         Error('The paid amount should not be greater than Loan Amount');
                    //     end;

                    // end;

                }
                field(Posted; Rec.Posted)
                {
                    Editable = not Rec.Posted;
                    ApplicationArea = All;


                }


            }
            part(Lines; "Posted Loan Line")
            {
                Editable = not Rec.Posted;
                ApplicationArea = All;
                SubPageLink = "Loan No." = field("Loan No");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Clear Loan")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    if Rec."Loan Ammount" <= Rec."Paid Amount" then begin
                        rec.Posted := true;
                        Message('The Loan is Completely paid');
                        CurrPage.Update();
                    end
                    else begin
                        Error('The Loan is not paid');
                    end;


                end;
            }
        }
    }

    var
        myInt: Integer;
}