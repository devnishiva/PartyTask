page 90023 PartyHeaderList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = PartyHeader;
    Caption = 'PartyHeaderList';
    RefreshOnActivate = true;
    CardPageId = PartyHeader;
    
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
                field("Party No."; Rec."Party No.")
                {
                    ApplicationArea = All;
                    Caption = 'Party No.';
                }
                field("Party Address"; Rec."Party Address")
                {
                    ApplicationArea = All;
                    Caption = 'Party Address';
                }
                field("Party City"; Rec."Party City")
                {
                    ApplicationArea = All;
                    Caption = 'Party City';
                }
                field("Party State"; Rec."Party State")
                {
                    ApplicationArea = All;
                    Caption ='Party State';
                }
                field("Party Country"; Rec."Party Country")
                {
                    ApplicationArea = All;
                    Caption = 'Party Country';
                }
                field("Party Phone No."; Rec."Party Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'Party Phone No.';
                    ExtendedDatatype = PhoneNo;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    Caption = 'Location Code';
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