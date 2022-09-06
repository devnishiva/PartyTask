page 90024 PartyHeader
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = PartyHeader;
    
    layout
    {
        area(Content)
        {
            group(General)
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
                field("Party Name"; Rec."Party Name")
                {
                    ApplicationArea = All;
                    Caption = 'Party Name';
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
                    Caption = 'Party State';
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
                    Caption= 'Location Code';
                }
            }
                part(PartyLine; SubFormPage)
                {
                    SubPageLink = "Party No." = field("Party No."),"Document No."=field("No.");

                }

            
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(PartyCardPage)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Report;
                RunObject = page PartyCardPage;
                Image = Report;
                RunPageMode = View;
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}