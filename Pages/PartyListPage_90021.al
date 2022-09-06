page 90021 PartyListPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'PartyListPage';
    CardPageId = PartyCardPage;
    SourceTable = Party1;
    
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'No.'; 
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    Caption = 'City';
                }
                field(State; Rec.State)
                {
                    ApplicationArea = All;
                    Caption = 'State';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'Phone No.';
                    ExtendedDatatype = PhoneNo;
                }
                field("Total Party Amount"; Rec."Total Party Amount")
                {
                    ApplicationArea = All;
                    Caption = 'Total Party Amount';
                }
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