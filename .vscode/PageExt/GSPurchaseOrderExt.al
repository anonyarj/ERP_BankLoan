pageextension 50237 MyExtension extends "Purchase Order"
{
    layout
    {
        addafter(Status)
        {
            field("Transfer ID"; Rec."Transfer ID")
            {
                ApplicationArea = All;


            }
            // Add changes to page layout here
        }


    }

}