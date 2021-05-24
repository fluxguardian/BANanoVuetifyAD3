﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#DesignerProperty: Key: Avatar, DisplayName: Avatar, FieldType: Boolean, DefaultValue: false, Description: Avatar
#DesignerProperty: Key: Bordered, DisplayName: Bordered, FieldType: Boolean, DefaultValue: false, Description: Bordered
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue:  blue, Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Left, DisplayName: Left, FieldType: Boolean, DefaultValue: False, Description: Left
#DesignerProperty: Key: Bottom, DisplayName: Bottom, FieldType: Boolean, DefaultValue: False, Description: Bottom
#DesignerProperty: Key: Content, DisplayName: Content, FieldType: String, DefaultValue: badge1, Description: Content
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Dot, DisplayName: Dot, FieldType: Boolean, DefaultValue: false, Description: Dot
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: String, DefaultValue: , Description: Icon
#DesignerProperty: Key: Inline, DisplayName: Inline, FieldType: Boolean, DefaultValue: false, Description: Inline
#DesignerProperty: Key: Mode, DisplayName: Mode, FieldType: String, DefaultValue: , Description: Mode
#DesignerProperty: Key: OffsetX, DisplayName: OffsetX, FieldType: String, DefaultValue: , Description: OffsetX
#DesignerProperty: Key: OffsetY, DisplayName: OffsetY, FieldType: String, DefaultValue: , Description: OffsetY
#DesignerProperty: Key: Overlap, DisplayName: Overlap, FieldType: Boolean, DefaultValue: false, Description: Overlap
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: false, Description: Tile
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition
#DesignerProperty: Key: Value, DisplayName: Value/Visible, FieldType: String, DefaultValue: , Description: Value/Visible
#DesignerProperty: Key: VIf, DisplayName: V-If, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =

Sub Class_Globals
	Private BANano As BANano 'ignore
	Private bAvatar As Boolean
	Private bBordered As Boolean
	Private sColor As String
	Private sColorintensity As String
	Private sContent As String
	Private bDark As Boolean
	Private bDot As Boolean
	Private sIcon As String
	Private bInline As Boolean
	Private sMode As String
	Private sOffsetX As String
	Private sOffsetY As String
	Private bOverlap As Boolean
	Private bTile As Boolean
	Private sTransition As String
	Private sValue As String
	Private mName As String 'ignore
	Private mEventName As String 'ignore
	Private mCallBack As Object 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mElement As BANanoElement 'ignore
	Private mClasses As String = ""
	Private mStyles As String = ""
	Private mAttributes As String = ""
	Public VElement As VueElement
	Private mVIf As String = ""
	Private bLeft As Boolean = False
	Private bBottom As Boolean = False
	Private mVIf As String = ""
End Sub

Public Sub Initialize (CallBack As Object, Name As String, EventName As String)
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
End Sub

' this is the place where you create the view in html and run initialize javascript
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		mVIf = Props.Get("VIf")
		bAvatar = Props.Get("Avatar")
		bBordered = Props.Get("Bordered")
		sColor = Props.Get("Color")
		sColorintensity = Props.Get("Colorintensity")
		sContent = Props.Get("Content")
		bDark = Props.Get("Dark")
		bDot = Props.Get("Dot")
		sIcon = Props.Get("Icon")
		bInline = Props.Get("Inline")
		sMode = Props.Get("Mode")
		sOffsetX = Props.Get("OffsetX")
		sOffsetY = Props.Get("OffsetY")
		bOverlap = Props.Get("Overlap")
		bTile = Props.Get("Tile")
		sTransition = Props.Get("Transition")
		sValue = Props.Get("Value")
		bBottom = Props.Get("Bottom")
		bLeft = Props.Get("Left")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-badge id="${mName}"></v-badge>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-badge"
	VElement.setAvatar(bAvatar)
	VElement.Bordered = bBordered
	VElement.Color = VElement.BuildColor(sColor, sColorintensity)
	VElement.Content = sContent
	VElement.Dark = bDark
	VElement.Dot = bDot
	VElement.SetAttr("icon", sIcon)
	VElement.SetAttr(":inline", bInline)
	VElement.Mode = sMode
	VElement.OffsetX = sOffsetX
	VElement.OffsetY = sOffsetY
	VElement.Overlap = bOverlap
	VElement.Tile = bTile
	VElement.Transition = sTransition
	VElement.AddAttr(":value", sValue)
	VElement.SetData(sValue, True)
	VElement.SetData(sContent, 0)
	VElement.VIf = mVIf
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes	
	VElement.Left = bLeft
	VElement.Bottom = bBottom
	VElement.BindAllEvents
End Sub	


public Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

public Sub Remove()
	mTarget.Empty
	BANano.SetMeToNull
End Sub

public Sub Trigger(event As String, params() As String)
	If mElement <> Null Then
		mElement.Trigger(event, params)
	End If
End Sub

Sub Visible(VC As VueComponent, b As Boolean)
	VC.SetData(sValue, b)
	VC.SetData(mVIf, b)
End Sub

Sub Update(VC As VueComponent, b As Boolean)
	VC.SetData(sContent, b)
End Sub

Sub Increment(VC As VueComponent)
	VC.Increment(sContent)
End Sub

Sub Decrement(VC As VueComponent, b As Boolean)
	VC.Decrement(sContent)
End Sub