library XEditLib;

uses
  xeMessages in 'xeMessages.pas',
  xeConfiguration in 'xeConfiguration.pas',
  xeMeta in 'xeMeta.pas',
  xeSetup in 'xeSetup.pas',
  xeFiles in 'xeFiles.pas',
  xeMasters in 'xeMasters.pas',
  xeFileValues in 'xeFileValues.pas',
  xeElements in 'xeElements.pas',
  xeElementValues in 'xeElementValues.pas',
  xeErrors in 'xeErrors.pas',
  xeRecords in 'xeRecords.pas',
  xeRecordValues in 'xeRecordValues.pas',
  xeGroups in 'xeGroups.pas',
  xeSerialization in 'xeSerialization.pas',
  mteHelpers in '..\lib\mte\mteHelpers.pas',
  CRC32 in '..\lib\mte\CRC32.pas',
  RttiIni in '..\lib\mte\RttiIni.pas',
  wbImplementation in '..\lib\xedit\wbImplementation.pas',
  wbInterface in '..\lib\xedit\wbInterface.pas',
  wbBSA in '..\lib\xedit\wbBSA.pas',
  wbSort in '..\lib\xedit\wbSort.pas',
  wbDefinitionsFNV in '..\lib\xedit\wbDefinitionsFNV.pas',
  wbDefinitionsFO3 in '..\lib\xedit\wbDefinitionsFO3.pas',
  wbDefinitionsFO4 in '..\lib\xedit\wbDefinitionsFO4.pas',
  wbDefinitionsTES3 in '..\lib\xedit\wbDefinitionsTES3.pas',
  wbDefinitionsTES4 in '..\lib\xedit\wbDefinitionsTES4.pas',
  wbDefinitionsTES5 in '..\lib\xedit\wbDefinitionsTES5.pas',
  wbHelpers in '..\lib\xedit\wbHelpers.pas',
  wbLocalization in '..\lib\xedit\wbLocalization.pas',
  wbStreams in '..\lib\xedit\wbStreams.pas',
  superobject in '..\lib\superobject\superobject.pas';

{$R *.RES}
{$MAXSTACKSIZE 2097152}

const
  IMAGE_FILE_LARGE_ADDRESS_AWARE = $0020;

exports
  // META METHODS
  Initialize, Finalize, GetBuffer, FlushBuffer, GetExceptionMessage, GetGlobal,
  Release, ResetStore,
  // LOADING AND SET UP METHODS
  SetGameMode, GetLoadOrder, LoadPlugins, GetLoaderDone, GetGamePath,
  // FILE HANDLING METHODS
  NewFile, FileByIndex, FileByLoadOrder, FileByName, FileByAuthor, SaveFile,
  // MASTER HANDLING METHODS
  CleanMasters, SortMasters, AddMaster, GetMaster, GetMasters, GetRequiredBy,
  // FILE VALUE METHODS
  GetFileHeader, GetNextObjectId, SetNextObjectID, GetFileName, GetAuthor,
  SetAuthor, GetDescription, SetDescription, OverrideRecordCount, GetIsESM,
  SetIsESM,
  // ELEMENT HANDLING METHODS
  GetElement, GetElements, GetElementFile, GetContainer, NewElement,
  RemoveElement, ElementExists, ElementCount, LinksTo, ElementAssigned, Equals,
  CopyElement, IsMaster, IsInjected, IsOverride, IsWinningOverride,
  // ERROR CHECKING METHODS
  CheckForErrors, GetErrorThreadDone, GetErrors, GetErrorString,
  // SERIALIZATION METHODS
  ElementToJson,
  // ELEMENT VALUE METHODS
  Name, Path, EditorID, Signature, FullName, SortKey, ElementType, DefType,
  GetValue, SetValue, GetIntValue, SetIntValue, GetUIntValue, SetUIntValue,
  GetFloatValue, SetFloatValue, GetLinksTo, SetFlag, GetFlag, ToggleFlag,
  GetEnabledFlags,
  // GROUP HANDLING METHODS
  HasGroup, AddGroup, GetGroupSignatures, GetChildGroup, GroupSignatureFromName,
  GroupNameFromSignature, GetGroupSignatureNameMap,
  // RECORD HANDLING METHODS
  AddRecord, GetRecords, RecordsBySignature, RecordByIndex, RecordByFormID,
  RecordByEditorID, RecordByName, OverrideCount, OverrideByIndex, GetFormID,
  SetFormID, ExchangeReferences, GetReferences;
  // RECORD VALUE METHODS

begin
  IsMultiThread := True;
end.


