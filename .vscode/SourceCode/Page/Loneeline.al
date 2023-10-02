page 50232 LoanLine
{
    PageType = ListPart;
    SourceTable = LoanLine;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Loan No."; Rec."Loan No.")
                {

                    ApplicationArea = All;

                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;

                }
                field("Payment Date"; Rec."Payment Date")
                {
                    ApplicationArea = All;


                }
                field("Payment Amount"; Rec."Payment Amount")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                        PaymentRecord: Record "Loan Table";
                    begin
                        PaymentRecord.Get(Rec."Loan No.");


                    end;

                }
            }
        }
    }
}