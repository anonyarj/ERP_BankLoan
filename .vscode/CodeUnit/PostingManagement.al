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
        LL: Record LoanLine;
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


    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Sell-to Customer Name', false, false)]
    local procedure OnAfterValidateEvent_SelltoCustomerName(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)
    var
        Customer: Record Customer;
    begin
        Customer.Reset();
        Customer.SetRange("No.", rec."Sell-to Customer No.");
        if Customer.FindFirst() then begin
            rec."External Document Id" := Customer."External Document Id";
            rec.Modify();
        end;
    end;


    // [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnBeforeValidateSellToCustomerName', '', false, false)]
    // local procedure OnBeforeValidateSellToCustomerName(var Customer: Record Customer; var IsHandled: Boolean; var SalesHeader: Record "Sales Header")
    // begin
    //     SalesHeader."External Document Id" := Customer."External Document Id";
    //     SalesHeader.Modify();
    // end;

    [EventSubscriber(ObjectType::Table, Database::"Transfer Receipt Header", 'OnAfterCopyFromTransferHeader', '', false, false)]
    local procedure Onaftercopyfromtransferheader(var TransferReceiptHeader: Record "Transfer Receipt Header"; TransferHeader: Record "Transfer Header")
    begin

        TransferReceiptHeader."Transfer ID" := TransferHeader."Transfer ID";

    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnBeforeCopyFromItem', '', false, false)]
    local procedure MyProcedure(Item: Record Item; var IsHandled: Boolean; var SalesLine: Record "Sales Line")
    begin
        SalesLine."Partner ID" := Item."Vendor Item No.";

    end;


}