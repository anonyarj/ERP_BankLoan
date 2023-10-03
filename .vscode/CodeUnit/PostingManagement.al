codeunit 50230 "Posting Managements"
{
    trigger OnRun()
    begin

    end;

    procedure TransferLoanDetalis(Rec: Record "Loan Table")
    var
        PostedLoanHeader: Record "Posted Loan Table";
        PostedLoanLine: Record "Posted Loan Line";
        ConfirmMassage: Label 'Do you want to Post it?';
    begin
        if Confirm(ConfirmMassage, true) then begin

            PostedLoanHeader.Init();
            PostedLoanHeader.TransferFields(Rec);
            PostedLoanHeader.Insert();
            // Rec.Delete();

            //Posted for Loan Line 


            LL.Reset();

            LL.SetRange("Loan No.", Rec."Loan No");

            if LL.FindSet() then begin
                repeat
                    PostedLoanLine.Init();
                    PostedLoanLine.TransferFields(LL);
                    PostedLoanLine.Insert();
                    ll.Delete();
                until LL.Next() = 0;
            end;
            rec.Delete();

        end;

    end;

    var
        LL: Record LoanLine;

}