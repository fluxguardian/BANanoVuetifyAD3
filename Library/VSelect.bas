﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
'Created with BANano Custom View Creator 1.00 by TheMash
'https://github.com/Mashiane/BANano-Custom-View-Creator
'Custom BANano View class

#Event: Blur (e As BANanoEvent)
#Event: Change (item As Object)
#Event: Click (e As BANanoEvent)
#Event: ClickAppend (e As BANanoEvent)
#Event: ClickAppendOuter (e As BANanoEvent)
#Event: ClickClear (e As BANanoEvent)
#Event: ClickPrepend (e As BANanoEvent)
#Event: ClickPrependInner (e As BANanoEvent)
#Event: Focus (e As BANanoEvent)
#Event: Input (item As Object)
#Event: KeyDown (e As BANanoEvent)
#Event: MouseDown (e As BANanoEvent)
#Event: MouseUp (e As BANanoEvent)
#Event: UpdateError (B As Boolean)
#Event: UpdateListIndex (n As Int)
#Event: UpdateSearchInput (s As String)

#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Select1, Description: Label
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: select1, Description: VModel
#DesignerProperty: Key: ItemText, DisplayName: ItemText, FieldType: String, DefaultValue: text, Description: ItemText
#DesignerProperty: Key: ItemValue, DisplayName: ItemValue, FieldType: String, DefaultValue: value, Description: ItemValue
#DesignerProperty: Key: ItemDisabled, DisplayName: ItemDisabled, FieldType: String, DefaultValue: disabled, Description: ItemDisabled
#DesignerProperty: Key: Items, DisplayName: Items, FieldType: String, DefaultValue: items1, Description: Items
#DesignerProperty: Key: AppendIcon, DisplayName: AppendIcon, FieldType: String, DefaultValue: , Description: AppendIcon
#DesignerProperty: Key: AppendOuterIcon, DisplayName: AppendOuterIcon, FieldType: String, DefaultValue: , Description: AppendOuterIcon
#DesignerProperty: Key: Attach, DisplayName: Attach, FieldType: String, DefaultValue: , Description: Attach
#DesignerProperty: Key: Autofocus, DisplayName: Autofocus, FieldType: Boolean, DefaultValue: False, Description: Autofocus
#DesignerProperty: Key: BackgroundColor, DisplayName: BackgroundColor, FieldType: String, DefaultValue: , Description: BackgroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BackgroundColorIntensity, DisplayName: Backgroundcolorintensity, FieldType: String, DefaultValue: , Description: Backgroundcolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: CacheItems, DisplayName: CacheItems, FieldType: Boolean, DefaultValue: False, Description: CacheItems
#DesignerProperty: Key: Chips, DisplayName: Chips, FieldType: Boolean, DefaultValue: False, Description: Chips
#DesignerProperty: Key: ClearIcon, DisplayName: ClearIcon, FieldType: String, DefaultValue: , Description: ClearIcon
#DesignerProperty: Key: Clearable, DisplayName: Clearable, FieldType: Boolean, DefaultValue: False, Description: Clearable
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Counter, DisplayName: Counter, FieldType: String, DefaultValue: , Description: Counter
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: DeletableChips, DisplayName: DeletableChips, FieldType: Boolean, DefaultValue: False, Description: DeletableChips
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False, Description: Dense
#DesignerProperty: Key: DisableLookup, DisplayName: DisableLookup, FieldType: Boolean, DefaultValue: False, Description: DisableLookup
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: String, DefaultValue: , Description: Disabled
#DesignerProperty: Key: Eager, DisplayName: Eager, FieldType: Boolean, DefaultValue: False, Description: Eager
#DesignerProperty: Key: Error, DisplayName: Error, FieldType: String, DefaultValue: , Description: Error
#DesignerProperty: Key: ErrorCount, DisplayName: ErrorCount, FieldType: String, DefaultValue: , Description: ErrorCount
#DesignerProperty: Key: ErrorMessages, DisplayName: ErrorMessages, FieldType: String, DefaultValue: , Description: ErrorMessages
#DesignerProperty: Key: Filled, DisplayName: Filled, FieldType: Boolean, DefaultValue: False, Description: Filled
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: FullWidth, DisplayName: FullWidth, FieldType: Boolean, DefaultValue: False, Description: FullWidth
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: HideDetails, DisplayName: HideDetails, FieldType: Boolean, DefaultValue: False, Description: HideDetails
#DesignerProperty: Key: HideSelected, DisplayName: HideSelected, FieldType: Boolean, DefaultValue: False, Description: HideSelected
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: InputType, DisplayName: InputType, FieldType: String, DefaultValue: text, Description: InputType
#DesignerProperty: Key: ItemColor, DisplayName: ItemColor, FieldType: String, DefaultValue: , Description: ItemColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ItemColorIntensity, DisplayName: Itemcolorintensity, FieldType: String, DefaultValue: , Description: Itemcolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: LoaderHeight, DisplayName: LoaderHeight, FieldType: String, DefaultValue: , Description: LoaderHeight
#DesignerProperty: Key: Loading, DisplayName: Loading, FieldType: String, DefaultValue: , Description: Loading
#DesignerProperty: Key: MenuProps, DisplayName: MenuProps, FieldType: String, DefaultValue: , Description: MenuProps
#DesignerProperty: Key: Messages, DisplayName: Messages, FieldType: String, DefaultValue: , Description: Messages
#DesignerProperty: Key: Multiple, DisplayName: Multiple, FieldType: Boolean, DefaultValue: False, Description: Multiple
#DesignerProperty: Key: NoDataText, DisplayName: NoDataText, FieldType: String, DefaultValue: , Description: NoDataText
#DesignerProperty: Key: OpenOnClear, DisplayName: OpenOnClear, FieldType: Boolean, DefaultValue: False, Description: OpenOnClear
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False, Description: Outlined
#DesignerProperty: Key: PersistentHint, DisplayName: PersistentHint, FieldType: Boolean, DefaultValue: False, Description: PersistentHint
#DesignerProperty: Key: PersistentPlaceholder, DisplayName: PersistentPlaceholder, FieldType: Boolean, DefaultValue: False, Description: PersistentPlaceholder
#DesignerProperty: Key: Placeholder, DisplayName: Placeholder, FieldType: String, DefaultValue: , Description: Placeholder
#DesignerProperty: Key: Prefix, DisplayName: Prefix, FieldType: String, DefaultValue: , Description: Prefix
#DesignerProperty: Key: PrependIcon, DisplayName: PrependIcon, FieldType: String, DefaultValue: , Description: PrependIcon
#DesignerProperty: Key: PrependInnerIcon, DisplayName: PrependInnerIcon, FieldType: String, DefaultValue: , Description: PrependInnerIcon
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: String, DefaultValue: , Description: Readonly
#DesignerProperty: Key: ReturnObject, DisplayName: ReturnObject, FieldType: Boolean, DefaultValue: False, Description: ReturnObject
#DesignerProperty: Key: Reverse, DisplayName: Reverse, FieldType: Boolean, DefaultValue: False, Description: Reverse
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: Boolean, DefaultValue: False, Description: Rounded, 
#DesignerProperty: Key: Rules, DisplayName: Rules, FieldType: String, DefaultValue: , Description: Rules
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: False, Description: Shaped
#DesignerProperty: Key: SingleLine, DisplayName: SingleLine, FieldType: Boolean, DefaultValue: False, Description: SingleLine
#DesignerProperty: Key: SmallChips, DisplayName: SmallChips, FieldType: Boolean, DefaultValue: False, Description: SmallChips
#DesignerProperty: Key: Solo, DisplayName: Solo, FieldType: Boolean, DefaultValue: False, Description: Solo
#DesignerProperty: Key: SoloInverted, DisplayName: SoloInverted, FieldType: Boolean, DefaultValue: False, Description: SoloInverted
#DesignerProperty: Key: Success, DisplayName: Success, FieldType: String, DefaultValue: , Description: Success
#DesignerProperty: Key: SuccessMessages, DisplayName: SuccessMessages, FieldType: String, DefaultValue: , Description: SuccessMessages
#DesignerProperty: Key: Suffix, DisplayName: Suffix, FieldType: String, DefaultValue: , Description: Suffix
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: VShow, DisplayName: VShow, FieldType: String, DefaultValue: , Description: VShow
#DesignerProperty: Key: ValidateOnBlur, DisplayName: ValidateOnBlur, FieldType: Boolean, DefaultValue: False, Description: ValidateOnBlur
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag. 
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use = 
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =

Sub Class_Globals 
    Private BANano As BANano 'ignore 
	Private mName As String 'ignore 
	Private mEventName As String 'ignore 
	Private mCallBack As Object 'ignore 
	Private mTarget As BANanoElement 'ignore 
	Private mElement As BANanoElement 'ignore 
	Private mClasses As String = "" 
	Private mStyles As String = "" 
	Private mAttributes As String = "" 
	Public VElement As VueElement 
	Private sAppendIcon As String
Private sAppendOuterIcon As String
Private sAttach As String
Private bAutofocus As Boolean
Private sBackgroundColor As String
Private sBackgroundColorIntensity As String
Private bCacheItems As Boolean
Private bChips As Boolean
Private sClearIcon As String
Private bClearable As Boolean
Private sColor As String
Private sColorIntensity As String
Private sCounter As String
Private bDark As Boolean
Private bDeletableChips As Boolean
Private bDense As Boolean
Private bDisableLookup As Boolean
Private sDisabled As String
Private bEager As Boolean
Private sError As String
Private sErrorCount As String
Private sErrorMessages As String
Private bFilled As Boolean
Private bFlat As Boolean
Private bFullWidth As Boolean
Private sHeight As String
Private bHideDetails As Boolean
Private bHideSelected As Boolean
Private sHint As String
Private sInputType As String
Private sItemColor As String
Private sItemColorIntensity As String
Private sItemDisabled As String
Private sItemText As String
Private sItemValue As String
Private sItems As String
Private sKey As String
Private sLabel As String
Private bLight As Boolean
Private sLoaderHeight As String
Private sLoading As String
Private sMenuProps As String
Private sMessages As String
Private bMultiple As Boolean
Private sNoDataText As String
Private bOpenOnClear As Boolean
Private bOutlined As Boolean
Private bPersistentHint As Boolean
Private bPersistentPlaceholder As Boolean
Private sPlaceholder As String
Private sPrefix As String
Private sPrependIcon As String
Private sPrependInnerIcon As String
Private sReadonly As String
Private bReturnObject As Boolean
Private bReverse As Boolean
Private bRounded As Boolean
Private sRules As String
Private bShaped As Boolean
Private bSingleLine As Boolean
Private bSmallChips As Boolean
Private bSolo As Boolean
Private bSoloInverted As Boolean
Private sSuccess As String
Private sSuccessMessages As String
Private sSuffix As String
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sVShow As String
Private bValidateOnBlur As Boolean
 Private xitems As List
 Private xReturnObject As String
	End Sub

Sub Initialize (CallBack As Object, Name As String, EventName As String) 
	mName = Name.tolowercase 
	mEventName = EventName.ToLowerCase 
	mCallBack = CallBack	 
	mName = mName.Replace("#","") 
	mEventName = mEventName.Replace("#","") 
	If mName <> "" Then 
		Dim fKey As String = $"#${mName}"$ 
		If BANano.Exists(fKey) Then  
			mElement = BANano.GetElement(fKey) 
		End If 
	End If 
	xitems.Initialize 
	xReturnObject = $"${mName}returnobject"$
	End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.Get("Classes") 
		mStyles = Props.Get("Styles") 
		mAttributes = Props.Get("Attributes") 
		sAppendIcon = Props.Get("AppendIcon")
sAppendOuterIcon = Props.Get("AppendOuterIcon")
sAttach = Props.Get("Attach")
bAutofocus = Props.Get("Autofocus")
sBackgroundColor = Props.Get("BackgroundColor")
sBackgroundColorIntensity = Props.Get("BackgroundColorIntensity")
bCacheItems = Props.Get("CacheItems")
bChips = Props.Get("Chips")
sClearIcon = Props.Get("ClearIcon")
bClearable = Props.Get("Clearable")
sColor = Props.Get("Color")
sColorIntensity = Props.Get("ColorIntensity")
sCounter = Props.Get("Counter")
bDark = Props.Get("Dark")
bDeletableChips = Props.Get("DeletableChips")
bDense = Props.Get("Dense")
bDisableLookup = Props.Get("DisableLookup")
sDisabled = Props.Get("Disabled")
bEager = Props.Get("Eager")
sError = Props.Get("Error")
sErrorCount = Props.Get("ErrorCount")
sErrorMessages = Props.Get("ErrorMessages")
bFilled = Props.Get("Filled")
bFlat = Props.Get("Flat")
bFullWidth = Props.Get("FullWidth")
sHeight = Props.Get("Height")
bHideDetails = Props.Get("HideDetails")
bHideSelected = Props.Get("HideSelected")
sHint = Props.Get("Hint")
sInputType = Props.Get("InputType")
sItemColor = Props.Get("ItemColor")
sItemColorIntensity = Props.Get("ItemColorIntensity")
sItemDisabled = Props.Get("ItemDisabled")
sItemText = Props.Get("ItemText")
sItemValue = Props.Get("ItemValue")
sItems = Props.Get("Items")
sKey = Props.Get("Key")
sLabel = Props.Get("Label")
bLight = Props.Get("Light")
sLoaderHeight = Props.Get("LoaderHeight")
sLoading = Props.Get("Loading")
sMenuProps = Props.Get("MenuProps")
sMessages = Props.Get("Messages")
bMultiple = Props.Get("Multiple")
sNoDataText = Props.Get("NoDataText")
bOpenOnClear = Props.Get("OpenOnClear")
bOutlined = Props.Get("Outlined")
bPersistentHint = Props.Get("PersistentHint")
bPersistentPlaceholder = Props.Get("PersistentPlaceholder")
sPlaceholder = Props.Get("Placeholder")
sPrefix = Props.Get("Prefix")
sPrependIcon = Props.Get("PrependIcon")
sPrependInnerIcon = Props.Get("PrependInnerIcon")
sReadonly = Props.Get("Readonly")
bReturnObject = Props.Get("ReturnObject")
bReverse = Props.Get("Reverse")
bRounded = Props.Get("Rounded")
sRules = Props.Get("Rules")
bShaped = Props.Get("Shaped")
bSingleLine = Props.Get("SingleLine")
bSmallChips = Props.Get("SmallChips")
bSolo = Props.Get("Solo")
bSoloInverted = Props.Get("SoloInverted")
sSuccess = Props.Get("Success")
sSuccessMessages = Props.Get("SuccessMessages")
sSuffix = Props.Get("Suffix")
sVBind = Props.Get("VBind")
sVFor = Props.Get("VFor")
sVIf = Props.Get("VIf")
sVModel = Props.Get("VModel")
sVOn = Props.Get("VOn")
sVShow = Props.Get("VShow")
bValidateOnBlur = Props.Get("ValidateOnBlur")
 
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-select id="${mName}"></v-select>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-select" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr("append-icon", sAppendIcon)
VElement.AddAttr("append-outer-icon", sAppendOuterIcon)
VElement.AddAttr("attach", sAttach)
VElement.AddAttr(":autofocus", bAutofocus)
VElement.AddAttr("background-color", VElement.BuildColor(sBackgroundColor, sBackgroundColorIntensity))
VElement.AddAttr(":cache-items", bCacheItems)
VElement.AddAttr(":chips", bChips)
VElement.AddAttr("clear-icon", sClearIcon)
VElement.AddAttr(":clearable", bClearable)
VElement.AddAttr("color", VElement.BuildColor(sColor, sColorIntensity))
VElement.AddAttr("counter", sCounter)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr(":deletable-chips", bDeletableChips)
VElement.AddAttr(":dense", bDense)
VElement.AddAttr(":disable-lookup", bDisableLookup)
VElement.AddAttr(":disabled", sDisabled)
VElement.SetData(sDisabled, False)

VElement.AddAttr(":eager", bEager)
VElement.AddAttr(":error", sError)
VElement.SetData(sError, False)

VElement.AddAttr("error-count", sErrorCount)
VElement.AddAttr(":error-messages", sErrorMessages)
VElement.SetData(sErrorMessages, VElement.newlist)

VElement.AddAttr(":filled", bFilled)
VElement.AddAttr(":flat", bFlat)
VElement.AddAttr(":full-width", bFullWidth)
VElement.AddAttr("height", sHeight)
VElement.AddAttr(":hide-details", bHideDetails)
VElement.AddAttr(":hide-selected", bHideSelected)
VElement.AddAttr("hint", sHint)
VElement.AddAttr("type", sInputType)
VElement.AddAttr("item-color", VElement.BuildColor(sItemColor, sItemColorIntensity))
VElement.AddAttr("item-disabled", sItemDisabled)
VElement.AddAttr("item-text", sItemText)
VElement.AddAttr("item-value", sItemValue)
VElement.AddAttr(":items", sItems)
VElement.SetData(sItems, VElement.NewList)

VElement.AddAttr("key", sKey)
VElement.AddAttr("label", sLabel)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("loader-height", sLoaderHeight)
VElement.AddAttr(":loading", sLoading)
VElement.SetData(sLoading, False)

VElement.AddAttr(":menu-props", sMenuProps)
VElement.SetData(sMenuProps, VElement.NewMap)

VElement.AddAttr(":messages", sMessages)
VElement.SetData(sMessages, VElement.newList)

VElement.AddAttr(":multiple", bMultiple)
VElement.AddAttr(":no-data-text", sNoDataText)
VElement.SetData(sNoDataText, "")

VElement.AddAttr(":open-on-clear", bOpenOnClear)
VElement.AddAttr(":outlined", bOutlined)
VElement.AddAttr(":persistent-hint", bPersistentHint)
VElement.AddAttr(":persistent-placeholder", bPersistentPlaceholder)
VElement.AddAttr("placeholder", sPlaceholder)
VElement.AddAttr("prefix", sPrefix)
VElement.AddAttr("prepend-icon", sPrependIcon)
VElement.AddAttr("prepend-inner-icon", sPrependInnerIcon)
VElement.AddAttr(":readonly", sReadonly)
VElement.SetData(sReadonly, False)

VElement.AddAttr(":return-object", xReturnObject)
VElement.SetData(xReturnObject, bReturnObject)
VElement.AddAttr(":reverse", bReverse)
VElement.AddAttr(":rounded", bRounded)
VElement.AddAttr(":rules", sRules)
VElement.SetData(sRules, VElement.newList)

VElement.AddAttr(":shaped", bShaped)
VElement.AddAttr(":single-line", bSingleLine)
VElement.AddAttr(":small-chips", bSmallChips)
VElement.AddAttr(":solo", bSolo)
VElement.AddAttr(":solo-inverted", bSoloInverted)
VElement.AddAttr(":success", sSuccess)
VElement.SetData(sSuccess, False)

VElement.AddAttr(":success-messages", sSuccessMessages)
VElement.SetData(sSuccessMessages, VElement.NewList)

VElement.AddAttr("suffix", sSuffix)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
'
If BANano.IsNull(bMultiple) Or BANano.IsUndefined(bMultiple) Then
	bMultiple = False
End If
'
If bMultiple = False Then
	VElement.SetData(sVModel, Null)
Else
	VElement.SetData(sVModel, VElement.NewList)
End If

VElement.AddAttr("v-on", sVOn)
VElement.AddAttr(":v-show", sVShow)
VElement.SetData(sVShow, True)

VElement.AddAttr(":validate-on-blur", bValidateOnBlur)


VElement.BindAllEvents
End Sub


Sub UpdateReturnObject(VC As VueComponent, b As Boolean) 
	VC.SetData(xReturnObject, b)
End Sub


public Sub AddToParent(targetID As String) 
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase) 
	DesignerCreateView(mTarget, Null) 
End Sub

public Sub Remove() 
	mTarget.Empty 
	BANano.SetMeToNull 
End Sub

Sub AddClass(s As String) As VSelect 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VSelect 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VSelect 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VSelect 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VSelect 
	VC.SetData(sVIf, b) 
	VC.SetData(sVShow, b) 
	Return Me 
End Sub

'Update Disabled
Sub UpdateDisabled(VC As VueComponent, vDisabled As Object)
VC.SetData(sDisabled, vDisabled)
End Sub

'Update Error
Sub UpdateError(VC As VueComponent, vError As Object)
VC.SetData(sError, vError)
End Sub

'Update ErrorMessages
Sub UpdateErrorMessages(VC As VueComponent, vErrorMessages As Object)
VC.SetData(sErrorMessages, vErrorMessages)
End Sub

'Clear ErrorMessages
Sub ClearErrorMessages(VC As VueComponent)
VC.SetData(sErrorMessages, VC.NewList)
End Sub

'Update ItemColor
Sub UpdateItemColor(VC As VueComponent, vItemColor As Object)
VC.SetData(sItemColor, vItemColor)
End Sub

'refresh the select
Sub Refresh(VC As VueComponent)
	VC.SetData(sItems, xitems)
End Sub

'Update Items from another source
Sub UpdateItems(VC As VueComponent, vItems As Object)
VC.SetData(sItems, vItems)
End Sub

'Clear Items
Sub Clear(VC As VueComponent)
	xitems.Initialize 
VC.SetData(sItems, VC.NewList)
End Sub

'Update Loading
Sub UpdateLoading(VC As VueComponent, vLoading As Object)
VC.SetData(sLoading, vLoading)
End Sub

'Update MenuProps
Sub UpdateMenuProps(VC As VueComponent, vMenuProps As Object)
VC.SetData(sMenuProps, vMenuProps)
End Sub

'Update Messages
Sub UpdateMessages(VC As VueComponent, vMessages As Object)
VC.SetData(sMessages, vMessages)
End Sub

'Clear Messages
Sub ClearMessages(VC As VueComponent)
VC.SetData(sMessages, VC.NewList)
End Sub

'Update NoDataText
Sub UpdateNoDataText(VC As VueComponent, vNoDataText As Object)
VC.SetData(sNoDataText, vNoDataText)
End Sub

'Update Readonly
Sub UpdateReadonly(VC As VueComponent, vReadonly As Object)
VC.SetData(sReadonly, vReadonly)
End Sub

'set the item-text attribute
Sub setItemText(vItemText As String)
	sItemText = vItemText
	VElement.AddAttr("item-text", sItemText)
End Sub

'get the item-text attribute
Sub getItemText As String
	Return sItemText
End Sub

'get the item value attribute
Sub getItemValue As String
	Return sItemValue
End Sub

'set the item-value attribute
Sub setItemValue(vItemValue As String)
	sItemValue = vItemValue
	VElement.AddAttr("item-value", sItemValue)
End Sub

'get the item disabled attribute
Sub getItemDisabled As String
	Return sItemDisabled
End Sub

'get the items
Sub getItems As String
	Return sItems
End Sub

'set the item-disabled attribute
Sub setItemDisabled(vItemDisabled As String)
	sItemDisabled = vItemDisabled
	VElement.AddAttr("item-disabled", sItemDisabled)
End Sub

'set the items attribute
Sub setItems(vItems As String)
	sItems = vItems
	VElement.AddAttr(":item", sItems)
End Sub

'add a rule
'<code>
'Me.AddRule("methodName")
'Sub Rule(v As String) As Object	'ignoredeadcode
'If v = "" Then
'return "This is required!"
'Else
'Return True
'End If
'End Sub
'</code>
Sub AddRule(methodName As String)
	VElement.AddRule(methodName)
End Sub


'Clear Rules
Sub ClearRules(VC As VueComponent)
VC.SetData(sRules, VC.NewList)
End Sub

'Update Success
Sub UpdateSuccess(VC As VueComponent, vSuccess As Object)
VC.SetData(sSuccess, vSuccess)
End Sub

'Update SuccessMessages
Sub UpdateSuccessMessages(VC As VueComponent, vSuccessMessages As Object)
VC.SetData(sSuccessMessages, vSuccessMessages)
End Sub

'Clear SuccessMessages
Sub ClearSuccessMessages(VC As VueComponent)
VC.SetData(sSuccessMessages, VC.NewList)
End Sub

'Update VModel
Sub SetValue(VC As VueComponent, vVModel As Object)
VC.SetData(sVModel, vVModel)
End Sub

'get value
Sub GetValue(VC As VueComponent) As Object
	Dim res As Object = VC.GetData(sVModel)
	Return res
End Sub


Sub getID As String
	Return mName
End Sub

'convert a normal list to key value pairs
Sub UpdateItems1(VC As VueComponent, lst As List)
	Dim nl As List = BANanoShared.ListToDataSource(sItemValue, sItemText, lst)
	VC.SetData(sItems, nl)
End Sub

Sub getHere As String
	Return $"#${mName}"$
End Sub

'add item
Sub AddItem(value As String, text As String)
	Dim nm As Map = CreateMap()
	nm.Put(sItemValue, value)
	nm.Put(sItemText, value)
	xitems.Add(nm)
End Sub

'add object
Sub AddObject(nm As Map)
	xitems.Add(nm)
End Sub


Sub getVModel As String
	Return sVModel
End Sub