﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.8
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Public DatabaseName As String
	Public TableName As String
	Public PrimaryKey As String
	Public Fields As List
	Public Singular As String
	Public Plural As String
	Public sb As StringBuilder
	Public SortBy As String
	Private dtName As String
	Public ComponentName As String
	Public AutoIncrement As String
	Private rsTB As String
	Private Integers As List
	Private Strings As List
	Private Doubles As List
	Private Blobs As List
	Private ModalName As String
	Private ModalShow As String
	Private Defaults As Map
	Private Visibility As Map
	Public FocusOn As String
	Public DisplayField As String
	Private Filters As List
	Public DT_HasPrint As Boolean
	Public DT_HasClone As Boolean
	Public DT_HasEdit As Boolean
	Public DT_HasDelete As Boolean
	Public DT_HasSearch As Boolean
	Public DT_HasAddNew As Boolean
	Public DT_ItemsPerPage As String
	Public DT_HasClearSort As Boolean
	Public DT_HasFilter As Boolean
	Public DT_HasBack As Boolean
	Public DT_HasRefresh As Boolean
	Public DT_ShowGroupBy As Boolean
	Public HasDialog As Boolean
	Public DT_HasMenu As Boolean
	Public DT_HasDownload As Boolean
	Public DT_HasPrint As Boolean
	Public DT_HasSave As Boolean
	Public DT_HasCancel As Boolean
	Public DT_ShowSelect As Boolean
	Public DT_SingleSelect As Boolean
	Private dtCode As StringBuilder
	Private DT_HasEditDialog As Boolean
	Public DT_Dense As Boolean
	Public DT_MustSort As Boolean
	Public DT_MultiSort As Boolean
	Public DT_HasPDF As Boolean
	Public DT_HasExcel As Boolean
	Public Diag_Width As String
	Private dtCont As StringBuilder
	Private SingularClean As String
	Private PluralClean As String
	Type DBRelationship(source As String, key As String, value As String, vmodel As String, keys As String, values As String)
	Private relationships As List
	Private datasources As List
	Private className As String
	Private addedFiles As List
	Private matrix As List
	Private matrixMap As Map
	Private BANano As BANano  'ignore
	Private HideDetailsM As Map
	Private DenseM As Map
	Private RequiredM As Map
	Private ReadOnlyM As Map
	Private DisabledM As Map
	Private OutlinedM As Map
	Private RoundedM As Map
	Private ClearableM As Map
	Private AutoFocusM As Map
	Private FilledM As Map
	Private ShapedM As  Map
	Public Diag_FullScreenOnMobile As Boolean
	Public Diag_LazyValidation As Boolean
	Public Diag_FullScreen As Boolean
	Public DB_CreateTable As String
	Public DBType As String
	Private DBSorts As List
	Private FieldNames As List
	Private dates As List
	Private money As List
	Private thousands As List
	Public Prefix As String
	Public UsesBANanoSQL As Boolean
End Sub

'initialize the crud class
Sub Initialize(clsName As String) As MySQLCRUD
	Fields.Initialize
	className = clsName
	sb.Initialize
	DBType = ""
	FieldNames.Initialize 
	thousands.Initialize
	DatabaseName = ""
	TableName = ""
	PrimaryKey = ""
	Singular = ""
	Plural = ""
	SortBy = ""
	dtName = ""
	money.Initialize 
	DBSorts.Initialize 
	ComponentName = ""
	AutoIncrement = ""
	Integers.Initialize
	Strings.Initialize
	Doubles.Initialize
	Blobs.Initialize
	ModalName = ""
	ModalShow = ""
	Defaults.Initialize
	Visibility.Initialize
	FocusOn = ""
	DisplayField = ""
	Filters.Initialize
	DT_HasPrint = False
	DT_HasClone = False
	DT_HasEdit = False
	DT_HasDelete = False
	DT_HasSearch = False
	DT_HasAddNew = False
	DT_ItemsPerPage = 10
	DT_HasClearSort = False
	DT_HasFilter = False
	DT_HasRefresh = False
	DT_HasBack = False
	HasDialog = False
	DT_HasMenu = False
	DT_HasDownload = False
	DT_HasPrint = False
	DT_HasSave = False
	DT_HasCancel = False
	DT_HasEditDialog = False
	DT_ShowGroupBy = False
	DT_ShowSelect = False
	DT_SingleSelect = False
	dtCode.Initialize
	Diag_Width = "600"
	dtCont.Initialize
	relationships.Initialize 
	datasources.Initialize 
	addedFiles.Initialize 
	matrix.initialize
	matrixMap.initialize
	HideDetailsM.Initialize
	DenseM.Initialize
	RequiredM.Initialize
	ReadOnlyM.Initialize
	DisabledM.Initialize
	OutlinedM.Initialize
	RoundedM.Initialize
	ClearableM.Initialize
	AutoFocusM.Initialize
	FilledM.Initialize
	ShapedM.Initialize
	DT_Dense = False
	DT_MustSort = False
	DT_MultiSort = False
	DT_HasPDF = False
	DT_HasExcel = False
	Diag_FullScreenOnMobile = False
	Diag_FullScreen = False
	DB_CreateTable = ""
	dates.Initialize 
	Prefix = ""
	UsesBANanoSQL = False
	Return Me
End Sub

'set dialog element to filled
Sub Diag_SetFilled(fldname As String, b As Boolean)
	If b = False Then Return
	FilledM.Put(fldname, fldname)
End Sub

'set dialog elemnt to shaped
Sub Diag_SetShaped(fldname As String, b As Boolean)
	If b = False Then Return
	ShapedM.Put(fldname, fldname)
End Sub

'set dialog element tp auto focus
Sub Diag_SetAutoFocus(fldname As String, b As Boolean)
	If b = False Then Return
	AutoFocusM.Put(fldname, fldname)
End Sub

'set dialog element to clearable
Sub Diag_SetClearable(fldname As String, b As Boolean)
	If b = False Then Return
	ClearableM.Put(fldname, fldname)
End Sub

'set dialog element to hide details
Sub Diag_SetHideDetails(fldName As String, b As Boolean)
	If b = False Then Return
	HideDetailsM.Put(fldName, fldName)
End Sub

'set dialog element to dense
Sub Diag_SetDense(fldName As String, b As Boolean)
	If b = False Then Return
	DenseM.Put(fldName, fldName)
End Sub

'set dialog element to required
Sub Diag_SetRequired(fldName As String, title As String, b As Boolean)
	If b = False Then Return
	RequiredM.Put(fldName, title)
End Sub

'set dialog element to read only
Sub Diag_SetReadOnly(fldName As String, b As Boolean)
	If b = False Then Return
	ReadOnlyM.Put(fldName, fldName)
End Sub

'set dialog element to disabled
Sub Diag_SetDisabled(fldName As String, b As Boolean)
	If b = False Then Return
	DisabledM.Put(fldName, fldName)
End Sub

'set dialog element tp outlined
Sub Diag_SetOutlined(fldName As String, b As Boolean)
	If b = False Then Return
	OutlinedM.Put(fldName, fldName)
End Sub

'set dialog element to rounded
Sub Diag_SetRounded(fldName As String, b As Boolean)
	If b = False Then Return
	RoundedM.Put(fldName, fldName)
End Sub

'set properties
private Sub SetProperties(fldNAme As String, svmodel As String)   'ignore
	If HideDetailsM.ContainsKey(fldNAme) Then
		dtCont.Append($"${Prefix}${fldNAme}.HideDetails = True"$).Append(CRLF)
	End If
	If DenseM.ContainsKey(fldNAme) Then
		dtCont.Append($"${Prefix}${fldNAme}.Dense = True"$).Append(CRLF)
	End If
	If RequiredM.ContainsKey(fldNAme) Then
		dtCont.Append($"${Prefix}${fldNAme}.Required = ":${Prefix}${fldNAme}Required""$).Append(CRLF)
		dtCont.Append($"${Prefix}${fldNAme}.AddRule("${Prefix}${fldNAme.tolowercase}Rule")"$).Append(CRLF)
	End If
	If ReadOnlyM.ContainsKey(fldNAme) Then
		dtCont.Append($"${Prefix}${fldNAme}.ReadOnly = ":${Prefix}${fldNAme}ReadOnly""$).Append(CRLF)
	End If
	If DisabledM.ContainsKey(fldNAme) Then
		dtCont.Append($"${Prefix}${fldNAme}.Disabled = ":${Prefix}${fldNAme}Disabled""$).Append(CRLF)
	End If
	If OutlinedM.ContainsKey(fldNAme) Then
		dtCont.Append($"${Prefix}${fldNAme}.Outlined = True"$).Append(CRLF)
	End If
	If RoundedM.ContainsKey(fldNAme) Then
		dtCont.Append($"${Prefix}${fldNAme}.Rounded = True"$).Append(CRLF)
	End If
	If ClearableM.ContainsKey(fldNAme) Then
		dtCont.Append($"${Prefix}${fldNAme}.Clearable = True"$).Append(CRLF)
	End If
	If AutoFocusM.ContainsKey(fldNAme) Then
		dtCont.Append($"${Prefix}${fldNAme}.AutoFocus = True"$).Append(CRLF)
	End If
	If FilledM.ContainsKey(fldNAme) Then
		dtCont.Append($"${Prefix}${fldNAme}.Filled = True"$).Append(CRLF)
	End If
	If ShapedM.ContainsKey(fldNAme) Then
		dtCont.Append($"${Prefix}${fldNAme}.Shaped = True"$).Append(CRLF)
	End If
	If FocusOn = fldNAme Then
		dtCont.Append($"${Prefix}${fldNAme}.Ref = "${Prefix}${fldNAme}""$).Append(CRLF)
	End If
End Sub

'build properties
private Sub BuildProperties As String
	Dim xb As StringBuilder
	xb.Initialize
	For Each k As String In RequiredM.keys
		k = $"${Prefix}${k}"$
		Dim ks As String = $"${k}Required"$
		ks = ks.tolowercase
		xb.Append($"${ComponentName}.SetData("${ks}", True)"$).Append(CRLF)
	Next
	For Each k As String In ReadOnlyM.keys
		k = $"${Prefix}${k}"$
		Dim ks As String = $"${k}ReadOnly"$
		ks = ks.tolowercase
		xb.Append($"${ComponentName}.SetData("${ks}", True)"$).Append(CRLF)
	Next
	For Each k As String In DisabledM.keys
		k = $"${Prefix}${k}"$
		Dim ks As String = $"${k}Disabled"$
		ks = ks.tolowercase
		xb.Append($"${ComponentName}.SetData("${ks}", True)"$).Append(CRLF)
	Next
	Return xb.tostring
End Sub

'add paragraph to dialog
Sub Diag_AddParagraph(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddParagraph(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}Show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.Setdata("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'update the grid matrix
private Sub UpdateMatrix(row As Int, col As Int)
	Dim scol As String = BANanoShared.PadRight(col, 2, "0")
	Dim srow As String = BANanoShared.PadRight(row, 2, "0")
	Dim skey As String = $"${srow}.${scol}"$
	matrix.Add(skey)
End Sub

'add h6 element to dialog
Sub Diag_AddH6(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddH6(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.Setdata("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add h5 element to dialog
Sub Diag_AddH5(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddH5(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.Setdata("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add h4 element to dialog
Sub Diag_AddH4(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddH4(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.Setdata("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add h3 element to dialog
Sub Diag_AddH3(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddH3(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.SetData("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add h2 element to dialog
Sub Diag_AddH2(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddH2(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.SetData("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add h1 element to dialog
Sub Diag_AddH1(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddH1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.SetData("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a text field to the dialog
Sub Diag_AddTextField(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddTextField1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName, vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a telephone field to the dialog
Sub Diag_AddTelephone(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddTelephone1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a money field to the dialog
Sub Diag_AddMoney(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	money.Add(vmodel)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddTelephone1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

Sub Diag_AddThousands(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	thousands.Add(vmodel)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddTelephone1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a text area to the dialog
Sub Diag_AddTextArea(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddTextArea1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${Prefix}${fldName}.AutoGrow = True"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a time picker dialog
Sub Diag_AddTimePicker(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddTimePickerInput1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a date picker to the dialog
Sub Diag_AddDatePicker(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dates.Add(vmodel)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddDatePickerInput1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${Prefix}${fldName}.VModel = "${Prefix}${vmodel}fmt""$).Append(CRLF)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a slider to the dialog
Sub Diag_AddSlider(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddSlider(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", 0, 100, 1, True, False, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a rating to the dialog
Sub Diag_AddRating(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddRating(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", 0, 0, True, "blue", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a progress circular to the dialog
Sub Diag_AddProgressCircular(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	Dim xvmodel As String = $"${SingularClean.tolowercase}.${vmodel}"$
	Dim xpos As String = $"${SingularClean}Cont.MatrixID(${row}, ${col})"$
	'
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddProgressCircular(Me, ${xpos}, "${Prefix}${fldName}", "${xvmodel}", "${title}: {{ ${xvmodel} }}", "blue", Null)"$).Append(CRLF)
	dtCont.Append($"'${Prefix}${fldName}.Size = 32"$).Append(CRLF)
	dtCont.Append($"'${Prefix}${fldName}.Width = 4"$).Append(CRLF)
	'
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a progress linear to the dialog
Sub Diag_AddProgressLinear(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	Dim xvmodel As String = $"${SingularClean.tolowercase}.${vmodel}"$
	Dim xpos As String = $"${SingularClean}Cont.MatrixID(${row}, ${col})"$
	'
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddProgressLinear(Me, ${xpos}, "${Prefix}${fldName}", "${xvmodel}", "blue", Null)"$).Append(CRLF)
	dtCont.Append($"'${Prefix}${fldName}.Striped = True"$).Append(CRLF)
	dtCont.Append($"'${Prefix}${fldName}.Height = 4"$).Append(CRLF)
	dtCont.Append($"'${Prefix}${fldName}.Indeterminate = False"$).Append(CRLF)
	'
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a file input to the dialog
Sub Diag_AddFileInput(fldName As String, row As Int, col As Int, vmodel As String, title As String, bMultiple As Boolean)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddFileInput(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "", "${title}", "", ${bMultiple}, "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}Show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${Prefix}${fldName}.Loading = ":${Prefix}${fldName}Loading""$).Append(CRLF)
	dtCont.Append($"${Prefix}${fldName}.SetData("${Prefix}${fldName}Loading", False)"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	'to remove from adding
	'addedFiles.Add(vmodel)
	
	'file upload code
	Select Case bMultiple
	Case True
		AddCode($"Sub ${Prefix}${fldName}_change(fileList As List)"$)
		AddCode($"If banano.IsNull(fileList) Or banano.IsUndefined(fileList) Then Return"$)
		AddCode($"${ComponentName}.SetData("${Prefix}${fldName}loading", True)"$)
		AddCode($"Dim uploads As List = ${ComponentName}.NewList"$)
		AddCode("for each fileObj As Map in fileList")
		AddComment("get file details")
		AddCode($"Dim fileDet As FileObject"$)
		AddCode($"fileDet = BANanoShared.GetFileDetails(fileObj)"$)
		AddCode($"Dim fn As String = fileDet.FileName"$)
		AddComment("you can check the size here")
		AddComment("start uploading the file")
		AddCode($"fileDet = BANanoShared.UploadFileWait(fileObj)"$)
		AddCode($"Dim sstatus As String = fileDet.Status"$)
		AddCode($"Select Case sstatus"$)
		AddCode($"Case "error""$)
		AddCode($"vuetify.ShowSnackBarError(~"The file '~{fn}' was not uploaded successfully!"~)"$)
		AddCode($"Case "success""$)
		AddCode($"vuetify.ShowSnackBarSuccess(~"The file '~{fn}' was uploaded successfully!"~)"$)
		AddCode($"End Select"$)
		AddCode($"Dim fp As String = fileDet.FullPath"$)
		AddCode($"uploads.Add(fp)"$)
		AddCode("next")
		AddCode($"${ComponentName}.SetData("${Prefix}${fldName}loading", False)"$)
		AddCode($"End Sub"$)
	Case False	
		AddCode($"Sub ${Prefix}${fldName}_change(fileObj As Map)"$)
		AddCode($"If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return"$)
		AddCode($"${ComponentName}.SetData("${Prefix}${fldName}loading", True)"$)
		AddComment("get file details")
		AddCode($"Dim fileDet As FileObject"$)
		AddCode($"fileDet = BANanoShared.GetFileDetails(fileObj)"$)
		AddCode($"Dim fn As String = fileDet.FileName"$)
		AddComment("you can check the size here")
		AddComment("start uploading the file")
		AddCode($"fileDet = BANanoShared.UploadFileWait(fileObj)"$)
		AddCode($"Dim sstatus As String = fileDet.Status"$)
		AddCode($"Select Case sstatus"$)
		AddCode($"Case "error""$)
		AddCode($"${ComponentName}.SetData("${Prefix}${fldName}loading", False)"$)
		AddCode($"vuetify.ShowSnackBarError(~"The file '~{fn}' was not uploaded successfully!"~)"$)
		AddCode($"${ComponentName}.SetData("${SingularClean.tolowercase}.${vmodel}", "")"$)
		AddCode("Return")
		AddCode($"Case "success""$)
		AddCode($"vuetify.ShowSnackBarSuccess(~"The file '~{fn}' was uploaded successfully!"~)"$)
		AddCode($"End Select"$)
		AddCode($"Dim fp As String = fileDet.FullPath"$)
		AddCode("Dim fd As String = fileDet.FileDate")
		AddCode("Dim fs As String = fileDet.FileSize")
		AddComment("update state of some element")
		AddCode($"${ComponentName}.SetData("${SingularClean.tolowercase}.${vmodel}", fp)"$)
		AddCode($"${ComponentName}.SetData("${Prefix}${fldName}loading", False)"$)
		AddCode($"End Sub"$)
	End Select
	UpdateMatrix(row, col)
End Sub

'add a file input to the dialog
Sub Diag_AddFileInputImage(fldName As String, row As Int, col As Int, vmodel As String, bMultiple As Boolean)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddFileInputImage(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,"")
	If bMultiple Then
		dtCont.Append($"${Prefix}${fldName}.GetFile.Multiple = True"$).Append(CRLF)
	End If
	dtCont.Append($"${Prefix}${fldName}.GetButton.StyleHeight = "104px""$).Append(CRLF)
	dtCont.Append($"${Prefix}${fldName}.GetButton.StyleWidth = "104px""$).Append(CRLF)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	'to remove from adding
	'addedFiles.Add(vmodel)
	
	'file upload code
	Select Case bMultiple
	Case True
		AddCode($"Sub ${Prefix}${fldName}file_change(fileList As List)"$)
		AddCode($"If banano.IsNull(fileList) Or banano.IsUndefined(fileList) Then Return"$)
		AddCode($"${ComponentName}.SetLoading("${Prefix}${fldName}", True)"$)
		AddCode($"Dim uploads As List = ${ComponentName}.NewList"$)
		AddCode("for each fileObj As Map in fileList")
		AddComment("get file details")
		AddCode($"Dim fileDet As FileObject"$)
		AddCode($"fileDet = BANanoShared.GetFileDetails(fileObj)"$)
		AddCode($"Dim fn As String = fileDet.FileName"$)
		AddComment("you can check the size here")
		AddComment("start uploading the file")
		AddCode($"fileDet = BANanoShared.UploadFileWait(fileObj)"$)
		AddCode($"Dim sstatus As String = fileDet.Status"$)
		AddCode($"Select Case sstatus"$)
		AddCode($"Case "error""$)
		AddCode($"vuetify.ShowSnackBarError(~"The file '~{fn}' was not uploaded successfully!"~)"$)
		AddCode($"Case "success""$)
		AddCode($"vuetify.ShowSnackBarSuccess(~"The file '~{fn}' was uploaded successfully!"~)"$)
		AddCode($"End Select"$)
		AddCode($"Dim fp As String = fileDet.FullPath"$)
		AddCode($"uploads.Add(fp)"$)
		AddCode("next")
		AddCode($"${ComponentName}.SetLoading("${Prefix}${fldName}", False)"$)
		AddCode($"End Sub"$)
	Case False	
		AddCode($"Sub ${Prefix}${fldName}file_change(fileObj As Map)"$)
		AddCode($"If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return"$)
		AddCode($"${ComponentName}.SetLoading("${Prefix}${fldName}", True)"$)
		AddComment("get file details")
		AddCode($"Dim fileDet As FileObject"$)
		AddCode($"fileDet = BANanoShared.GetFileDetails(fileObj)"$)
		AddCode($"Dim fn As String = fileDet.FileName"$)
		AddComment("you can check the size here")
		AddComment("start uploading the file")
		AddCode($"fileDet = BANanoShared.UploadFileWait(fileObj)"$)
		AddCode($"Dim sstatus As String = fileDet.Status"$)
		AddCode($"Select Case sstatus"$)
		AddCode($"Case "error""$)
		AddCode($"${ComponentName}.SetLoading("${Prefix}${fldName}", False)"$)
		AddCode($"vuetify.ShowSnackBarError(~"The file '~{fn}' was not uploaded successfully!"~)"$)
		AddCode($"${ComponentName}.SetData("${SingularClean.tolowercase}.${vmodel}", "")"$)
		AddCode("Return")
		AddCode($"Case "success""$)
		AddCode($"vuetify.ShowSnackBarSuccess(~"The file '~{fn}' was uploaded successfully!"~)"$)
		AddCode($"End Select"$)
		AddCode($"Dim fp As String = fileDet.FullPath"$)
		AddCode("Dim fd As String = fileDet.FileDate")
		AddCode("Dim fs As String = fileDet.FileSize")
		AddComment("update state of some element")
		AddCode($"${ComponentName}.SetData("${SingularClean.tolowercase}.${vmodel}", fp)"$)
		AddCode($"${ComponentName}.SetLoading("${Prefix}${fldName}", False)"$)
		AddCode($"End Sub"$)
	End Select
	'
	AddComment("file input image clicked")
	AddCode($"Sub ${Prefix}${fldName}button_click(e As BANanoEvent)"$)
	AddCode($"${ComponentName}.refs = vuetify.GetRefs"$)
	AddCode($"${ComponentName}.SetLoading("${Prefix}${fldName}", False)"$)
	AddCode($"${ComponentName}.ClickFile("${Prefix}${fldName}")"$)
	AddCode("End Sub")

	UpdateMatrix(row, col)
End Sub

'add a password to the dialog
Sub Diag_AddPassword(fldName As String, row As Int, col As Int, vmodel As String, title As String, maxLen As Int)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddPassword(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", "", False, "", ${maxLen}, "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a combo to the dialog
Sub Diag_AddComboBox(fldName As String, row As Int, col As Int, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bReturnObject As Boolean, bMultiple As Boolean)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddComboBox(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${Title}", False, ${bMultiple}, "", "${DataSource}", "${Key}", "${Value}", ${bReturnObject}, "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.SetData("${DataSource}", ${ComponentName}.NewList)"$).Append(CRLF)
	'
	AddRelationship(Key,Value,DataSource,vmodel)
	UpdateMatrix(row, col)
End Sub

Sub AddRelationship(key As String, value As String, datasource As String, vmodel As String)
	key = key.Trim
	value = value.Trim
	datasource = datasource.Trim
	'
	If value = "" Or key = "" Then Return
	Dim rel As DBRelationship
	rel.Initialize
	rel.key = key
	rel.value = value
	rel.source = datasource
	rel.vmodel = vmodel
	rel.keys = ""
	rel.values = ""
	relationships.Add(rel)
End Sub

Sub AddDataSource(key As String, value As String, datasource As String, vmodel As String, keys As String, values As String)
	key = key.Trim
	value = value.Trim
	datasource = datasource.Trim
	'
	If keys = "" Or values = "" Then Return
	Dim rel As DBRelationship
	rel.Initialize
	rel.key = key
	rel.value = value
	rel.source = datasource
	rel.vmodel = vmodel
	rel.keys = keys
	rel.values = values
	datasources.Add(rel)
End Sub

'add a select to the dialog
Sub Diag_AddSelect(fldName As String, row As Int, col As Int, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bReturnObject As Boolean, bMultiple As Boolean)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddSelect(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${Title}", False, ${bMultiple}, "", "${DataSource}", "${Key}", "${Value}", ${bReturnObject}, "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.SetData("${DataSource}", ${ComponentName}.NewList)"$).Append(CRLF)
	'
	AddRelationship(Key, Value, DataSource, vmodel)
	UpdateMatrix(row, col)
End Sub

'add a chip group
Sub Diag_AddChipGroup(fldName As String, row As Int, col As Int, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bMultiple As Boolean)
	Dim xvmodel As String = $"${SingularClean.tolowercase}.${vmodel}"$
	Dim xpos As String = $"${SingularClean}Cont.MatrixID(${row}, ${col})"$
	'
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddChipGroup(Me, ${xpos}, "${Prefix}${fldName}", "${xvmodel}", "", ${bMultiple}, True, True, "${DataSource}", "${Key}", "${Value}", Null, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.SetData("${DataSource}", ${ComponentName}.NewList)"$).Append(CRLF)
	AddRelationship(Key, Value, DataSource, vmodel)
	UpdateMatrix(row, col)
End Sub

'add an chip to the dialog with binding
Sub Diag_AddChipAvatar(fldName As String, row As Int, col As Int, vmodel As String, stitle As String, avatarSize As Int)
	Dim xvmodel As String = $"${SingularClean.tolowercase}.${vmodel}"$
	Dim xpos As String = $"${SingularClean}Cont.MatrixID(${row}, ${col})"$
	'
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddChipWithAvatar(Me, ${xpos}, "${Prefix}${fldName}", ":${xvmodel}", "${stitle}", True, False, "blue", Null, Null, Null)"$).Append(CRLF)
	dtCont.Append($"${SingularClean}Cont.GetAvatar("${Prefix}${fldName}").size = "${avatarSize}""$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add an avatar to the dialog
Sub Diag_AddAvatar(fldName As String, row As Int, col As Int, url As String, avatarSize As Int)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddAvatar(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${url}", ${avatarSize}, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,"")
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add an avatar to the dialog with binding
Sub Diag_AddAvatar1(fldName As String, row As Int, col As Int, vmodel As String, avatarSize As Int)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddAvatar1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", ${avatarSize}, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub


'add an auto complete to the dialog
Sub Diag_AddAutoComplete(fldName As String, row As Int, col As Int, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bReturnObject As Boolean, bMultiple As Boolean)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddAutoComplete(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${Title}", False, ${bMultiple}, "", "${DataSource}", "${Key}", "${Value}", ${bReturnObject}, "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.SetData("${DataSource}", ${ComponentName}.NewList)"$).Append(CRLF)
	'
	AddRelationship(Key, Value, DataSource, vmodel)
	UpdateMatrix(row, col)
End Sub

'add a checkbox to the dialog
Sub Diag_AddCheckBox(fldName As String, row As Int, col As Int, vmodel As String, title As String, YesValue As Object, NoValue As Object)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddCheckBox(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", "${YesValue}", "${NoValue}", "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a switch to the dialog
Sub Diag_AddSwitch(fldName As String, row As Int, col As Int, vmodel As String, title As String, YesValue As Object, NoValue As Object, bInset As Boolean)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddSwitch(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", "${YesValue}", "${NoValue}", "", ${bInset}, null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a radio group to the dialog
Sub Diag_AddRadioGroup(fldName As String, row As Int, col As Int, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bRow As Boolean, bMultiple As Boolean)
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddRadioGroup(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${Title}", ${bRow}, False, "${DataSource}", "${Key}", "${Value}", "", Null, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.SetData("${DataSource}", ${ComponentName}.NewList)"$).Append(CRLF)
	
	AddRelationship(Key, Value, DataSource, vmodel)
	UpdateMatrix(row, col)
End Sub

'add an image to the dialog
Sub Diag_AddImage(fldName As String, row As Int, col As Int, url As String, lazysrc As String,  alt As String, width As String, height As String)
	If width = "" Then width = "80px"
	If height = "" Then height = "80px"
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddImage(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${url}", "${lazysrc}", "${alt}", "${height}", "${width}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName,"")
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add an image to the dialog with binding
Sub Diag_AddImage1(fldName As String, row As Int, col As Int, vmodel As String, alt As String, width As String, height As String)
	If width = "" Then width = "80px"
	If height = "" Then height = "80px"
	dtCont.Append($"Dim ${Prefix}${fldName} As VueElement = vuetify.AddImage1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${Prefix}${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${alt}", "${height}", "${width}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${Prefix}${fldName}.VShow = "${Prefix}${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName, vmodel)
	dtCont.Append($"${ComponentName}.BindVueElement(${Prefix}${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub


'set a text area data-table edit dialog
Sub DT_SetTextArea(colName As String, bLarge As Boolean)
	dtCode.Append($"${dtName}.SetTextArea("${colName}", ${bLarge})"$).Append(CRLF)
	DT_HasEditDialog = True
End Sub

'set a text field data-table edit dialog
Sub DT_SetTextField(colName As String, bLarge As Boolean)
	dtCode.Append($"${dtName}.SetTextField("${colName}", ${bLarge})"$).Append(CRLF)
	DT_HasEditDialog = True
End Sub

Sub DT_SetColumnSortable(colName As String, b As Boolean)
	dtCode.Append($"${dtName}.SetColumnSortable("${colName}", ${b})"$).Append(CRLF)
End Sub

Sub DT_SetColumnPreDisplay(colName As String, PreDisplay As String)
	dtCode.Append($"${dtName}.SetColumnPreDisplay("${colName}", "${PreDisplay}")"$).Append(CRLF)
End Sub

'add an icon to the data-table toolbar
Sub DT_AddTitleIcon(elID As String, eIcon As String, btnColor As String)
	dtCode.Append($"${dtName}.AddTitleIcon(${ComponentName}, "${elID}", "${eIcon}", "${btnColor}""$).Append(CRLF)
End Sub

'add an action column to the data-table
Sub DT_AddAction(colField As String, colTitle As String, colIcon As String)
	dtCode.Append($"${dtName}.AddAction("${colField}", "${colTitle}", "${colIcon}")"$).Append(CRLF)
End Sub

'add an icon view column to the data-table
Sub DT_AddIconView(colField As String, colTitle As String, colColor As String)
	dtCode.Append($"${dtName}.AddIconView("${colField}", "${colTitle}", "${colColor}")"$).Append(CRLF)
End Sub

'add a chip column to the data-table
Sub DT_AddChip(colField As String, colTitle As String, colColor As String)
	dtCode.Append($"${dtName}.AddChip("${colField}", "${colTitle}", "${colColor}")"$).Append(CRLF)
End Sub

'add a switch column to the data-table
Sub DT_AddSwitch(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddSwitch("${colField}", "${colTitle}")"$).Append(CRLF)
End Sub

'add a checkbox column to the data-table
Sub DT_AddCheckBox(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddCheckBox("${colField}", "${colTitle}")"$).Append(CRLF)
End Sub

'add an image column to the data-table
Sub DT_AddImage(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddImage("${colField}", "${colTitle}")"$).Append(CRLF)
	dtCode.Append($"${dtName}.SetImageDimensions("${colField}", "80px", "80px")"$).Append(CRLF)
End Sub

'add a file size column to the data-table
Sub DT_AddFileSize(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddFileSizeColumn("${colField}", "${colTitle}")"$).Append(CRLF)
End Sub

'add a time column to the data-table
Sub DT_AddTime(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddTimeColumn("${colField}", "${colTitle}")"$).Append(CRLF)
End Sub


'add a money column to the data-table
Sub DT_AddMoney(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddMoneyColumn("${colField}", "${colTitle}")"$).Append(CRLF)
End Sub

Sub DT_AddAutoComplete(colField As String, colTitle As String, dataSource As String, keyFld As String, valueFld As String)
	dtCode.Append($"${dtName}.AddColumn("${colField}", "${colTitle}")"$).Append(CRLF)
	dtCode.Append($"${dtName}.SetAutoComplete("${colField}", True, "${dataSource}", "${keyFld}", "${valueFld}")"$).Append(CRLF)
End Sub

Sub DT_AddComboBox(colField As String, colTitle As String, dataSource As String, keyFld As String, valueFld As String)
	dtCode.Append($"${dtName}.AddColumn("${colField}", "${colTitle}")"$).Append(CRLF)
	dtCode.Append($"${dtName}.SetComboBox("${colField}", True, "${dataSource}", "${keyFld}", "${valueFld}")"$).Append(CRLF)
End Sub

Sub DT_AddSelect(colField As String, colTitle As String, dataSource As String, keyFld As String, valueFld As String)
	dtCode.Append($"${dtName}.AddColumn("${colField}", "${colTitle}")"$).Append(CRLF)
	dtCode.Append($"${dtName}.SetSelect("${colField}", True, "${dataSource}", "${keyFld}", "${valueFld}")"$).Append(CRLF)
End Sub

'add a link column to the data-table
Sub DT_AddLink(colField As String, colTitle As String, target As String)
	dtCode.Append($"${dtName}.AddLink1("${colField}", "${colTitle}", "${colField}", "${target}")"$).Append(CRLF)
End Sub

'add an avatar column to the data-table
Sub DT_AddAvatarImg(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddAvatarImg("${colField}", "${colTitle}")"$).Append(CRLF)
End Sub

'add a rating column to the data-table
Sub DT_AddRating(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddRating("${colField}", "${colTitle}")"$).Append(CRLF)
End Sub

'add a progress circular column to the data-table
Sub DT_AddProgressCircular(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddProgressCircular("${colField}", "${colTitle}")"$).Append(CRLF)
	dtCode.Append($"${dtName}.SetProgressCircularDimensions("${colField}", vuetify.color_blue, "-90", "32", "4")"$).Append(CRLF)
End Sub

'add a progress linear column to the data-table
Sub DT_AddProgressLinear(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddProgressLinear("${colField}", "${colTitle}")"$).Append(CRLF)
	dtCode.Append($"${dtName}.SetProgressLinearDimensions("${colField}", vuetify.COLOR_BLUE, 32, True)"$).Append(CRLF)
End Sub

'add a column to the data-table
Sub DT_AddColumn(colName As String, colTitle As String)
	dtCode.Append($"${dtName}.AddColumn("${colName}", "${colTitle}")"$).Append(CRLF)
End Sub

'add a date column to the data-table
Sub DT_AddDateColumn(colName As String, colTitle As String, colFormat As String)
	dtCode.Append($"${dtName}.AddDateColumn("${colName}", "${colTitle}", "${colFormat}")"$).Append(CRLF)
End Sub

'add a date time column to the data-table
Sub DT_AddDateTimeColumn(colName As String, colTitle As String, colFormat As String)
	dtCode.Append($"${dtName}.AddDateTimeColumn("${colName}", "${colTitle}", "${colFormat}")"$).Append(CRLF)
End Sub

'add a number column to the data-table
Sub DT_AddNumberColumn(colName As String, colTitle As String, colFormat As String)
	dtCode.Append($"${dtName}.AddNumberColumn("${colName}", "${colTitle}", "${colFormat}")"$).Append(CRLF)
End Sub

'add a button column to the data-table
Sub DT_AddButtonColumn(colName As String, colTitle As String)
	dtCode.Append($"${dtName}.AddButtonColumn("${colName}", "${colTitle}")"$).Append(CRLF)
End Sub

'add a link column to the data-table
Sub DT_AddLinkColumn(colName As String, colTitle As String, target As String)
	dtCode.Append($"${dtName}.AddLinkColumn("${colName}", "${colTitle}", "${target}")"$).Append(CRLF)
End Sub

'add a column to the data-table
Sub DT_AddColumn1(colName As String, colTitle As String, colType As String, colWidth As Int, colSortable As Boolean, colAlign As String)
	dtCode.Append($"${dtName}.AddColumn1("${colName}", "${colTitle}", "${colType}", ${colWidth}, ${colSortable}, "${colAlign}")"$).Append(CRLF)
End Sub

'set dault value for a field
Sub AddDefaults(fld As String, def As String)
	Defaults.Put(fld, def)
End Sub

'set visibility for a field
Sub AddVisibility(fld As String, bVisibility As Boolean)
	Visibility.Put(fld, bVisibility)
End Sub

'prepare for execution
Sub Prepare
	SingularClean = BANanoShared.BeautifyName(SingularClean)
	SingularClean = Singular.Replace(" ", "")
	SingularClean = SingularClean.trim
	
	PluralClean = BANanoShared.BeautifyName(PluralClean)
	PluralClean = Plural.Replace(" ", "")
	PluralClean = PluralClean.trim
	'
	rsTB = $"rs${PluralClean}"$
	dtName = $"dt${PluralClean}"$
	ModalName = $"dlg${PluralClean}"$
	ModalShow = $"${ModalName}Show"$
End Sub

'add a blob field
Sub AddBlob(v As String)
	Blobs.Add(v)
End Sub

'add a string field
Sub AddString(v As String)
	Strings.Add(v)
End Sub

'add a double field
Sub AddDouble(v As String)
	Doubles.Add(v)
End Sub

'add an integer field
Sub AddInteger(v As String)
	Integers.Add(v)
End Sub

'add field data types - strings
Sub AddStrings(stringNames As List)
	For Each k As String In stringNames
		Strings.Add(k)
	Next
End Sub

'add a filter field
Sub DT_AddFilter(flt As String)
	Filters.Add(flt)
End Sub

'add columns to filter
Sub DT_AddFilters(fltName As List)
	For Each k As String In fltName
		Filters.Add(k)
	Next
End Sub

'add field data types - integers
Sub AddIntegers(integerNames As List)
	For Each k As String In integerNames
		Integers.Add(k)
	Next
End Sub

'add field data types - doubles
Sub AddDoubles(doubleNames As List)
	For Each k As String In doubleNames
		Doubles.Add(k)
	Next
End Sub

'add field data types - blobs
Sub AddBlobs(blobNames As List)
	For Each k As String In blobNames
		Blobs.Add(k)
	Next
End Sub

'loading code
private Sub LoadCode
	Dim sbSchemas As String = BuildSchemas
	SortBy = BANanoShared.List2ArrayVariable(DBSorts)
	Dim xfields As String = BANanoShared.List2ArrayVariable(FieldNames)
	'
	sb.Append($"Sub Load${PluralClean}		'ignoredeadcode
	'If vuetify.Authenticated = False Then
	'	vuetify.NavigateTo("/")
	'	Return
	'End If
	${ComponentName}.SetData("${Plural.tolowercase}", ${ComponentName}.NewMap)
	'Dim spermissions As String = vuetify.GetData("permissions")
	'Dim perma As List = BANanoShared.StrParse(",", spermissions)
	'For Each strp As String In perma
	'	${ComponentName}.SetData(strp, True)
	'Next
	'If ${ComponentName}.GetData("${Plural.tolowercase}.see") = False Then
	'	vuetify.ShowSnackBarError("You do not have permission to see these ${Plural.tolowercase}")
	'	Return
	'End If
	${dtName}.SetRows(${ComponentName}.NewList)
	'Show progress loader
	${dtName}.UpdateLoading(True)
	${LoadRelationships}
	${OpenBANanoSQL}
	Dim ${rsTB} As ${className}
	${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")
	'add field types
	${sbSchemas}
	${rsTB}.SelectAll(Array(${xfields}), Array(${SortBy}))
	${rsTB}.JSON = banano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)
	${ExecuteBANanoSQL}
	${rsTB}.FromJSON
	Select Case ${rsTB}.OK
	Case False
	'clear content
		'hide progress loader
		${dtName}.UpdateLoading(False)
		Dim strError As String = ${rsTB}.Error
		log(strError)
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
		Return
	End Select
	${dtName}.SetRows(${rsTB}.Result)
	'hide progress loader
	${dtName}.UpdateLoading(False)
End Sub"$).Append(CRLF).Append(CRLF)
End Sub

'build the relationships
private Sub RelationshipsCode
	If relationships.Size = 0 Then Return
	'
	Dim lsources As Map
	lsources.Initialize 
	For Each rec As DBRelationship In datasources
		Dim ssource As String = rec.source
		lsources.put(ssource, ssource)
	Next
	Dim rTot As Int = relationships.Size - 1
	Dim rCnt As Int
	For rCnt = rTot To 0 Step -1
		Dim xitem As DBRelationship = relationships.Get(rCnt)
		Dim xsource As String = xitem.source
		If lsources.ContainsKey(xsource) Then
			relationships.RemoveAt(rCnt)	
		End If
	Next	
	
	'create links for data sources
	For Each rec As DBRelationship In datasources
		Dim ssource As String = rec.source
		Dim skey As String = rec.key
		'Dim svmodel As String = rec.vmodel 
		Dim svalue As String = rec.value
		Dim skeys As String = rec.keys
		Dim svalues As String = rec.values
		'
		Dim spkeys As List = BANanoShared.StrParse(",", skeys)
		Dim spvalues As List = BANanoShared.StrParse(",", svalues)
		'
		Dim xValues As StringBuilder
		xValues.Initialize 
		Dim vTot As Int = spkeys.Size - 1
		Dim vCnt As Int 
		For vCnt = 0 To vTot
			Dim xKey As String = spkeys.Get(vCnt)
			Dim xVal As String = spvalues.Get(vCnt)			
			xValues.Append($"dsList.Add(CreateMap("${skey}":"${xKey}", "${svalue}":"${xVal}"))"$)
			xValues.Append(CRLF)
		Next
		
		sb.Append("'Load key values from custom entries").Append(CRLF)
		sb.Append($"Sub Load${ssource}		'ignoredeadcode
			Dim dsList As List
			dsList.Initialize
			${xValues.tostring}
			${ComponentName}.SetData("${ssource}", dsList)
	foreign${ssource}.Initialize
	For Each relmap As Map In dsList
		Dim s${skey} As String = relmap.GetDefault("${skey}", "")
		Dim s${svalue} As String = relmap.GetDefault("${svalue}", "")
		foreign${ssource}.put(s${skey}, s${svalue})
	Next
		End Sub"$).Append(CRLF).Append(CRLF) 
		'
		AddCode($"Sub Get${ssource}(sValue As String) As String   'IgnoreDeadCode"$)
	AddCode($"if foreign${ssource}.ContainsKey(sValue) Then"$)
	AddCode($"Dim xValue As String = foreign${ssource}.get(sValue)"$)
	AddCode("return xValue")
	AddCode("else")
	AddCode("return sValue")
	AddCode("end if")
	AddCode("End Sub")
	AddCode(CRLF)
	AddCode(CRLF) 
	Next
	
	
	For Each rec As DBRelationship In relationships
		Dim ssource As String = rec.source
		Dim skey As String = rec.key
		'Dim svmodel As String = rec.vmodel 
		Dim svalue As String = rec.value
		'
		Dim xfields As List
		xfields.Initialize 
		xfields.Add(skey)
		xfields.Add(svalue)
		Dim xarri As String = BANanoShared.List2ArrayVariable(xfields)
		Dim tbName As String = $"rs${ssource}"$
		'
		sb.Append("'Load key values from database").Append(CRLF)
		sb.Append($"Sub Load${ssource}		'ignoredeadcode
		${OpenBANanoSQL}
	Dim ${tbName} As ${className}
	${tbName}.Initialize("${DatabaseName}", "${ssource}", "${skey}", "")
	${tbName}.SelectAll(Array(${xarri}), Array("${svalue}"))
	${tbName}.JSON = BANano.CallInlinePHPWait(${tbName}.MethodName, ${tbName}.Build)
	${ExecuteBANanoSQL}
	${tbName}.FromJSON
	Select Case ${tbName}.OK
	Case False
		${ComponentName}.SetData("${ssource}", ${ComponentName}.NewList)
		Dim strError As String = ${tbName}.Error
		log(strError)
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
		Return
	End Select
	${ComponentName}.SetData("${ssource}", ${tbName}.Result)
	foreign${ssource}.Initialize
	For Each relmap As Map In ${tbName}.Result
		Dim s${skey} As String = relmap.GetDefault("${skey}", "")
		Dim s${svalue} As String = relmap.GetDefault("${svalue}", "")
		foreign${ssource}.put(s${skey}, s${svalue})
	Next
End Sub"$).Append(CRLF).Append(CRLF)  

	AddCode($"Sub Get${ssource}(sValue As String) As String   'IgnoreDeadCode"$)
	AddCode($"if foreign${ssource}.ContainsKey(sValue) Then"$)
	AddCode($"Dim xValue As String = foreign${ssource}.get(sValue)"$)
	AddCode("return xValue")
	AddCode("else")
	AddCode("return sValue")
	AddCode("end if")
	AddCode("End Sub")
	AddCode(CRLF)
	AddCode(CRLF)
	Next
End Sub

'build schemas
private Sub BuildSchemas As String
	Dim sbSchemas As StringBuilder
	sbSchemas.Initialize
	If Integers.Size > 0 Then
		Dim arri As String = BANanoShared.List2ArrayVariable(Integers)
		sbSchemas.Append($"${rsTB}.SchemaAddInt(Array(${arri}))"$).Append(CRLF)
	End If
	If Doubles.Size > 0 Then
		Dim arrd As String = BANanoShared.List2ArrayVariable(Doubles)
		sbSchemas.Append($"${rsTB}.SchemaAddFloat(Array(${arrd}))"$).Append(CRLF)
	End If
	If Strings.Size > 0 Then
		Dim arrs As String = BANanoShared.List2ArrayVariable(Strings)
		sbSchemas.Append($"${rsTB}.SchemaAddText(Array(${arrs}))"$).Append(CRLF)
	End If
	If Blobs.Size > 0 Then
		Dim arrb As String = BANanoShared.List2ArrayVariable(Blobs)
		sbSchemas.Append($"${rsTB}.SchemaAddBlob(Array(${arrb}))"$).Append(CRLF)
	End If
	Return sbSchemas.tostring
End Sub

Sub MoneyCodeRead As String
	Dim sbmoola As StringBuilder
	sbmoola.Initialize 
	For Each mola As String In thousands
		mola = mola.tolowercase
		sbmoola.Append($"Dim s${mola} As String = ${SingularClean}M.GetDefault("${mola}", "0")"$).Append(CRLF)
		sbmoola.Append($"s${mola} = BANanoShared.Val(s${mola})"$).Append(CRLF)
		sbmoola.Append($"s${mola} = ${ComponentName}.Thousands(s${mola})"$).Append(CRLF)
		sbmoola.Append($"${SingularClean}M.Put("${mola}", s${mola})"$).Append(CRLF)
	Next
	
	For Each mola As String In money
		mola = mola.tolowercase
		sbmoola.Append($"Dim s${mola} As String = ${SingularClean}M.GetDefault("${mola}", "0")"$).Append(CRLF)
		sbmoola.Append($"s${mola} = BANanoShared.Val(s${mola})"$).Append(CRLF)
		sbmoola.Append($"s${mola} = ${ComponentName}.NiceMoney(s${mola})"$).Append(CRLF)
		sbmoola.Append($"${SingularClean}M.Put("${mola}", s${mola})"$).Append(CRLF)
	Next
	Return sbmoola.tostring
End Sub

'read code
private Sub ReadCode As MySQLCRUD
	Dim sbSchemas As String = BuildSchemas
	'
	sb.Append($"Sub Read${SingularClean}(s${PrimaryKey} As String)			'ignoredeadcode
	${dtName}.UpdateLoading(True)
	${LoadRelationships}
	${OpenBANanoSQL}
	Dim ${rsTB} As ${className}
	${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")
	'add field types
	${sbSchemas}
	${rsTB}.Read(s${PrimaryKey})
	${rsTB}.JSON = banano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)
	${ExecuteBANanoSQL}
	${rsTB}.FromJSON
	Select Case ${rsTB}.OK
	Case False
		Dim strError As String = ${rsTB}.Error
		log(strerror)
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
		${dtName}.UpdateLoading(False)
		Return
	End Select
	Dim ${SingularClean}M As Map = ${rsTB}.result.Get(0)
	${MoneyCodeRead}
	'show the drawer
	${ComponentName}.SetData("${ModalShow.tolowercase}", True)
	${ComponentName}.SetData("${SingularClean.tolowercase}", ${SingularClean}M)
	${dtName}.UpdateLoading(False)
End Sub"$).Append(CRLF).Append(CRLF)
	
	Return Me
End Sub

'update code
private Sub UpdateCode As MySQLCRUD
	Dim sbSchemas As String = BuildSchemas
	sb.Append($"Sub Update${SingularClean}(${SingularClean}M As Map)			'ignoredeadcode
	${ComponentName}.SetData("${ModalName}loading", True)
	${RemoveFiles}
	Dim s${PrimaryKey} As String = ${SingularClean}M.Get("${PrimaryKey}")
	${OpenBANanoSQL}
	Dim ${rsTB} As ${className}
	${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")
	'add field types
	${sbSchemas}
	'insert current record
	${rsTB}.Update1(${SingularClean}M, s${PrimaryKey})
	${rsTB}.JSON = BANano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)
	${ExecuteBANanoSQL}
	${rsTB}.FromJSON
	Select Case ${rsTB}.OK
	Case False
		Dim strError As String = ${rsTB}.Error
		Log(strerror)
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
		${ComponentName}.SetData("${ModalName}loading", False)
	Case Else
		vuetify.ShowSnackBarSuccess("The ${Singular.tolowercase} has been updated successfully!")
		${ComponentName}.SetData("${ModalName}loading", False)
		'hide modal form
		${ComponentName}.SetData("${ModalShow.tolowercase}", False)
		Dim bReload As Boolean = ${ComponentName}.GetData("reload")
		If bReload Then
			'load records
			${ComponentName}.RunMethod("Load${PluralClean}", Null)
		End If	
	End Select
End Sub"$).Append(CRLF).Append(CRLF)
	Return Me
End Sub

'remove file vmodels
private Sub RemoveFiles As String
	Dim sbr As StringBuilder
	sbr.Initialize 
	For Each fn As String In addedFiles
		sbr.Append($"${Singular}M.Remove("${fn}")"$).Append(CRLF)
	Next
	Return sbr.tostring
End Sub

private Sub CreateDBCode
	AddCode($"Private Sub CreateDatabase${TableName}"$)
	Select Case DBType
	Case "indexeddb"
		AddCode("Private db As BANanoSQL")
		AddComment("open the database and wait")
		AddCode($"db.OpenWait("${DatabaseName}", "${DatabaseName}")"$)
		AddComment("resultset variable")
		AddCode($"Dim ${rsTB} As ${className}"$)
		AddComment("initialize table for table creation")
		AddCode($"${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")"$)
	Case "mysql", "mssql", "sqlite"
		AddCode($"Dim ${rsTB} As ${className}"$)
		AddComment("initialize table for table creation")
		AddCode($"${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")"$)
	End Select
	'
	For Each fld As Map In Fields
		Dim sfieldname As String = fld.GetDefault("fieldname","")
		sfieldname = sfieldname.tolowercase
		Dim sdatatype As String = fld.GetDefault("datatype","String")
		Dim sondb As String = fld.GetDefault("ondb", "No")
		Dim sdbsort As String = fld.GetDefault("dbsort", "No")
		'
		If sondb = "No" Then Continue
		FieldNames.Add(sfieldname)
		'
		If sdbsort = "Yes" Then
			DBSorts.Add(sfieldname)
		End If
		'
		Select Case sdatatype
		Case "string"
			AddCode($"${rsTB}.SchemaAddField("${sfieldname}", ${rsTB}.DB_STRING)"$)
		Case "double"
			AddCode($"${rsTB}.SchemaAddField("${sfieldname}", ${rsTB}.DB_DOUBLE)"$)
		Case "int"
			AddCode($"${rsTB}.SchemaAddField("${sfieldname}", ${rsTB}.DB_INT)"$)
		Case "blob"
			AddCode($"${rsTB}.SchemaAddField("${sfieldname}", ${rsTB}.DB_BLOB)"$)
		End Select
	Next
	AddComment("generate & run command to create the table")
	AddCode($"${rsTB}.SchemaCreateTable"$)
	
	Select Case DBType
	Case "indexeddb"
		AddCode($"${rsTB}.Result = db.ExecuteWait(${rsTB}.query, ${rsTB}.args)"$)
	Case "sqlite", "mysql", "mssql"
		AddCode($"${rsTB}.JSON = BANano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)"$)
	End Select
	AddCode($"${rsTB}.FromJSON"$)
	AddCode($"Select Case ${rsTB}.OK"$)
	AddCode($"Case False"$)
	AddCode($"Dim strError As String = ${rsTB}.Error"$)
	AddCode("Log(strError)")
	AddCode($"vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)"$)
	AddCode("End Select")
	AddCode("End Sub")
End Sub

Sub CreateListViewCode
	AddCode($"Private Sub CreateListView${TableName}"$)
	AddCode($"Dim drw${TableName} As VueElement = appdrawer.AddList1("drw${TableName}")"$)
	AddCode($"drw${TableName}.Options.dataSource = "${TableName}""$)
	'
	For Each fld As Map In Fields
		Dim sfieldname As String = fld.GetDefault("fieldname","")
		sfieldname = sfieldname.tolowercase
		Dim sitemtype As String = fld.GetDefault("itemtype","")
		Dim sondb As String = fld.GetDefault("ondb", "No")
		'
		If sondb = "No" Then Continue
		If sitemtype = "" Then Continue
		'
		AddCode($"drw${TableName}.Options.${sitemtype} = "${sfieldname}""$)
	Next
	AddCode($"drw${TableName}.AddListViewTemplate1(0)"$)
	AddCode($"${ComponentName}.BindVueElement(drw${TableName})"$)
	AddCode("End Sub")
	AddCode("")
	AddCode($"Sub drw${TableName}_click(item As Map)"$)
	AddCode("Log(item)")
	AddCode("End Sub")
	AddCode("")
End Sub


'create code
private Sub CreateCode()
	Dim sbSchemas As String = BuildSchemas
	'
	sb.Append($"Sub Create${SingularClean}(${SingularClean}M As Map)			'ignoredeadcode
	${ComponentName}.SetData("${ModalName}loading", True)
	'remove the auto-increment key field
	${SingularClean}M.Remove("${AutoIncrement}")
	${RemoveFiles}
	${OpenBANanoSQL}
	Dim ${rsTB} As ${className}
	${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")
	'add field types
	${sbSchemas}
	'insert current record
	${rsTB}.Insert1(${SingularClean}M)
	${rsTB}.JSON = banano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)
	${ExecuteBANanoSQL}
	${rsTB}.FromJSON
	Select Case ${rsTB}.OK
	Case False
		Dim strError As String = ${rsTB}.Error
		log(strError)
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
		${ComponentName}.SetData("${ModalName}loading", False)
	Case Else
		vuetify.ShowSnackBarSuccess("The ${Singular.tolowercase} has been added successfully!")
		${ComponentName}.SetData("${ModalName}loading", False)
		'hide modal form
		${ComponentName}.SetData("${ModalShow.tolowercase}", False)
		'Load records
		${ComponentName}.RunMethod("Load${PluralClean}", Null)
	End Select
End Sub"$).Append(CRLF).Append(CRLF)
End Sub

'delete code
private Sub DeleteCode()
	Dim sbSchemas As String = BuildSchemas
	
	sb.Append($"Sub Delete${SingularClean}(s${PrimaryKey} As String)			'ignoredeadcode
	${OpenBANanoSQL}
	Dim ${rsTB} As ${className}
	${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")
	'add field types
	${sbSchemas}
	${rsTB}.Delete(s${PrimaryKey})
	${rsTB}.JSON = banano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)
	${ExecuteBANanoSQL}
	${rsTB}.FromJSON
	Select Case ${rsTB}.OK
	Case False
		Dim strError As String = ${rsTB}.Error
		log(strError)
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
		Return
	Case Else
		vuetify.ShowSnackBarSuccess("The ${Singular.tolowercase} was deleted successfully!")
	End Select
	${ComponentName}.RunMethod("Load${PluralClean}", Null)
End Sub"$).Append(CRLF).Append(CRLF)
End Sub

'create table code
private Sub CreateTableCode()
	sb.Append($"Sub Create${PluralClean}Table"$).Append(CRLF)
	AddCode($"${dtName} = vuetify.AddDataTable(Me, cont${SingularClean}.MatrixID(1,1), "${dtName}")"$)
	AddCode($"${dtName}.ParentComponent = ${ComponentName}"$)
	AddCode($"${dtName}.GetCard.VShow = "${dtName}show""$)
	AddCode($"${dtName}.SetData("${dtName}show", True)"$)
	AddCode($"${dtName}.Title = "${Plural}""$)
	AddCode($"${dtName}.ItemKey = "${PrimaryKey}""$)
	AddCode($"${dtName}.ItemsPerPage = ${DT_ItemsPerPage}"$)
	
	If DT_Dense Then
		AddCode($"${dtName}.Dense = True"$)
	End If
	
	If DT_MustSort Then
		AddCode($"${dtName}.MustSort = True"$)
	End If
	
	If DT_MultiSort Then
		AddCode($"${dtName}.MultiSort = True"$)
	End If
		
	AddCode($"${dtName}.AddSpacer"$)
	'
	If DT_ShowGroupBy Then
		AddCode($"${dtName}.ShowGroupBy = True"$)
	End If
	
	If DT_ShowSelect Then
		AddCode($"${dtName}.ShowSelect = True"$)
	End If
	
	If DT_SingleSelect Then
		AddCode($"${dtName}.SingleSelect = True"$)
	End If
		
	If DT_HasSearch Then
		AddCode($"${dtName}.AddSearch"$)
		sb.Append($"${dtName}.AddDivider"$).Append(CRLF)
	End If
	
	If DT_HasAddNew Then
		AddCode($"${dtName}.AddNew"$)
		AddCode($"${dtName}.AddDivider"$)
	End If
	
	If DT_HasClearSort Then
		AddComment("sorting...")
		AddCode($"${dtName}.AddClearSort"$)
		AddCode($"${dtName}.AddDivider"$)
	End If
	
	If DT_HasFilter Then
		AddComment("filtering...")
		AddCode($"${dtName}.AddFilter("primary--text")"$)
		AddCode($"${dtName}.AddDivider"$)
		AddCode($"${dtName}.AddClearFilter"$)
		AddCode($"${dtName}.AddDivider"$)
	End If
	
	If DT_HasPDF Then
		AddComment("print to pdf...")
		AddCode($"${dtName}.AddPDF"$)
		AddCode($"${dtName}.AddDivider"$)
	End If
	'
	If DT_HasExcel Then
		AddComment("print to excel...")
		AddCode($"${dtName}.AddExcel"$)
		AddCode($"${dtName}.AddDivider"$)
	End If
	
	If DT_HasRefresh Then
		AddCode($"${dtName}.AddRefresh"$)
		AddCode($"${dtName}.AddDivider"$)
	End If
	
	If DT_HasBack Then
		AddCode($"${dtName}.AddBack"$)
		AddCode($"${dtName}.AddDivider"$)
	End If
	'
	If Filters.Size > 0 Then
		Dim arrx As String = BANanoShared.List2ArrayVariable(Filters)
		sb.Append($"${dtName}.SetFilterable(Array(${arrx}))"$).Append(CRLF)
	End If
	'	
	sb.Append(dtCode.ToString)
	
	If relationships.Size > 0 Then
		For Each rec As DBRelationship In relationships
			Dim ssource As String = rec.source
			Dim svmodel As String = rec.vmodel		
			ssource = BANanoShared.BeautifyName(ssource)	
			AddCode($"${dtName}.SetColumnPreDisplay("${svmodel}", "get${ssource}")"$)
		Next
	End If
	
	If DT_HasEdit Then
		AddCode($"${dtName}.AddEdit"$)
	End If
	
	If DT_HasDelete Then
		AddCode($"${dtName}.AddDelete"$)
	End If
	
	If DT_HasClone Then
		AddCode($"${dtName}.AddClone"$)
	End If
	
	If DT_HasPrint Then
		AddCode($"${dtName}.AddPrint"$)
	End If
	
	If DT_HasSave Then
		AddCode($"${dtName}.AddSave"$)
	End If
	
	If DT_HasCancel Then
		AddCode($"${dtName}.AddCancel"$)
	End If
	
	If DT_HasDownload Then
		AddCode($"${dtName}.AddDownload"$)
	End If
	
	If DT_HasMenu Then
		AddCode($"${dtName}.AddMenuV"$)
	End If
	'
	If DT_HasEdit Then
		sb.Append($"${dtName}.SetIconDimensions("edit", "", vuetify.COLOR_GREEN)"$).Append(CRLF)
	End If
	
	If DT_HasDelete Then
		sb.Append($"${dtName}.SetIconDimensions("delete", "", vuetify.COLOR_RED)"$).Append(CRLF)
	End If
	
	If DT_HasClone Then
		AddCode($"${dtName}.SetIconDimensions("clone", "", vuetify.COLOR_AMBER)"$)
	End If
	
	If DT_HasPrint Then
		AddCode($"${dtName}.SetIconDimensions("print", "", vuetify.COLOR_BLUE)"$)
	End If
	
	If DT_HasSave Then
		AddCode($"${dtName}.SetIconDimensions("save", "", vuetify.COLOR_BLUEGREY)"$)
	End If
	
	If DT_HasCancel Then
		AddCode($"${dtName}.SetIconDimensions("cancel", "", vuetify.COLOR_BROWN)"$)
	End If
	
	If DT_HasDownload Then
		AddCode($"${dtName}.SetIconDimensions("download", "", vuetify.COLOR_CYAN)"$)
	End If
	
	If DT_HasMenu Then
		AddCode($"${dtName}.SetIconDimensions("menu", "", vuetify.COLOR_INDIGO)"$)
	End If
	'
	sb.Append($"${dtName}.SetDataSource(${ComponentName}.NewList)"$).Append(CRLF)
	sb.Append($"${ComponentName}.BindVueTable(${dtName})"$).Append(CRLF)
	'
	sb.Append($"Dim txt${SingularClean}Search As VueElement = ${dtName}.GetSearchText
	txt${SingularClean}Search.Rounded = True
	txt${SingularClean}Search.BindAllEvents
	txt${SingularClean}Search.Dense = True
	txt${SingularClean}Search.Solo = True
	${ComponentName}.BindVueElement(txt${SingularClean}Search)"$).Append(CRLF)
	sb.Append("End Sub").Append(CRLF).Append(CRLF)
End Sub

'initialize code
private Sub InitilizeCode
	AddComment("static code module")
	AddCode("Sub Process_Globals")
	
	sb.Append($"Public vuetify As VuetifyApp
Public ${ComponentName} As VueComponent
Public path As String
Public name As String = "${ComponentName}"
Private Banano As BANano
Private ${dtName} As VueTable
Private ${ModalName} As VueElement
private cont${SingularClean} As VueElement
Private msgBox As VueElement
Private Mode As String
${BuildForeignLinks} 
End Sub"$).append(CRLF).append(CRLF)
	'
	
	AddCode("Sub Initialize")
	AddCode("'establish a reference to the app")
	AddCode("vuetify = pgIndex.vuetify")
	AddComment("'initialize the component")
	AddCode($"${ComponentName}.Initialize(Me, name)"$)
	AddCode($"${ComponentName}.vuetify = vuetify"$)
	AddCode($"path = ${ComponentName}.path"$)
	AddComment("")
	AddComment("'setting up permissions")
	AddCode($"'${ComponentName}.SetData("${Plural.tolowercase}", ${ComponentName}.NewMap)"$)
	AddComment("'add a msgbox dialog for this page")
	AddCode($"msgBox = ${ComponentName}.AddMsgBox(True, 500, "success", "error")"$)
	
	sb.Append($"'add a container to hold the ${Plural.tolowercase}
	cont${SingularClean} = vuetify.AddContainer(Me, ${ComponentName}.Here, "cont${SingularClean}", True)
	'cont${SingularClean}.Blurred = "!${Plural.tolowercase}.see"
	cont${SingularClean}.AddRows1.AddColumns12
	cont${SingularClean}.BuildGrid
	'
	${ComponentName}.BindVueElement(cont${SingularClean})"$).Append(CRLF)
	
	AddComment("")
	AddCode($"Create${PluralClean}Table"$)
	AddCode($"Create${PluralClean}Dialog"$)
	AddComment("")
	AddComment($"as soon as we have mounted, show the ${Plural.tolowercase}"$)
	AddCode($"Dim args As List = ${ComponentName}.newlist"$)
	AddCode($"${ComponentName}.SetMounted(Me, "Load${PluralClean}", args)"$)
	AddComment("add supporting CRUD methods...")
	AddCode($"${ComponentName}.SetMethod(Me, "Create${SingularClean}", args)"$)
	AddCode($"${ComponentName}.SetMethod(Me, "Delete${SingularClean}", args)"$)
	AddCode($"${ComponentName}.SetMethod(Me, "Update${SingularClean}", args)"$)
	AddCode($"${ComponentName}.SetMethod(Me, "Read${SingularClean}", args)"$)
		
	If relationships.Size > 0 Then
		For Each rec As DBRelationship In relationships
			Dim ssource As String = rec.source
			ssource = BANanoShared.BeautifyName(ssource)
			AddCode($"${ComponentName}.SetMethod(Me, "Load${ssource}", args)"$)
			AddCode($"${ComponentName}.SetMethod(Me, "Get${ssource}", args)"$)
		Next
	End If	
	'
	If dates.Size > 0 Then
		For Each dt As String In dates
			AddCode($"${ComponentName}.SetWatch("${SingularClean.tolowercase}.${dt}", True, True, Me, "${dt}changed", Null)"$)
		Next
	End If
		
	AddComment("'add the component as a router")
	AddCode($"vuetify.AddRoute(${ComponentName})"$)
	AddCode("End Sub")
	sb.Append(CRLF).Append(CRLF)
	
	
	If dates.Size > 0 Then
		For Each dt As String In dates
			AddCode($"Sub ${dt}changed"$)
			AddCode($"Dim s${dt} As String = ${ComponentName}.GetData("${SingularClean.tolowercase}.${dt}")"$)
			AddCode($"If s${dt} = "" Then Return"$)
			AddCode($"Dim x${dt} As String = ${ComponentName}.NiceDate(s${dt})"$)
			AddCode($"${ComponentName}.SetData("${dt}fmt", x${dt})"$)
			AddCode("End Sub")
		Next
	End If
End Sub

Sub BuildForeignLinks As String
	Dim sbx As StringBuilder
	sbx.Initialize
	If relationships.Size > 0 Then
		For Each rec As DBRelationship In relationships
			Dim ssource As String = rec.source
			ssource = BANanoShared.BeautifyName(ssource)
			sbx.Append($"Private foreign${ssource} As Map"$).Append(CRLF)
		Next
	End If
	Return sbx.tostring
End Sub

'load relationships
private Sub LoadRelationships As String
	Dim xb As StringBuilder
	xb.Initialize
	If relationships.Size > 0 Then
		For Each rec As DBRelationship In relationships
			Dim ssource As String = rec.source
			ssource = BANanoShared.BeautifyName(ssource)
			xb.Append($"${ComponentName}.RunMethod("Load${ssource}", Null)"$).Append(CRLF)
		Next
	End If
	Return xb.tostring
End Sub

'create dialog code
private Sub CreateDialogCode
	AddCode($"Sub Create${PluralClean}Dialog"$)
	AddComment("create a container")
	AddCode($"Dim ${ModalName} As VueElement = vuetify.AddDialogInput(Me, ${ComponentName}.Here, "${ModalName}", True, "${Diag_Width}", "${Plural}", "Save", "primary", "Cancel", "error")"$)
	AddCode($"Dim btn${ModalName}OK As VueElement = ${ModalName}.GetOK("${ModalName}")"$)
	AddCode($"btn${ModalName}OK.Loading = "${ModalName.tolowercase}loading""$)
	AddCode($"${ComponentName}.SetData("${ModalName}loading", False)"$)
	'
	If Diag_FullScreenOnMobile Then
		AddCode($"${ModalName}.FullScreenOnMobile = True"$)
	End If
	If Diag_FullScreen Then
		AddCode($"${ModalName}.FullScreen = True"$)
	End If
	'
	AddCode($"${ComponentName}.BindVueElement(${ModalName})"$)	
	'
	AddComment("get the container")
	AddCode($"Dim ${SingularClean}Cont As VueElement = ${ComponentName}.DialogForm("${ModalName}")"$)
	If Diag_LazyValidation Then
		AddCode($"${SingularClean}Cont.LazyValidation = True"$)
		AddCode($"${SingularClean}Cont.VModel = "${ModalName}valid""$)
	End If
	sb.Append(BuildGrid)
	'AddCode($"${SingularClean}Cont.AddRows1.AddColumns12"$)
	AddCode($"${SingularClean}Cont.BuildGrid"$)
	AddCode("")
	'
	sb.Append(dtCont.ToString).Append(CRLF)
	'
	AddCode($"${ComponentName}.BindVueElement(${SingularClean}Cont)"$)
	AddCode($"${ComponentName}.BindVueElement(${ModalName})"$)
	
	If Diag_LazyValidation Then
		AddCode($"${ComponentName}.SetData("${ModalName.tolowercase}valid", True)"$)
	End If
	'
	AddComment($"initialize the ${Singular}"$)
	AddCode($"Dim nt As Map = CreateMap()"$)
	sb.Append(BuildDefaults("nt"))
	sb.append(CRLF)
	AddCode($"${ComponentName}.SetData("${SingularClean.tolowercase}", nt)"$)
	
	AddCode("End Sub")
	sb.Append(CRLF).Append(CRLF)
End Sub

Sub MoneyCodeSave As String
	Dim sbmoola As StringBuilder
	sbmoola.Initialize
		 
	For Each mola As String In Integers
		mola = mola.ToLowerCase
		If money.IndexOf(mola) = -1 Then
			sbmoola.Append($"Dim s${mola} As String = ${SingularClean}M.Get("${mola}")"$).Append(CRLF)
			sbmoola.Append($"s${mola} = BANanoShared.Val(s${mola})"$).Append(CRLF)
			sbmoola.Append($"${SingularClean}M.Put("${mola}", s${mola})"$).Append(CRLF)
		End If
	Next
	'
	For Each mola As String In Doubles
		mola = mola.ToLowerCase
		If money.IndexOf(mola) = -1 Then
			sbmoola.Append($"Dim s${mola} As String = ${SingularClean}M.Get("${mola}")"$).Append(CRLF)
			sbmoola.Append($"s${mola} = BANanoShared.Val(s${mola})"$).Append(CRLF)
			sbmoola.Append($"${SingularClean}M.Put("${mola}", s${mola})"$).Append(CRLF)
		End If
	Next
	
	For Each mola As String In money
		mola = mola.tolowercase
		sbmoola.Append($"Dim s${mola} As String = ${SingularClean}M.Get("${mola}")"$).Append(CRLF)
		sbmoola.Append($"s${mola} = BANanoShared.Val(s${mola})"$).Append(CRLF)
		sbmoola.Append($"${SingularClean}M.Put("${mola}", s${mola})"$).Append(CRLF)
	Next
	Return sbmoola.tostring
End Sub

'support code
private Sub SupportCode
	'SAVE RECORD
	sb.Append($"Sub ${ModalName}ok_click(e As BANanoEvent)			'ignoredeadcode
	'get the current $refs
	${ComponentName}.refs = vuetify.GetRefs
	'validate the page
	Dim fValid As Boolean = ${ComponentName}.DialogValidate("${ModalName}")
	If fValid = False Then 
		vuetify.ShowSnackBarError("Please ensure that you complete all information.")
		Return
	End If
	'get the topic
	Dim ${SingularClean}M As Map = ${ComponentName}.GetData("${SingularClean.tolowercase}")
	${MoneyCodeSave}
	Select Case Mode
	Case "A"
		${ComponentName}.RunMethod("Create${SingularClean}", ${SingularClean}M)
	Case "E"	
		${ComponentName}.RunMethod("Update${SingularClean}", ${SingularClean}M)
	End Select
End Sub"$).Append(CRLF).Append(CRLF)
	'
	'CANCEL ADDING
	sb.Append($"Sub ${ModalName}cancel_click(e As BANanoEvent)				'ignoredeadcode
	Mode = "A"
	'initialize the record
	${ComponentName}.SetData("${SingularClean.tolowercase}", vuetify.NewMap)
	'hide the drawer/dialog
	${ComponentName}.SetData("${ModalShow.tolowercase}", False)
End Sub"$).Append(CRLF).Append(CRLF)
	'
	'TABLE ADD
	If DT_HasAddNew Then
	sb.Append($"Sub ${dtName}_add_click(e As BANanoEvent)				'ignoredeadcode
	'If ${ComponentName}.GetData("${Plural.tolowercase}.add") = False Then
	'	vuetify.ShowSnackBarError("You do not have permission to add a ${Singular.tolowercase}!")
	'	Return 
	'End If
	Add${SingularClean}
End Sub"$).Append(CRLF).Append(CRLF)
	'
	Dim xDefaults As String = BuildDefaults("nt")
	
	'ADD RECORD
	sb.Append($"Sub Add${SingularClean}			'ignoreDeadCode
	'get the current $refs
	${ComponentName}.refs = vuetify.GetRefs
	${LoadRelationships}
	${ComponentName}.DialogUpdateTitle("${ModalName}", "Add ${Singular}")
	Mode = "A"
	'initialize the record
	Dim nt As Map = CreateMap()
	${xDefaults}
	${ComponentName}.SetData("${SingularClean.tolowercase}", nt)
	${BuildVisibility}
	${BuildProperties}
	'show the drawer
	${ComponentName}.SetData("${ModalShow.tolowercase}", True)
	${ComponentName}.SetFocus("${FocusOn}")
End Sub"$).Append(CRLF).Append(CRLF)
End If
	'
	'TABLE EDIT
	If DT_HasEdit Then
	sb.Append($"Private Sub ${dtName}_edit (item As Map)				'ignoredeadcode
	'If ${ComponentName}.GetData("${Plural.tolowercase}.update") = False Then
	'	vuetify.ShowSnackBarError("You do not have permission to update a ${Singular.tolowercase}!")
	'	Return 
	'End If
	${ComponentName}.SetData("reload", true)
	'get the current $refs
	${ComponentName}.refs = vuetify.GetRefs
	${ComponentName}.DialogUpdateTitle("${ModalName}", "Edit ${Singular}")
	Mode = "E"
	Dim s${PrimaryKey} As String = item.Get("${PrimaryKey}")
	${ComponentName}.RunMethod("Read${SingularClean}", s${PrimaryKey})
	${BuildVisibility}
	${BuildProperties}
	${ComponentName}.SetFocus("${FocusOn}")
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	
	'
	'TABLE DELETE
	If DT_HasDelete Then
	sb.Append($"Private Sub ${dtName}_delete (item As Map)				'ignoredeadcode
	'If ${ComponentName}.GetData("${Plural.tolowercase}.delete") = False Then
	'	vuetify.ShowSnackBarError("You do not have permission to delete a ${Singular.tolowercase}!")
	'	Return 
	'End If
	Dim s${DisplayField} As String = item.Get("${DisplayField}")
	Dim s${PrimaryKey} As String = item.Get("${PrimaryKey}")
	${ComponentName}.SetData("${PrimaryKey.tolowercase}", s${PrimaryKey})
	${ComponentName}.ShowConfirm("delete${SingularClean.tolowercase}", _
	~"Confirm Delete: ~{s${DisplayField}}"~, _
	~"Are you sure you want to delete this ${Singular.tolowercase}?<br><br>Please note you will not be able to undo your changes. Continue?"~, "Yes", "No")
	End Sub"$).append(CRLF).append(CRLF)
	
	'CONFIRM DELETE
	sb.Append($"Sub ${ComponentName}ok_click(e As BANanoEvent)			'ignoredeadcode
	${ComponentName}.HideDialog
	'get the process
	Dim sconfirm As String = ${ComponentName}.Confirm
	Select Case sconfirm
	Case "delete${SingularClean.tolowercase}"
	'get the saved id
		Dim s${PrimaryKey} As String = ${ComponentName}.GetData("${PrimaryKey}")
		${ComponentName}.RunMethod("Delete${SingularClean}", s${PrimaryKey})
	End Select
End Sub"$).append(CRLF).append(CRLF)
	'
	'CANCEL
	sb.Append($"Sub ${ComponentName}cancel_click(e As BANanoEvent)			'ignoredeadcode
	${ComponentName}.HideDialog
	'get the process
	Dim sconfirm As String = ${ComponentName}.Confirm
	Select Case sconfirm
	End Select
End Sub"$).append(CRLF).append(CRLF)
	End If
	'
	'OTHER TABLE STUFF
	If DT_HasClearSort Then
		sb.Append($"Private Sub ${dtName}_clearsort_Click (e As BANanoEvent)		'ignoredeadcode
	${dtName}.ClearSort
End Sub"$).append(CRLF).append(CRLF)
	End If

	If DT_HasFilter Then
		sb.Append($"Private Sub ${dtName}_clearfilter_click (e As BANanoEvent)			'ignoredeadcode
	${dtName}.ClearFilter
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	
	If DT_HasRefresh Then
sb.Append($"Private Sub ${dtName}_refresh_click (e As BANanoEvent)			'ignoredeadcode
${ComponentName}.SetData("reload", True)
${ComponentName}.RunMethod("Load${PluralClean}", Null)
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	'
	If DT_HasBack Then
sb.Append($"Private Sub ${dtName}_back_click (e As BANanoEvent)			'ignoredeadcode
vuetify.NavigateTo(-1)
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	
	'
	sb.Append($"Private Sub ${dtName}_change (item As Map)				'ignoredeadcode
	'If ${ComponentName}.GetData("${Plural.tolowercase}.update") = False Then
	'	vuetify.ShowSnackBarError("You do not have permission to update a ${Singular.tolowercase}!")
	'	Return 
	'End If
	${ComponentName}.SetData("reload", False)
	${ComponentName}.RunMethod("Update${SingularClean}", item)
End Sub"$).Append(CRLF).Append(CRLF)
	'
	If DT_HasFilter Then
		sb.Append($"Private Sub ${dtName}_filter_click(e As BANanoEvent)		'ignoredeadcode
	${dtName}.ApplyFilter
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	'
	If DT_HasSave Then
sb.Append($"Sub ${dtName}_save (item As Map)
'If ${ComponentName}.GetData("${Plural.tolowercase}.update") = False Then
'		vuetify.ShowSnackBarError("You do not have permission to update a ${Singular.tolowercase}!")
'		Return 
'	End If
${ComponentName}.SetData("reload", False)
${ComponentName}.RunMethod("Update${SingularClean}", item)
End Sub"$).append(CRLF).append(CRLF)
	End If
	'
	If DT_HasPrint Then
		sb.Append($"Sub ${dtName}_print (item As Map)
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	'
	If DT_HasCancel Then
		sb.Append($"Sub ${dtName}_cancel (item As Map)
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	'
	If DT_HasDownload Then
		sb.Append($"Sub ${dtName}_download (item As Map)
End Sub"$).Append(CRLF).append(CRLF)
	End If
	'
	If DT_HasMenu Then
		sb.Append($"Sub ${dtName}_menu (item As Map)
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	'
	If DT_HasClone Then
sb.Append($"Sub ${dtName}_clone (item As Map)
'If ${ComponentName}.GetData("${Plural.tolowercase}.add") = False Then
'		vuetify.ShowSnackBarError("You do not have permission to add a ${Singular.tolowercase}!")
'		Return 
'	End If
Dim rec As Map = BANanoShared.CopyMap(item, array("*"))
${ComponentName}.RunMethod("Create${SingularClean}", rec)
End Sub"$).Append(CRLF).Append(CRLF)
	End If

	If DT_HasEditDialog Then
		sb.Append($"Sub ${dtName}_SaveItem (item As Map)
		'If ${ComponentName}.GetData("${Plural.tolowercase}.update") = False Then
		'vuetify.ShowSnackBarError("You do not have permission to update a ${Singular.tolowercase}!")
		'Return 
	'End If
	${ComponentName}.SetData("reload", False)
	${ComponentName}.RunMethod("Update${SingularClean}", item)
End Sub"$).append(CRLF).append(CRLF)
		'
sb.Append($"Private Sub ${dtName}_CancelItem (item As Map)
End Sub"$).append(CRLF).append(CRLF)
'
sb.Append($"Private Sub ${dtName}_OpenItem (item As Map)
End Sub"$).append(CRLF).append(CRLF)
'
sb.Append($"Private Sub ${dtName}_CloseItem (item As Map)
End Sub"$).append(CRLF).append(CRLF)

sb.Append($"Private Sub ${dtName}_ItemSelected (item As Map)
End Sub"$).append(CRLF).append(CRLF)

sb.Append($"Private Sub ${dtName}_ClickRow (e As BANanoEvent)
End Sub"$).Append(CRLF).Append(CRLF)
	'
	'add code for required
	For Each req As String In RequiredM.Keys
		Dim v As String = RequiredM.Get(req)
		req = $"${Prefix}${req}"$
		sb.Append($"Sub ${req}rule(v As String) As Object	'ignoredeadcode"$).Append(CRLF)
		sb.Append($"If v = "" Then"$).Append(CRLF)
		sb.Append($"Return "The ${v} is required!""$).Append(CRLF)
		sb.Append("Else").Append(CRLF)
		sb.Append("Return True").Append(CRLF)
		sb.Append("End If").Append(CRLF)
		sb.append("End Sub").Append(CRLF).Append(CRLF)
	Next
	End If
End Sub

'build visibility
private Sub BuildVisibility As String
	Dim xb As StringBuilder
	xb.Initialize
	For Each k As String In Visibility.keys
		Dim v As Object = Visibility.Get(k)
		k = $"${Prefix}${k}"$
		Dim ks As String = $"${k}show"$
		ks = ks.tolowercase
		xb.Append($"${ComponentName}.SetData("${ks}", ${v})"$).Append(CRLF)
	Next
	Return xb.tostring
End Sub


'build defaults
private Sub BuildDefaults(mapName As String) As String
	Dim xb As StringBuilder
	xb.Initialize
	For Each k As String In Defaults.Keys
		Dim v As Object = Defaults.Get(k)
		Dim instrings As Int = Strings.IndexOf(k)
		If instrings >= 0 Then
			xb.Append($"${mapName}.put("${k}", "${v}")"$).Append(CRLF)
		End If
		Dim inintegers As Int = Integers.IndexOf(k)
		If inintegers >= 0 Then
			xb.Append($"${mapName}.put("${k}", ${v})"$).Append(CRLF)
		End If
		Dim inDoubles As Int = Doubles.IndexOf(k)
		If inDoubles >= 0 Then
			xb.Append($"${mapName}.put("${k}", ${v})"$).Append(CRLF)
		End If
		Dim inBlobs As Int = Blobs.IndexOf(k)
		If inBlobs >= 0 Then
			xb.Append($"${mapName}.put("${k}", ${v})"$).Append(CRLF)
		End If
	Next
	Return xb.tostring
End Sub

'build the grid
private Sub BuildGrid As String
	matrixMap.Initialize 
	'sort the matrix
	matrix.Sort(True)
	For Each entryx As String In matrix
		Dim srow As String = BANanoShared.MvField(entryx, 1, ".")
		Dim scol As String = BANanoShared.MvField(entryx, 2, ".")
		'convert to integers
		srow = BANano.parseInt(srow)
		scol = BANano.parseInt(scol)
		If matrixMap.ContainsKey(srow) Then
			Dim lastCol As Int = matrixMap.Get(srow)
			lastCol = BANano.ParseInt(lastCol)
			If scol > lastCol Then
				matrixMap.Put(srow, scol)
			End If
		Else
			matrixMap.Put(srow, scol)	
		End If
	Next
	Dim sba As StringBuilder
	sba.Initialize
	For Each k As String In matrixMap.Keys
		Dim v As Int = matrixMap.Get(k)
		sba.Append($"${SingularClean}Cont.AddRows1"$)
		Select Case v
		Case 1
			'add columns12
			sba.Append(".AddColumns12")
		Case 2
			'add columns2x6
			sba.Append(".AddColumns2x6")
		Case 3
			'addcolumns3x4
			sba.Append(".AddColumns3x4")
		Case 4
			'addcolumns4x3
			sba.Append(".AddColumns4x3")
		Case 5
			sba.Append(".AddColumns5x2")
		Case 6
			'addcolumns6x2
			sba.Append(".AddColumns6x2")
		Case 7
			sba.Append(".AddColumns7x1")
		Case 8
			sba.Append(".AddColumns8x1")
		Case 9
			sba.Append(".AddColumns9x1")
		Case 10
			sba.Append(".AddColumns10x1")
		Case 11
			sba.Append(".AddColumns11x1")
		Case 12
			'addcolumns12x1	
			sba.Append(".AddColumns12x1")	
		End Select
		sba.Append(CRLF)
	Next
	Return sba.ToString
End Sub

'convert to string
Sub ToString As String
	'remove data sources from relationships
	AddCode(DB_CreateTable)
	AddCode("")
	'
	InitilizeCode
	CreateDBCode
	LoadCode
	ReadCode
	UpdateCode
	CreateCode
	DeleteCode
	CreateTableCode
	SupportCode
	CreateDialogCode
	RelationshipsCode
	CreateListViewCode
	'
	Dim sout As String = sb.ToString
	sout = sout.Replace("~","$")
	Return sout
End Sub

'add comment to code
private Sub AddComment(code As String)
	sb.Append($"'${code}"$).Append(CRLF)
End Sub

'add code
private Sub AddCode(code As String)
	sb.Append(code).Append(CRLF)
End Sub

'save the generated source code
Sub Save
	Dim sout As String = ToString
	BANanoShared.SaveText2File(sout, TableName & ".txt")
End Sub

Sub OpenBANanoSQL As String
	If UsesBANanoSQL Then
		Dim str As String = $"Dim db As BANanoSQL
		db.OpenWait("${DatabaseName}", "${DatabaseName}")"$
		Return str
	Else
		Return ""	
	End If
End Sub

Sub ExecuteBANanoSQL As String
	If UsesBANanoSQL Then
		Dim str As String = $"${rsTB}.Result = db.ExecuteWait(${rsTB}.query, ${rsTB}.args)"$
		Return str
	Else
		Return ""
	End If
End Sub