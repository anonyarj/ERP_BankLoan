table 50233 "Posted Loan Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Loan No"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Description"; Text[50])
        {
            DataClassification = ToBeClassified;
            // trigger OnValidate()
            // var
            //     myInt: Integer;
            // begin
            //     TestField(Description);
            // end;
        }
        field(3; "Loan Ammount"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Loan Start Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Loan End Date"; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(6; "Bank Account"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Bank Account";
        }
        field(7; "Bank Name"; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Bank Account".Name where("No." = field("Bank Account")));
        }
        field(8; "Paid Amount"; Decimal)
        {

            FieldClass = FlowField;
            CalcFormula = sum(LoanLine."Payment Amount" where("Loan No." = field("Loan No")));
            Editable = false;

        }
        field(9; "Posted"; Boolean)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }

    }


    keys
    {
        key(Key1; "Loan No")
        {
            Clustered = true;
        }
    }

    // var
    //     myInt: Integer;
    //     "No. Series": Code[20];

    // trigger OnInsert()
    // var
    //     SalesStp: Record "Sales & Receivables Setup";
    //     SeriesMgmt: Codeunit NoSeriesManagement;

    // begin
    //     if "Loan No" = '' then begin
    //         SalesStp.Get();
    //         SeriesMgmt.InitSeries(SalesStp."Loan No.", SalesStp."Loan No.", 0D, "Loan No", "No. Series");
    //     end;


    // end;

    trigger OnModify()
    begin

    end;

    trigger OnInsert()
    var
        myInt: Integer;
    begin
        TestField(Description);
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}