.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctpivottabledefinitionb188type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewChartFormats()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartFormats;
.end method

.method public abstract addNewColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;
.end method

.method public abstract addNewColHierarchiesUsage()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColHierarchiesUsage;
.end method

.method public abstract addNewColItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColItems;
.end method

.method public abstract addNewConditionalFormats()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormats;
.end method

.method public abstract addNewDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewFilters()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFilters;
.end method

.method public abstract addNewFormats()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFormats;
.end method

.method public abstract addNewLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;
.end method

.method public abstract addNewPageFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;
.end method

.method public abstract addNewPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;
.end method

.method public abstract addNewPivotHierarchies()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotHierarchies;
.end method

.method public abstract addNewPivotTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;
.end method

.method public abstract addNewRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;
.end method

.method public abstract addNewRowHierarchiesUsage()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowHierarchiesUsage;
.end method

.method public abstract addNewRowItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowItems;
.end method

.method public abstract synthetic changeType(Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic compareTo(Ljava/lang/Object;)I
.end method

.method public abstract synthetic compareValue(Lorg/apache/xmlbeans/XmlObject;)I
.end method

.method public abstract synthetic copy()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic copy(Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic documentProperties()Li5/t0;
.end method

.method public abstract synthetic dump()V
.end method

.method public abstract synthetic execQuery(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic execQuery(Ljava/lang/String;Li5/z1;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getApplyAlignmentFormats()Z
.end method

.method public abstract getApplyBorderFormats()Z
.end method

.method public abstract getApplyFontFormats()Z
.end method

.method public abstract getApplyNumberFormats()Z
.end method

.method public abstract getApplyPatternFormats()Z
.end method

.method public abstract getApplyWidthHeightFormats()Z
.end method

.method public abstract getAsteriskTotals()Z
.end method

.method public abstract getAutoFormatId()J
.end method

.method public abstract getCacheId()J
.end method

.method public abstract getChartFormat()J
.end method

.method public abstract getChartFormats()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartFormats;
.end method

.method public abstract getColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;
.end method

.method public abstract getColGrandTotals()Z
.end method

.method public abstract getColHeaderCaption()Ljava/lang/String;
.end method

.method public abstract getColHierarchiesUsage()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColHierarchiesUsage;
.end method

.method public abstract getColItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColItems;
.end method

.method public abstract getCompact()Z
.end method

.method public abstract getCompactData()Z
.end method

.method public abstract getConditionalFormats()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormats;
.end method

.method public abstract getCreatedVersion()S
.end method

.method public abstract getCustomListSort()Z
.end method

.method public abstract getDataCaption()Ljava/lang/String;
.end method

.method public abstract getDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;
.end method

.method public abstract getDataOnRows()Z
.end method

.method public abstract getDataPosition()J
.end method

.method public abstract getDisableFieldList()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEditData()Z
.end method

.method public abstract getEnableDrill()Z
.end method

.method public abstract getEnableFieldProperties()Z
.end method

.method public abstract getEnableWizard()Z
.end method

.method public abstract getErrorCaption()Ljava/lang/String;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFieldListSortAscending()Z
.end method

.method public abstract getFieldPrintTitles()Z
.end method

.method public abstract getFilters()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFilters;
.end method

.method public abstract getFormats()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFormats;
.end method

.method public abstract getGrandTotalCaption()Ljava/lang/String;
.end method

.method public abstract getGridDropZones()Z
.end method

.method public abstract getImmersive()Z
.end method

.method public abstract getIndent()J
.end method

.method public abstract getItemPrintTitles()Z
.end method

.method public abstract getLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;
.end method

.method public abstract getMdxSubqueries()Z
.end method

.method public abstract getMergeItem()Z
.end method

.method public abstract getMinRefreshableVersion()S
.end method

.method public abstract getMissingCaption()Ljava/lang/String;
.end method

.method public abstract getMultipleFieldFilters()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOutline()Z
.end method

.method public abstract getOutlineData()Z
.end method

.method public abstract getPageFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;
.end method

.method public abstract getPageOverThenDown()Z
.end method

.method public abstract getPageStyle()Ljava/lang/String;
.end method

.method public abstract getPageWrap()J
.end method

.method public abstract getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;
.end method

.method public abstract getPivotHierarchies()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotHierarchies;
.end method

.method public abstract getPivotTableStyle()Ljava/lang/String;
.end method

.method public abstract getPivotTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;
.end method

.method public abstract getPreserveFormatting()Z
.end method

.method public abstract getPrintDrill()Z
.end method

.method public abstract getPublished()Z
.end method

.method public abstract getRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;
.end method

.method public abstract getRowGrandTotals()Z
.end method

.method public abstract getRowHeaderCaption()Ljava/lang/String;
.end method

.method public abstract getRowHierarchiesUsage()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowHierarchiesUsage;
.end method

.method public abstract getRowItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowItems;
.end method

.method public abstract getShowCalcMbrs()Z
.end method

.method public abstract getShowDataDropDown()Z
.end method

.method public abstract getShowDataTips()Z
.end method

.method public abstract getShowDrill()Z
.end method

.method public abstract getShowDropZones()Z
.end method

.method public abstract getShowEmptyCol()Z
.end method

.method public abstract getShowEmptyRow()Z
.end method

.method public abstract getShowError()Z
.end method

.method public abstract getShowHeaders()Z
.end method

.method public abstract getShowItems()Z
.end method

.method public abstract getShowMemberPropertyTips()Z
.end method

.method public abstract getShowMissing()Z
.end method

.method public abstract getShowMultipleLabel()Z
.end method

.method public abstract getSubtotalHiddenItems()Z
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getUpdatedVersion()S
.end method

.method public abstract getUseAutoFormatting()Z
.end method

.method public abstract getVacatedStyle()Ljava/lang/String;
.end method

.method public abstract getVisualTotals()Z
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetApplyAlignmentFormats()Z
.end method

.method public abstract isSetApplyBorderFormats()Z
.end method

.method public abstract isSetApplyFontFormats()Z
.end method

.method public abstract isSetApplyNumberFormats()Z
.end method

.method public abstract isSetApplyPatternFormats()Z
.end method

.method public abstract isSetApplyWidthHeightFormats()Z
.end method

.method public abstract isSetAsteriskTotals()Z
.end method

.method public abstract isSetAutoFormatId()Z
.end method

.method public abstract isSetChartFormat()Z
.end method

.method public abstract isSetChartFormats()Z
.end method

.method public abstract isSetColFields()Z
.end method

.method public abstract isSetColGrandTotals()Z
.end method

.method public abstract isSetColHeaderCaption()Z
.end method

.method public abstract isSetColHierarchiesUsage()Z
.end method

.method public abstract isSetColItems()Z
.end method

.method public abstract isSetCompact()Z
.end method

.method public abstract isSetCompactData()Z
.end method

.method public abstract isSetConditionalFormats()Z
.end method

.method public abstract isSetCreatedVersion()Z
.end method

.method public abstract isSetCustomListSort()Z
.end method

.method public abstract isSetDataFields()Z
.end method

.method public abstract isSetDataOnRows()Z
.end method

.method public abstract isSetDataPosition()Z
.end method

.method public abstract isSetDisableFieldList()Z
.end method

.method public abstract isSetEditData()Z
.end method

.method public abstract isSetEnableDrill()Z
.end method

.method public abstract isSetEnableFieldProperties()Z
.end method

.method public abstract isSetEnableWizard()Z
.end method

.method public abstract isSetErrorCaption()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFieldListSortAscending()Z
.end method

.method public abstract isSetFieldPrintTitles()Z
.end method

.method public abstract isSetFilters()Z
.end method

.method public abstract isSetFormats()Z
.end method

.method public abstract isSetGrandTotalCaption()Z
.end method

.method public abstract isSetGridDropZones()Z
.end method

.method public abstract isSetImmersive()Z
.end method

.method public abstract isSetIndent()Z
.end method

.method public abstract isSetItemPrintTitles()Z
.end method

.method public abstract isSetMdxSubqueries()Z
.end method

.method public abstract isSetMergeItem()Z
.end method

.method public abstract isSetMinRefreshableVersion()Z
.end method

.method public abstract isSetMissingCaption()Z
.end method

.method public abstract isSetMultipleFieldFilters()Z
.end method

.method public abstract isSetOutline()Z
.end method

.method public abstract isSetOutlineData()Z
.end method

.method public abstract isSetPageFields()Z
.end method

.method public abstract isSetPageOverThenDown()Z
.end method

.method public abstract isSetPageStyle()Z
.end method

.method public abstract isSetPageWrap()Z
.end method

.method public abstract isSetPivotFields()Z
.end method

.method public abstract isSetPivotHierarchies()Z
.end method

.method public abstract isSetPivotTableStyle()Z
.end method

.method public abstract isSetPivotTableStyleInfo()Z
.end method

.method public abstract isSetPreserveFormatting()Z
.end method

.method public abstract isSetPrintDrill()Z
.end method

.method public abstract isSetPublished()Z
.end method

.method public abstract isSetRowFields()Z
.end method

.method public abstract isSetRowGrandTotals()Z
.end method

.method public abstract isSetRowHeaderCaption()Z
.end method

.method public abstract isSetRowHierarchiesUsage()Z
.end method

.method public abstract isSetRowItems()Z
.end method

.method public abstract isSetShowCalcMbrs()Z
.end method

.method public abstract isSetShowDataDropDown()Z
.end method

.method public abstract isSetShowDataTips()Z
.end method

.method public abstract isSetShowDrill()Z
.end method

.method public abstract isSetShowDropZones()Z
.end method

.method public abstract isSetShowEmptyCol()Z
.end method

.method public abstract isSetShowEmptyRow()Z
.end method

.method public abstract isSetShowError()Z
.end method

.method public abstract isSetShowHeaders()Z
.end method

.method public abstract isSetShowItems()Z
.end method

.method public abstract isSetShowMemberPropertyTips()Z
.end method

.method public abstract isSetShowMissing()Z
.end method

.method public abstract isSetShowMultipleLabel()Z
.end method

.method public abstract isSetSubtotalHiddenItems()Z
.end method

.method public abstract isSetTag()Z
.end method

.method public abstract isSetUpdatedVersion()Z
.end method

.method public abstract isSetUseAutoFormatting()Z
.end method

.method public abstract isSetVacatedStyle()Z
.end method

.method public abstract isSetVisualTotals()Z
.end method

.method public abstract synthetic monitor()Ljava/lang/Object;
.end method

.method public abstract synthetic newCursor()Li5/p0;
.end method

.method public abstract synthetic newDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract synthetic newDomNode(Li5/z1;)Lorg/w3c/dom/Node;
.end method

.method public abstract synthetic newInputStream()Ljava/io/InputStream;
.end method

.method public abstract synthetic newInputStream(Li5/z1;)Ljava/io/InputStream;
.end method

.method public abstract synthetic newReader()Ljava/io/Reader;
.end method

.method public abstract synthetic newReader(Li5/z1;)Ljava/io/Reader;
.end method

.method public abstract synthetic newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;
.end method

.method public abstract synthetic newXMLStreamReader(Li5/z1;)Ljavax/xml/stream/XMLStreamReader;
.end method

.method public abstract synthetic save(Ljava/io/File;)V
.end method

.method public abstract synthetic save(Ljava/io/File;Li5/z1;)V
.end method

.method public abstract synthetic save(Ljava/io/OutputStream;)V
.end method

.method public abstract synthetic save(Ljava/io/OutputStream;Li5/z1;)V
.end method

.method public abstract synthetic save(Ljava/io/Writer;)V
.end method

.method public abstract synthetic save(Ljava/io/Writer;Li5/z1;)V
.end method

.method public abstract synthetic save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
.end method

.method public abstract synthetic save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Li5/z1;)V
.end method

.method public abstract synthetic schemaType()Li5/c0;
.end method

.method public abstract synthetic selectAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectAttribute(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectAttributes(Li5/k;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectChildren(Li5/k;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectChildren(Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectChildren(Ljavax/xml/namespace/QName;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectPath(Ljava/lang/String;Li5/z1;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract setApplyAlignmentFormats(Z)V
.end method

.method public abstract setApplyBorderFormats(Z)V
.end method

.method public abstract setApplyFontFormats(Z)V
.end method

.method public abstract setApplyNumberFormats(Z)V
.end method

.method public abstract setApplyPatternFormats(Z)V
.end method

.method public abstract setApplyWidthHeightFormats(Z)V
.end method

.method public abstract setAsteriskTotals(Z)V
.end method

.method public abstract setAutoFormatId(J)V
.end method

.method public abstract setCacheId(J)V
.end method

.method public abstract setChartFormat(J)V
.end method

.method public abstract setChartFormats(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartFormats;)V
.end method

.method public abstract setColFields(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;)V
.end method

.method public abstract setColGrandTotals(Z)V
.end method

.method public abstract setColHeaderCaption(Ljava/lang/String;)V
.end method

.method public abstract setColHierarchiesUsage(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColHierarchiesUsage;)V
.end method

.method public abstract setColItems(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColItems;)V
.end method

.method public abstract setCompact(Z)V
.end method

.method public abstract setCompactData(Z)V
.end method

.method public abstract setConditionalFormats(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormats;)V
.end method

.method public abstract setCreatedVersion(S)V
.end method

.method public abstract setCustomListSort(Z)V
.end method

.method public abstract setDataCaption(Ljava/lang/String;)V
.end method

.method public abstract setDataFields(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;)V
.end method

.method public abstract setDataOnRows(Z)V
.end method

.method public abstract setDataPosition(J)V
.end method

.method public abstract setDisableFieldList(Z)V
.end method

.method public abstract setEditData(Z)V
.end method

.method public abstract setEnableDrill(Z)V
.end method

.method public abstract setEnableFieldProperties(Z)V
.end method

.method public abstract setEnableWizard(Z)V
.end method

.method public abstract setErrorCaption(Ljava/lang/String;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFieldListSortAscending(Z)V
.end method

.method public abstract setFieldPrintTitles(Z)V
.end method

.method public abstract setFilters(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFilters;)V
.end method

.method public abstract setFormats(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFormats;)V
.end method

.method public abstract setGrandTotalCaption(Ljava/lang/String;)V
.end method

.method public abstract setGridDropZones(Z)V
.end method

.method public abstract setImmersive(Z)V
.end method

.method public abstract setIndent(J)V
.end method

.method public abstract setItemPrintTitles(Z)V
.end method

.method public abstract setLocation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;)V
.end method

.method public abstract setMdxSubqueries(Z)V
.end method

.method public abstract setMergeItem(Z)V
.end method

.method public abstract setMinRefreshableVersion(S)V
.end method

.method public abstract setMissingCaption(Ljava/lang/String;)V
.end method

.method public abstract setMultipleFieldFilters(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOutline(Z)V
.end method

.method public abstract setOutlineData(Z)V
.end method

.method public abstract setPageFields(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;)V
.end method

.method public abstract setPageOverThenDown(Z)V
.end method

.method public abstract setPageStyle(Ljava/lang/String;)V
.end method

.method public abstract setPageWrap(J)V
.end method

.method public abstract setPivotFields(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;)V
.end method

.method public abstract setPivotHierarchies(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotHierarchies;)V
.end method

.method public abstract setPivotTableStyle(Ljava/lang/String;)V
.end method

.method public abstract setPivotTableStyleInfo(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;)V
.end method

.method public abstract setPreserveFormatting(Z)V
.end method

.method public abstract setPrintDrill(Z)V
.end method

.method public abstract setPublished(Z)V
.end method

.method public abstract setRowFields(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;)V
.end method

.method public abstract setRowGrandTotals(Z)V
.end method

.method public abstract setRowHeaderCaption(Ljava/lang/String;)V
.end method

.method public abstract setRowHierarchiesUsage(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowHierarchiesUsage;)V
.end method

.method public abstract setRowItems(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowItems;)V
.end method

.method public abstract setShowCalcMbrs(Z)V
.end method

.method public abstract setShowDataDropDown(Z)V
.end method

.method public abstract setShowDataTips(Z)V
.end method

.method public abstract setShowDrill(Z)V
.end method

.method public abstract setShowDropZones(Z)V
.end method

.method public abstract setShowEmptyCol(Z)V
.end method

.method public abstract setShowEmptyRow(Z)V
.end method

.method public abstract setShowError(Z)V
.end method

.method public abstract setShowHeaders(Z)V
.end method

.method public abstract setShowItems(Z)V
.end method

.method public abstract setShowMemberPropertyTips(Z)V
.end method

.method public abstract setShowMissing(Z)V
.end method

.method public abstract setShowMultipleLabel(Z)V
.end method

.method public abstract setSubtotalHiddenItems(Z)V
.end method

.method public abstract setTag(Ljava/lang/String;)V
.end method

.method public abstract setUpdatedVersion(S)V
.end method

.method public abstract setUseAutoFormatting(Z)V
.end method

.method public abstract setVacatedStyle(Ljava/lang/String;)V
.end method

.method public abstract setVisualTotals(Z)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetApplyAlignmentFormats()V
.end method

.method public abstract unsetApplyBorderFormats()V
.end method

.method public abstract unsetApplyFontFormats()V
.end method

.method public abstract unsetApplyNumberFormats()V
.end method

.method public abstract unsetApplyPatternFormats()V
.end method

.method public abstract unsetApplyWidthHeightFormats()V
.end method

.method public abstract unsetAsteriskTotals()V
.end method

.method public abstract unsetAutoFormatId()V
.end method

.method public abstract unsetChartFormat()V
.end method

.method public abstract unsetChartFormats()V
.end method

.method public abstract unsetColFields()V
.end method

.method public abstract unsetColGrandTotals()V
.end method

.method public abstract unsetColHeaderCaption()V
.end method

.method public abstract unsetColHierarchiesUsage()V
.end method

.method public abstract unsetColItems()V
.end method

.method public abstract unsetCompact()V
.end method

.method public abstract unsetCompactData()V
.end method

.method public abstract unsetConditionalFormats()V
.end method

.method public abstract unsetCreatedVersion()V
.end method

.method public abstract unsetCustomListSort()V
.end method

.method public abstract unsetDataFields()V
.end method

.method public abstract unsetDataOnRows()V
.end method

.method public abstract unsetDataPosition()V
.end method

.method public abstract unsetDisableFieldList()V
.end method

.method public abstract unsetEditData()V
.end method

.method public abstract unsetEnableDrill()V
.end method

.method public abstract unsetEnableFieldProperties()V
.end method

.method public abstract unsetEnableWizard()V
.end method

.method public abstract unsetErrorCaption()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFieldListSortAscending()V
.end method

.method public abstract unsetFieldPrintTitles()V
.end method

.method public abstract unsetFilters()V
.end method

.method public abstract unsetFormats()V
.end method

.method public abstract unsetGrandTotalCaption()V
.end method

.method public abstract unsetGridDropZones()V
.end method

.method public abstract unsetImmersive()V
.end method

.method public abstract unsetIndent()V
.end method

.method public abstract unsetItemPrintTitles()V
.end method

.method public abstract unsetMdxSubqueries()V
.end method

.method public abstract unsetMergeItem()V
.end method

.method public abstract unsetMinRefreshableVersion()V
.end method

.method public abstract unsetMissingCaption()V
.end method

.method public abstract unsetMultipleFieldFilters()V
.end method

.method public abstract unsetOutline()V
.end method

.method public abstract unsetOutlineData()V
.end method

.method public abstract unsetPageFields()V
.end method

.method public abstract unsetPageOverThenDown()V
.end method

.method public abstract unsetPageStyle()V
.end method

.method public abstract unsetPageWrap()V
.end method

.method public abstract unsetPivotFields()V
.end method

.method public abstract unsetPivotHierarchies()V
.end method

.method public abstract unsetPivotTableStyle()V
.end method

.method public abstract unsetPivotTableStyleInfo()V
.end method

.method public abstract unsetPreserveFormatting()V
.end method

.method public abstract unsetPrintDrill()V
.end method

.method public abstract unsetPublished()V
.end method

.method public abstract unsetRowFields()V
.end method

.method public abstract unsetRowGrandTotals()V
.end method

.method public abstract unsetRowHeaderCaption()V
.end method

.method public abstract unsetRowHierarchiesUsage()V
.end method

.method public abstract unsetRowItems()V
.end method

.method public abstract unsetShowCalcMbrs()V
.end method

.method public abstract unsetShowDataDropDown()V
.end method

.method public abstract unsetShowDataTips()V
.end method

.method public abstract unsetShowDrill()V
.end method

.method public abstract unsetShowDropZones()V
.end method

.method public abstract unsetShowEmptyCol()V
.end method

.method public abstract unsetShowEmptyRow()V
.end method

.method public abstract unsetShowError()V
.end method

.method public abstract unsetShowHeaders()V
.end method

.method public abstract unsetShowItems()V
.end method

.method public abstract unsetShowMemberPropertyTips()V
.end method

.method public abstract unsetShowMissing()V
.end method

.method public abstract unsetShowMultipleLabel()V
.end method

.method public abstract unsetSubtotalHiddenItems()V
.end method

.method public abstract unsetTag()V
.end method

.method public abstract unsetUpdatedVersion()V
.end method

.method public abstract unsetUseAutoFormatting()V
.end method

.method public abstract unsetVacatedStyle()V
.end method

.method public abstract unsetVisualTotals()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetApplyAlignmentFormats()Li5/m0;
.end method

.method public abstract xgetApplyBorderFormats()Li5/m0;
.end method

.method public abstract xgetApplyFontFormats()Li5/m0;
.end method

.method public abstract xgetApplyNumberFormats()Li5/m0;
.end method

.method public abstract xgetApplyPatternFormats()Li5/m0;
.end method

.method public abstract xgetApplyWidthHeightFormats()Li5/m0;
.end method

.method public abstract xgetAsteriskTotals()Li5/m0;
.end method

.method public abstract xgetAutoFormatId()Li5/l2;
.end method

.method public abstract xgetCacheId()Li5/l2;
.end method

.method public abstract xgetChartFormat()Li5/l2;
.end method

.method public abstract xgetColGrandTotals()Li5/m0;
.end method

.method public abstract xgetColHeaderCaption()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetCompact()Li5/m0;
.end method

.method public abstract xgetCompactData()Li5/m0;
.end method

.method public abstract xgetCreatedVersion()Li5/k2;
.end method

.method public abstract xgetCustomListSort()Li5/m0;
.end method

.method public abstract xgetDataCaption()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDataOnRows()Li5/m0;
.end method

.method public abstract xgetDataPosition()Li5/l2;
.end method

.method public abstract xgetDisableFieldList()Li5/m0;
.end method

.method public abstract xgetEditData()Li5/m0;
.end method

.method public abstract xgetEnableDrill()Li5/m0;
.end method

.method public abstract xgetEnableFieldProperties()Li5/m0;
.end method

.method public abstract xgetEnableWizard()Li5/m0;
.end method

.method public abstract xgetErrorCaption()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetFieldListSortAscending()Li5/m0;
.end method

.method public abstract xgetFieldPrintTitles()Li5/m0;
.end method

.method public abstract xgetGrandTotalCaption()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetGridDropZones()Li5/m0;
.end method

.method public abstract xgetImmersive()Li5/m0;
.end method

.method public abstract xgetIndent()Li5/l2;
.end method

.method public abstract xgetItemPrintTitles()Li5/m0;
.end method

.method public abstract xgetMdxSubqueries()Li5/m0;
.end method

.method public abstract xgetMergeItem()Li5/m0;
.end method

.method public abstract xgetMinRefreshableVersion()Li5/k2;
.end method

.method public abstract xgetMissingCaption()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetMultipleFieldFilters()Li5/m0;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetOutline()Li5/m0;
.end method

.method public abstract xgetOutlineData()Li5/m0;
.end method

.method public abstract xgetPageOverThenDown()Li5/m0;
.end method

.method public abstract xgetPageStyle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetPageWrap()Li5/l2;
.end method

.method public abstract xgetPivotTableStyle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetPreserveFormatting()Li5/m0;
.end method

.method public abstract xgetPrintDrill()Li5/m0;
.end method

.method public abstract xgetPublished()Li5/m0;
.end method

.method public abstract xgetRowGrandTotals()Li5/m0;
.end method

.method public abstract xgetRowHeaderCaption()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetShowCalcMbrs()Li5/m0;
.end method

.method public abstract xgetShowDataDropDown()Li5/m0;
.end method

.method public abstract xgetShowDataTips()Li5/m0;
.end method

.method public abstract xgetShowDrill()Li5/m0;
.end method

.method public abstract xgetShowDropZones()Li5/m0;
.end method

.method public abstract xgetShowEmptyCol()Li5/m0;
.end method

.method public abstract xgetShowEmptyRow()Li5/m0;
.end method

.method public abstract xgetShowError()Li5/m0;
.end method

.method public abstract xgetShowHeaders()Li5/m0;
.end method

.method public abstract xgetShowItems()Li5/m0;
.end method

.method public abstract xgetShowMemberPropertyTips()Li5/m0;
.end method

.method public abstract xgetShowMissing()Li5/m0;
.end method

.method public abstract xgetShowMultipleLabel()Li5/m0;
.end method

.method public abstract xgetSubtotalHiddenItems()Li5/m0;
.end method

.method public abstract xgetTag()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetUpdatedVersion()Li5/k2;
.end method

.method public abstract xgetUseAutoFormatting()Li5/m0;
.end method

.method public abstract xgetVacatedStyle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetVisualTotals()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetApplyAlignmentFormats(Li5/m0;)V
.end method

.method public abstract xsetApplyBorderFormats(Li5/m0;)V
.end method

.method public abstract xsetApplyFontFormats(Li5/m0;)V
.end method

.method public abstract xsetApplyNumberFormats(Li5/m0;)V
.end method

.method public abstract xsetApplyPatternFormats(Li5/m0;)V
.end method

.method public abstract xsetApplyWidthHeightFormats(Li5/m0;)V
.end method

.method public abstract xsetAsteriskTotals(Li5/m0;)V
.end method

.method public abstract xsetAutoFormatId(Li5/l2;)V
.end method

.method public abstract xsetCacheId(Li5/l2;)V
.end method

.method public abstract xsetChartFormat(Li5/l2;)V
.end method

.method public abstract xsetColGrandTotals(Li5/m0;)V
.end method

.method public abstract xsetColHeaderCaption(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetCompact(Li5/m0;)V
.end method

.method public abstract xsetCompactData(Li5/m0;)V
.end method

.method public abstract xsetCreatedVersion(Li5/k2;)V
.end method

.method public abstract xsetCustomListSort(Li5/m0;)V
.end method

.method public abstract xsetDataCaption(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDataOnRows(Li5/m0;)V
.end method

.method public abstract xsetDataPosition(Li5/l2;)V
.end method

.method public abstract xsetDisableFieldList(Li5/m0;)V
.end method

.method public abstract xsetEditData(Li5/m0;)V
.end method

.method public abstract xsetEnableDrill(Li5/m0;)V
.end method

.method public abstract xsetEnableFieldProperties(Li5/m0;)V
.end method

.method public abstract xsetEnableWizard(Li5/m0;)V
.end method

.method public abstract xsetErrorCaption(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetFieldListSortAscending(Li5/m0;)V
.end method

.method public abstract xsetFieldPrintTitles(Li5/m0;)V
.end method

.method public abstract xsetGrandTotalCaption(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetGridDropZones(Li5/m0;)V
.end method

.method public abstract xsetImmersive(Li5/m0;)V
.end method

.method public abstract xsetIndent(Li5/l2;)V
.end method

.method public abstract xsetItemPrintTitles(Li5/m0;)V
.end method

.method public abstract xsetMdxSubqueries(Li5/m0;)V
.end method

.method public abstract xsetMergeItem(Li5/m0;)V
.end method

.method public abstract xsetMinRefreshableVersion(Li5/k2;)V
.end method

.method public abstract xsetMissingCaption(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetMultipleFieldFilters(Li5/m0;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetOutline(Li5/m0;)V
.end method

.method public abstract xsetOutlineData(Li5/m0;)V
.end method

.method public abstract xsetPageOverThenDown(Li5/m0;)V
.end method

.method public abstract xsetPageStyle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetPageWrap(Li5/l2;)V
.end method

.method public abstract xsetPivotTableStyle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetPreserveFormatting(Li5/m0;)V
.end method

.method public abstract xsetPrintDrill(Li5/m0;)V
.end method

.method public abstract xsetPublished(Li5/m0;)V
.end method

.method public abstract xsetRowGrandTotals(Li5/m0;)V
.end method

.method public abstract xsetRowHeaderCaption(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetShowCalcMbrs(Li5/m0;)V
.end method

.method public abstract xsetShowDataDropDown(Li5/m0;)V
.end method

.method public abstract xsetShowDataTips(Li5/m0;)V
.end method

.method public abstract xsetShowDrill(Li5/m0;)V
.end method

.method public abstract xsetShowDropZones(Li5/m0;)V
.end method

.method public abstract xsetShowEmptyCol(Li5/m0;)V
.end method

.method public abstract xsetShowEmptyRow(Li5/m0;)V
.end method

.method public abstract xsetShowError(Li5/m0;)V
.end method

.method public abstract xsetShowHeaders(Li5/m0;)V
.end method

.method public abstract xsetShowItems(Li5/m0;)V
.end method

.method public abstract xsetShowMemberPropertyTips(Li5/m0;)V
.end method

.method public abstract xsetShowMissing(Li5/m0;)V
.end method

.method public abstract xsetShowMultipleLabel(Li5/m0;)V
.end method

.method public abstract xsetSubtotalHiddenItems(Li5/m0;)V
.end method

.method public abstract xsetTag(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetUpdatedVersion(Li5/k2;)V
.end method

.method public abstract xsetUseAutoFormatting(Li5/m0;)V
.end method

.method public abstract xsetVacatedStyle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetVisualTotals(Li5/m0;)V
.end method
