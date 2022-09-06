table 90021 PartyHeader
{
    DataClassification = CustomerContent;
    Caption = 'PartyHeader';
    
    fields
    {
        field(1;"No."; Code[20])
        {
            DataClassification =CustomerContent;
            Caption = 'No.';
        }
        field(2; "Party No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Party No.';
            TableRelation = Party1;
            trigger OnValidate()
            begin
                IF xRec."Party No." <> Rec."Party No." THEN BEGIN 
                PartyTem.RESET();
                IF PartyTem.GET("Party No.") THEN BEGIN   
                "Party Name" := PartyTem.Name;
                "Party Address" := PartyTem.Address;
                "Party City" := PartyTem.City;
                "Party State" := PartyTem.State;
                "Party Country" := PartyTem.Country;
                "Party Phone No." := PartyTem."Phone No.";
                END;
                END;
            end;
        }
        field(3; "Party Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Party Name';
            Editable = false;
        }
        field(4; "Party Address"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Party Address';
            Editable =false;
        }
        field(5; "Party City"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Party City';
            Editable = false;
        }
        field(6; "Party State"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Party State';
            Editable = false;
        }
        field(7; "Party Country"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Party Country';
            Editable = false;
        }
        field(8; "Party Phone No."; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Party Phone No.';
            ExtendedDatatype = PhoneNo;
            Editable = false;
        }
        field(9; "Location Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Location Code';
            TableRelation = Location;
        }
    }
    
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    
    var
        myInt: Integer;
        PartyTem :Record Party1;
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