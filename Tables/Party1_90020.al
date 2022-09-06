table 90020 Party1
{
    DataClassification = CustomerContent;
    Caption = 'Party1';
    LookupPageId = PartyListPage;
    DrillDownPageId =PartyListPage;
    
    fields
    {
        field(1;"No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';  
        }
        field(2; Name; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Name';
        }
        field(3; Address; Text[150])
        {
            DataClassification = CustomerContent;
            Caption = 'Address';
        }
        field(4; City; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'City';
        }
        field(5; State; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'State';
        }
        field(6; Country; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Country';
            TableRelation = "Country/Region";
        }
        field(7; "Phone No."; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Phone No.';
            ExtendedDatatype = PhoneNo;
        }
        field(8; "Total Party Amount"; Decimal)
        {
            //DataClassification = CustomerContent;
            Caption = 'Total Party Amount';
            FieldClass = FlowField;
            CalcFormula = sum(PartyLine.Amount where("Party No."=field("No.")));
        }
    }
    keys
    {
        key(Pk; "No.")
        {
            Clustered = true;
        }
        key(Key1; Name)
        {
            
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        Message('This Record Has been Changed');
    end;
    
    trigger OnDelete()
    begin
        Message('Do You Want Delete This Record');
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}