.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;",
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

    const-string v2, "ctpivotfieldf961type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewAutoSortScope()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoSortScope;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;
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

.method public abstract getAllDrilled()Z
.end method

.method public abstract getAutoShow()Z
.end method

.method public abstract getAutoSortScope()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoSortScope;
.end method

.method public abstract getAvgSubtotal()Z
.end method

.method public abstract getAxis()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;
.end method

.method public abstract getCompact()Z
.end method

.method public abstract getCountASubtotal()Z
.end method

.method public abstract getCountSubtotal()Z
.end method

.method public abstract getDataField()Z
.end method

.method public abstract getDataSourceSort()Z
.end method

.method public abstract getDefaultAttributeDrillState()Z
.end method

.method public abstract getDefaultSubtotal()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getDragOff()Z
.end method

.method public abstract getDragToCol()Z
.end method

.method public abstract getDragToData()Z
.end method

.method public abstract getDragToPage()Z
.end method

.method public abstract getDragToRow()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getHiddenLevel()Z
.end method

.method public abstract getHideNewItems()Z
.end method

.method public abstract getIncludeNewItemsInFilter()Z
.end method

.method public abstract getInsertBlankRow()Z
.end method

.method public abstract getInsertPageBreak()Z
.end method

.method public abstract getItemPageCount()J
.end method

.method public abstract getItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;
.end method

.method public abstract getMaxSubtotal()Z
.end method

.method public abstract getMeasureFilter()Z
.end method

.method public abstract getMinSubtotal()Z
.end method

.method public abstract getMultipleItemSelectionAllowed()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNonAutoSortDefault()Z
.end method

.method public abstract getNumFmtId()J
.end method

.method public abstract getOutline()Z
.end method

.method public abstract getProductSubtotal()Z
.end method

.method public abstract getRankBy()J
.end method

.method public abstract getServerField()Z
.end method

.method public abstract getShowAll()Z
.end method

.method public abstract getShowDropDowns()Z
.end method

.method public abstract getShowPropAsCaption()Z
.end method

.method public abstract getShowPropCell()Z
.end method

.method public abstract getShowPropTip()Z
.end method

.method public abstract getSortType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFieldSortType$Enum;
.end method

.method public abstract getStdDevPSubtotal()Z
.end method

.method public abstract getStdDevSubtotal()Z
.end method

.method public abstract getSubtotalCaption()Ljava/lang/String;
.end method

.method public abstract getSubtotalTop()Z
.end method

.method public abstract getSumSubtotal()Z
.end method

.method public abstract getTopAutoShow()Z
.end method

.method public abstract getUniqueMemberProperty()Ljava/lang/String;
.end method

.method public abstract getVarPSubtotal()Z
.end method

.method public abstract getVarSubtotal()Z
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAllDrilled()Z
.end method

.method public abstract isSetAutoShow()Z
.end method

.method public abstract isSetAutoSortScope()Z
.end method

.method public abstract isSetAvgSubtotal()Z
.end method

.method public abstract isSetAxis()Z
.end method

.method public abstract isSetCompact()Z
.end method

.method public abstract isSetCountASubtotal()Z
.end method

.method public abstract isSetCountSubtotal()Z
.end method

.method public abstract isSetDataField()Z
.end method

.method public abstract isSetDataSourceSort()Z
.end method

.method public abstract isSetDefaultAttributeDrillState()Z
.end method

.method public abstract isSetDefaultSubtotal()Z
.end method

.method public abstract isSetDragOff()Z
.end method

.method public abstract isSetDragToCol()Z
.end method

.method public abstract isSetDragToData()Z
.end method

.method public abstract isSetDragToPage()Z
.end method

.method public abstract isSetDragToRow()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHiddenLevel()Z
.end method

.method public abstract isSetHideNewItems()Z
.end method

.method public abstract isSetIncludeNewItemsInFilter()Z
.end method

.method public abstract isSetInsertBlankRow()Z
.end method

.method public abstract isSetInsertPageBreak()Z
.end method

.method public abstract isSetItemPageCount()Z
.end method

.method public abstract isSetItems()Z
.end method

.method public abstract isSetMaxSubtotal()Z
.end method

.method public abstract isSetMeasureFilter()Z
.end method

.method public abstract isSetMinSubtotal()Z
.end method

.method public abstract isSetMultipleItemSelectionAllowed()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetNonAutoSortDefault()Z
.end method

.method public abstract isSetNumFmtId()Z
.end method

.method public abstract isSetOutline()Z
.end method

.method public abstract isSetProductSubtotal()Z
.end method

.method public abstract isSetRankBy()Z
.end method

.method public abstract isSetServerField()Z
.end method

.method public abstract isSetShowAll()Z
.end method

.method public abstract isSetShowDropDowns()Z
.end method

.method public abstract isSetShowPropAsCaption()Z
.end method

.method public abstract isSetShowPropCell()Z
.end method

.method public abstract isSetShowPropTip()Z
.end method

.method public abstract isSetSortType()Z
.end method

.method public abstract isSetStdDevPSubtotal()Z
.end method

.method public abstract isSetStdDevSubtotal()Z
.end method

.method public abstract isSetSubtotalCaption()Z
.end method

.method public abstract isSetSubtotalTop()Z
.end method

.method public abstract isSetSumSubtotal()Z
.end method

.method public abstract isSetTopAutoShow()Z
.end method

.method public abstract isSetUniqueMemberProperty()Z
.end method

.method public abstract isSetVarPSubtotal()Z
.end method

.method public abstract isSetVarSubtotal()Z
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

.method public abstract setAllDrilled(Z)V
.end method

.method public abstract setAutoShow(Z)V
.end method

.method public abstract setAutoSortScope(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoSortScope;)V
.end method

.method public abstract setAvgSubtotal(Z)V
.end method

.method public abstract setAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;)V
.end method

.method public abstract setCompact(Z)V
.end method

.method public abstract setCountASubtotal(Z)V
.end method

.method public abstract setCountSubtotal(Z)V
.end method

.method public abstract setDataField(Z)V
.end method

.method public abstract setDataSourceSort(Z)V
.end method

.method public abstract setDefaultAttributeDrillState(Z)V
.end method

.method public abstract setDefaultSubtotal(Z)V
.end method

.method public abstract setDragOff(Z)V
.end method

.method public abstract setDragToCol(Z)V
.end method

.method public abstract setDragToData(Z)V
.end method

.method public abstract setDragToPage(Z)V
.end method

.method public abstract setDragToRow(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setHiddenLevel(Z)V
.end method

.method public abstract setHideNewItems(Z)V
.end method

.method public abstract setIncludeNewItemsInFilter(Z)V
.end method

.method public abstract setInsertBlankRow(Z)V
.end method

.method public abstract setInsertPageBreak(Z)V
.end method

.method public abstract setItemPageCount(J)V
.end method

.method public abstract setItems(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;)V
.end method

.method public abstract setMaxSubtotal(Z)V
.end method

.method public abstract setMeasureFilter(Z)V
.end method

.method public abstract setMinSubtotal(Z)V
.end method

.method public abstract setMultipleItemSelectionAllowed(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNonAutoSortDefault(Z)V
.end method

.method public abstract setNumFmtId(J)V
.end method

.method public abstract setOutline(Z)V
.end method

.method public abstract setProductSubtotal(Z)V
.end method

.method public abstract setRankBy(J)V
.end method

.method public abstract setServerField(Z)V
.end method

.method public abstract setShowAll(Z)V
.end method

.method public abstract setShowDropDowns(Z)V
.end method

.method public abstract setShowPropAsCaption(Z)V
.end method

.method public abstract setShowPropCell(Z)V
.end method

.method public abstract setShowPropTip(Z)V
.end method

.method public abstract setSortType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFieldSortType$Enum;)V
.end method

.method public abstract setStdDevPSubtotal(Z)V
.end method

.method public abstract setStdDevSubtotal(Z)V
.end method

.method public abstract setSubtotalCaption(Ljava/lang/String;)V
.end method

.method public abstract setSubtotalTop(Z)V
.end method

.method public abstract setSumSubtotal(Z)V
.end method

.method public abstract setTopAutoShow(Z)V
.end method

.method public abstract setUniqueMemberProperty(Ljava/lang/String;)V
.end method

.method public abstract setVarPSubtotal(Z)V
.end method

.method public abstract setVarSubtotal(Z)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAllDrilled()V
.end method

.method public abstract unsetAutoShow()V
.end method

.method public abstract unsetAutoSortScope()V
.end method

.method public abstract unsetAvgSubtotal()V
.end method

.method public abstract unsetAxis()V
.end method

.method public abstract unsetCompact()V
.end method

.method public abstract unsetCountASubtotal()V
.end method

.method public abstract unsetCountSubtotal()V
.end method

.method public abstract unsetDataField()V
.end method

.method public abstract unsetDataSourceSort()V
.end method

.method public abstract unsetDefaultAttributeDrillState()V
.end method

.method public abstract unsetDefaultSubtotal()V
.end method

.method public abstract unsetDragOff()V
.end method

.method public abstract unsetDragToCol()V
.end method

.method public abstract unsetDragToData()V
.end method

.method public abstract unsetDragToPage()V
.end method

.method public abstract unsetDragToRow()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHiddenLevel()V
.end method

.method public abstract unsetHideNewItems()V
.end method

.method public abstract unsetIncludeNewItemsInFilter()V
.end method

.method public abstract unsetInsertBlankRow()V
.end method

.method public abstract unsetInsertPageBreak()V
.end method

.method public abstract unsetItemPageCount()V
.end method

.method public abstract unsetItems()V
.end method

.method public abstract unsetMaxSubtotal()V
.end method

.method public abstract unsetMeasureFilter()V
.end method

.method public abstract unsetMinSubtotal()V
.end method

.method public abstract unsetMultipleItemSelectionAllowed()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetNonAutoSortDefault()V
.end method

.method public abstract unsetNumFmtId()V
.end method

.method public abstract unsetOutline()V
.end method

.method public abstract unsetProductSubtotal()V
.end method

.method public abstract unsetRankBy()V
.end method

.method public abstract unsetServerField()V
.end method

.method public abstract unsetShowAll()V
.end method

.method public abstract unsetShowDropDowns()V
.end method

.method public abstract unsetShowPropAsCaption()V
.end method

.method public abstract unsetShowPropCell()V
.end method

.method public abstract unsetShowPropTip()V
.end method

.method public abstract unsetSortType()V
.end method

.method public abstract unsetStdDevPSubtotal()V
.end method

.method public abstract unsetStdDevSubtotal()V
.end method

.method public abstract unsetSubtotalCaption()V
.end method

.method public abstract unsetSubtotalTop()V
.end method

.method public abstract unsetSumSubtotal()V
.end method

.method public abstract unsetTopAutoShow()V
.end method

.method public abstract unsetUniqueMemberProperty()V
.end method

.method public abstract unsetVarPSubtotal()V
.end method

.method public abstract unsetVarSubtotal()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAllDrilled()Li5/m0;
.end method

.method public abstract xgetAutoShow()Li5/m0;
.end method

.method public abstract xgetAvgSubtotal()Li5/m0;
.end method

.method public abstract xgetAxis()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;
.end method

.method public abstract xgetCompact()Li5/m0;
.end method

.method public abstract xgetCountASubtotal()Li5/m0;
.end method

.method public abstract xgetCountSubtotal()Li5/m0;
.end method

.method public abstract xgetDataField()Li5/m0;
.end method

.method public abstract xgetDataSourceSort()Li5/m0;
.end method

.method public abstract xgetDefaultAttributeDrillState()Li5/m0;
.end method

.method public abstract xgetDefaultSubtotal()Li5/m0;
.end method

.method public abstract xgetDragOff()Li5/m0;
.end method

.method public abstract xgetDragToCol()Li5/m0;
.end method

.method public abstract xgetDragToData()Li5/m0;
.end method

.method public abstract xgetDragToPage()Li5/m0;
.end method

.method public abstract xgetDragToRow()Li5/m0;
.end method

.method public abstract xgetHiddenLevel()Li5/m0;
.end method

.method public abstract xgetHideNewItems()Li5/m0;
.end method

.method public abstract xgetIncludeNewItemsInFilter()Li5/m0;
.end method

.method public abstract xgetInsertBlankRow()Li5/m0;
.end method

.method public abstract xgetInsertPageBreak()Li5/m0;
.end method

.method public abstract xgetItemPageCount()Li5/l2;
.end method

.method public abstract xgetMaxSubtotal()Li5/m0;
.end method

.method public abstract xgetMeasureFilter()Li5/m0;
.end method

.method public abstract xgetMinSubtotal()Li5/m0;
.end method

.method public abstract xgetMultipleItemSelectionAllowed()Li5/m0;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetNonAutoSortDefault()Li5/m0;
.end method

.method public abstract xgetNumFmtId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;
.end method

.method public abstract xgetOutline()Li5/m0;
.end method

.method public abstract xgetProductSubtotal()Li5/m0;
.end method

.method public abstract xgetRankBy()Li5/l2;
.end method

.method public abstract xgetServerField()Li5/m0;
.end method

.method public abstract xgetShowAll()Li5/m0;
.end method

.method public abstract xgetShowDropDowns()Li5/m0;
.end method

.method public abstract xgetShowPropAsCaption()Li5/m0;
.end method

.method public abstract xgetShowPropCell()Li5/m0;
.end method

.method public abstract xgetShowPropTip()Li5/m0;
.end method

.method public abstract xgetSortType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFieldSortType;
.end method

.method public abstract xgetStdDevPSubtotal()Li5/m0;
.end method

.method public abstract xgetStdDevSubtotal()Li5/m0;
.end method

.method public abstract xgetSubtotalCaption()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetSubtotalTop()Li5/m0;
.end method

.method public abstract xgetSumSubtotal()Li5/m0;
.end method

.method public abstract xgetTopAutoShow()Li5/m0;
.end method

.method public abstract xgetUniqueMemberProperty()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetVarPSubtotal()Li5/m0;
.end method

.method public abstract xgetVarSubtotal()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAllDrilled(Li5/m0;)V
.end method

.method public abstract xsetAutoShow(Li5/m0;)V
.end method

.method public abstract xsetAvgSubtotal(Li5/m0;)V
.end method

.method public abstract xsetAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;)V
.end method

.method public abstract xsetCompact(Li5/m0;)V
.end method

.method public abstract xsetCountASubtotal(Li5/m0;)V
.end method

.method public abstract xsetCountSubtotal(Li5/m0;)V
.end method

.method public abstract xsetDataField(Li5/m0;)V
.end method

.method public abstract xsetDataSourceSort(Li5/m0;)V
.end method

.method public abstract xsetDefaultAttributeDrillState(Li5/m0;)V
.end method

.method public abstract xsetDefaultSubtotal(Li5/m0;)V
.end method

.method public abstract xsetDragOff(Li5/m0;)V
.end method

.method public abstract xsetDragToCol(Li5/m0;)V
.end method

.method public abstract xsetDragToData(Li5/m0;)V
.end method

.method public abstract xsetDragToPage(Li5/m0;)V
.end method

.method public abstract xsetDragToRow(Li5/m0;)V
.end method

.method public abstract xsetHiddenLevel(Li5/m0;)V
.end method

.method public abstract xsetHideNewItems(Li5/m0;)V
.end method

.method public abstract xsetIncludeNewItemsInFilter(Li5/m0;)V
.end method

.method public abstract xsetInsertBlankRow(Li5/m0;)V
.end method

.method public abstract xsetInsertPageBreak(Li5/m0;)V
.end method

.method public abstract xsetItemPageCount(Li5/l2;)V
.end method

.method public abstract xsetMaxSubtotal(Li5/m0;)V
.end method

.method public abstract xsetMeasureFilter(Li5/m0;)V
.end method

.method public abstract xsetMinSubtotal(Li5/m0;)V
.end method

.method public abstract xsetMultipleItemSelectionAllowed(Li5/m0;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetNonAutoSortDefault(Li5/m0;)V
.end method

.method public abstract xsetNumFmtId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;)V
.end method

.method public abstract xsetOutline(Li5/m0;)V
.end method

.method public abstract xsetProductSubtotal(Li5/m0;)V
.end method

.method public abstract xsetRankBy(Li5/l2;)V
.end method

.method public abstract xsetServerField(Li5/m0;)V
.end method

.method public abstract xsetShowAll(Li5/m0;)V
.end method

.method public abstract xsetShowDropDowns(Li5/m0;)V
.end method

.method public abstract xsetShowPropAsCaption(Li5/m0;)V
.end method

.method public abstract xsetShowPropCell(Li5/m0;)V
.end method

.method public abstract xsetShowPropTip(Li5/m0;)V
.end method

.method public abstract xsetSortType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFieldSortType;)V
.end method

.method public abstract xsetStdDevPSubtotal(Li5/m0;)V
.end method

.method public abstract xsetStdDevSubtotal(Li5/m0;)V
.end method

.method public abstract xsetSubtotalCaption(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetSubtotalTop(Li5/m0;)V
.end method

.method public abstract xsetSumSubtotal(Li5/m0;)V
.end method

.method public abstract xsetTopAutoShow(Li5/m0;)V
.end method

.method public abstract xsetUniqueMemberProperty(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetVarPSubtotal(Li5/m0;)V
.end method

.method public abstract xsetVarSubtotal(Li5/m0;)V
.end method
