unit txRecords;

interface

uses
  txMeta;

  // RECORD HANDLING METHODS
  function AddRecord(_id: Cardinal; sig: string; _res: PCardinal): WordBool; cdecl; external 'XEditLib.dll';
  function GetRecords(_id: Cardinal; _res: PCardinal; len: Integer): WordBool; cdecl; external 'XEditLib.dll';
  function RecordsBySignature(_id: Cardinal; sig: string; _res: PCardinalArray): WordBool; cdecl; external 'XEditLib.dll';
  function RecordByIndex(_id: Cardinal; index: Integer; _res: PCardinal): WordBool; cdecl; external 'XEditLib.dll';
  function RecordByFormID(_id, formID: Cardinal; _res: PCardinal): WordBool; cdecl; external 'XEditLib.dll';
  function RecordByEditorID(_id: Cardinal; edid: string; _res: PCardinal): WordBool; cdecl; external 'XEditLib.dll';
  function RecordByName(_id: Cardinal; full: string; _res: PCardinal): WordBool; cdecl; external 'XEditLib.dll';
  function OverrideCount(_id: Cardinal; count: PInteger): WordBool; cdecl; external 'XEditLib.dll';
  function OverrideByIndex(_id: Cardinal; index: Integer; _res: PCardinal): WordBool; cdecl; external 'XEditLib.dll';
  function GetFormID(_id: Cardinal; formID: PCardinal): WordBool; cdecl; external 'XEditLib.dll';
  function SetFormID(_id: Cardinal; formID: Cardinal): WordBool; cdecl; external 'XEditLib.dll';

  // PUBLIC TESTING INTERFACE
  procedure BuildRecordHandlingTests;

implementation

procedure BuildRecordHandlingTests;
begin

end;

end.
