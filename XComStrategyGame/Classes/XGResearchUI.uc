class XGResearchUI extends XGScreenMgr
    config(GameData)
    notplaceable
    hidecategories(Navigation);

enum ELabView
{
    eLabView_MainMenu,
    eLabView_ChooseTech,
    eLabView_Archives,
    eLabView_Report,
    eLabView_CreditArchives,
    eLabView_GeneLab,
    eLabView_MAX
};

struct TLabHeader
{
    var array<TLabeledText> arrResources;
    var TLabeledText txtIntel;
    var TImage imgTech;
    var TText txtTitle;
    var TText txtProject;
    var TLabeledText txtETA;
    var bool bDrawTech;
    var float fProgress;

    structdefaultproperties
    {
        arrResources=none
        txtIntel=(StrValue="",strLabel="",iState=0,bNumber=false)
        imgTech=(iImage=0,strLabel="",iState=0,strPath="")
        txtTitle=(StrValue="",iState=0)
        txtProject=(StrValue="",iState=0)
        txtETA=(StrValue="",strLabel="",iState=0,bNumber=false)
        bDrawTech=false
        fProgress=0.0
    }
};

struct TLabMainMenu
{
    var TMenu mnuOptions;
    var array<int> arrViews;

    structdefaultproperties
    {
        mnuOptions=(strLabel="",arrOptions=none,bTakesNoInput=false)
        arrViews=none
    }
};

struct TLabsTechResult
{
    var TImage imgResult;
    var TText txtTitle;
    var TText txtType;
    var int iType;

    structdefaultproperties
    {
        imgResult=(iImage=0,strLabel="",iState=0,strPath="")
        txtTitle=(StrValue="",iState=0)
        txtType=(StrValue="",iState=0)
        iType=0
    }
};

struct TTechSummary
{
    var TImage imgItem;
    var TText txtTitle;
    var TText txtSummary;
    var TLabeledText txtProgress;
    var TText txtRequirementsLabel;
    var bool bCanAfford;
    var TCostSummary kCost;

    structdefaultproperties
    {
        imgItem=(iImage=0,strLabel="",iState=0,strPath="")
        txtTitle=(StrValue="",iState=0)
        txtSummary=(StrValue="",iState=0)
        txtProgress=(StrValue="",strLabel="",iState=0,bNumber=false)
        txtRequirementsLabel=(StrValue="",iState=0)
        bCanAfford=false
        kCost=(arrRequirements=none,strHelp="")
    }
};

struct TTechTable
{
    var TTableMenu mnuTechs;
    var array<TTechSummary> arrTechSummaries;
    var int iRecommendedTech;

    structdefaultproperties
    {
        mnuTechs=(arrCategories=none,kHeader=(arrStrings=none,arrStates=none),arrOptions=none,bTakesNoInput=false)
        arrTechSummaries=none
        iRecommendedTech=0
    }
};

struct TWatchtowerMenu
{
    var TMenu mnuOptions;

    structdefaultproperties
    {
        mnuOptions=(strLabel="",arrOptions=none,bTakesNoInput=false)
    }
};

struct TTableItemSummary
{
    var TText txtTitle;
    var TText txtSummary;
    var TImage imgOption;

    structdefaultproperties
    {
        txtTitle=(StrValue="",iState=0)
        txtSummary=(StrValue="",iState=0)
        imgOption=(iImage=0,strLabel="",iState=0,strPath="")
    }
};

struct TResearchReport
{
    var TText txtTitle;
    var TText txtTopSecret;
    var TText txtCodename;
    var TText txtMonth;
    var TText txtMonthNum;
    var TText txtYear;
    var TLabeledText txtSubject;
    var TImage imgProject;
    var TImage imgBG;
    var TText txtNotesLabel;
    var TText txtNotes;
    var TButtonText btxtInfo;
    var array<TText> txtResults;
    var XGGameData.EItemType EItemCard;
    var XGGameData.ECharacter eCharCard;

    structdefaultproperties
    {
        txtTitle=(StrValue="",iState=0)
        txtTopSecret=(StrValue="",iState=0)
        txtCodename=(StrValue="",iState=0)
        txtMonth=(StrValue="",iState=0)
        txtMonthNum=(StrValue="",iState=0)
        txtYear=(StrValue="",iState=0)
        txtSubject=(StrValue="",strLabel="",iState=0,bNumber=false)
        imgProject=(iImage=0,strLabel="",iState=0,strPath="")
        imgBG=(iImage=0,strLabel="",iState=0,strPath="")
        txtNotesLabel=(StrValue="",iState=0)
        txtNotes=(StrValue="",iState=0)
        btxtInfo=(StrValue="",iState=0,iButton=0)
        txtResults=none
        EItemCard=EItemType.eItem_NONE
        eCharCard=ECharacter.eChar_None
    }
};

struct TLabArchivesUI
{
    var TMenu mnuArchives;
    var array<XGGameData.ETechType> arrTechs;

    structdefaultproperties
    {
        mnuArchives=(strLabel="",arrOptions=none,bTakesNoInput=false)
        arrTechs=none
    }
};

var const localized string m_strProgressLabel;
var const localized string m_strCostLabel;
var const localized string m_strCurrentResearchTitle;
var const localized string m_strNoCurrentResearchTitle;
var const localized string m_strObjectivesTitle;
var const localized string m_strLabelChangeProject;
var const localized string m_strHelpChangeProject;
var const localized string m_strLabelNewProject;
var const localized string m_strHelpNewProject;
var const localized string m_strHelpNoProjects;
var const localized string m_strLabelResearchArchives;
var const localized string m_strHelpResearchArchives;
var const localized string m_strLabelPriority;
var const localized string m_strLabelResearchReport;
var const localized string m_strLabelTopSecret;
var const localized string m_strLabelCodeName;
var const localized string m_strLabelSubject;
var const localized string m_strLabelProjectNotes;
var const localized string m_strLabelTacticalSummary;
var const localized string m_strLabelCreditArchives;
var const localized string m_strHelpCreditArchives;
var const localized string m_strLabelGeneLab;
var const localized string m_strHelpGeneLab;
var const localized string m_strMouseConfirmBeginResearch;
var const localized string m_strFacilityBuildAvailable;
var const localized string m_strItemBuildAvailable;
var const localized string m_strGeneModAvailable;
var const localized string m_strFoundryBuildAvailable;
var const localized string m_strLabelArchives;
var const localized string m_strResearchCreditEarned;
var const localized string m_strResearchCreditApplies;
var const localized string m_strBonusMeld;
var const localized string m_strWeaponCapture;
var bool m_bViewingArchives;
var TLabHeader m_kHeader;
var TLabMainMenu m_kMainMenu;
var TTechTable m_kTechTable;
var TResearchReport m_kReport;
var TLabArchivesUI m_kArchives;
var XGGameData.ETechType m_eReportTech;

function Init(int iView){}
function UpdateView(){}
function OnMainMenuOption(int iOption){}
function OnLeaveLabs(){}
function bool OnTechTableOption(int iOption){}
function OnLeaveTechTable(){}

function UpdateHeader(){}
function UpdateMainMenu(){}
function UpdateTechTable(){}
function int SortTechs(TTech kTech1, TTech kTech2){}
simulated function bool IsDisabledForTutorial(TTech kTech){}
function TTableMenuOption BuildTechOption(TTech kTech, array<int> arrCategories, bool bPriority){}
function TTechSummary BuildTechSummary(TTech kTech){}
function OnLeaveReport(bool bJumpToChooseTech){}
function UpdateReport(){}
simulated function OnShowCard(){}
function OnChooseArchive(int iArchive){}
function OnLeaveArchives(){}
function UpdateArchives(){}
function UpdateCreditArchives(){}
function TTableMenuOption MakeCreditArchiveOption(TResearchCredit kCredit){}
function TTechSummary MakeCreditArchiveSummary(TResearchCredit kCredit){}
simulated function OnReceiveFocus(){}
simulated function OnLoseFocus(){}


DefaultProperties
{
}
