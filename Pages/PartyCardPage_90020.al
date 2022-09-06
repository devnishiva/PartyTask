page 90020 PartyCardPage
{
    PageType = Card;
    //ApplicationArea = All;
    //UsageCategory = Lists;
    SourceTable = Party1;
    Caption = 'PartyCardPage';

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
                field(Country; Rec.Country)
                {
                    ApplicationArea = All;
                    Caption = 'Country';
                }
                field("Phone No"; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'Phone No';
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(PartyHeaderList)
            {
                ApplicationArea = All;
                Promoted = true;
                Image = Report;
                PromotedCategory = Report;
                RunObject = page PartyHeaderList;
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