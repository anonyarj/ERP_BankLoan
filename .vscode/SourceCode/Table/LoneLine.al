table 50231 LoanLine
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Loan No."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Loan Table";

        }
        field(2; "Line No."; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(3; "Payment Date"; Date)
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                myInt: Integer;
                DateRec: Record "Loan Table";
            begin
                DateRec.Get("Loan No.");
                if not ((DateRec."Loan Start Date" >= "Payment Date") and (DateRec."Loan End Date" <= "Payment Date")) then begin
                    // Message('Date is Updated')
                    Error('The payment date should be between the start and end date of loan');
                end;
                // else begin
                //     Error('The payment date should be between the start and end date of loan');
                // end;



            end;
        }
        field(4; "Payment Amount"; Decimal)
        {
            DataClassification = CustomerContent;

        }
    }

    keys
    {
        key(Key1; "Loan No.", "Line No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}