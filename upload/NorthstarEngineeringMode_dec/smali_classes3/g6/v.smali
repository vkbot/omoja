.class public final synthetic Lg6/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/xmlbeans/impl/values/p0;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/values/p0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg6/v;->a:I

    iput-object p1, p0, Lg6/v;->b:Lorg/apache/xmlbeans/impl/values/p0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg6/v;->a:I

    iget-object p0, p0, Lg6/v;->b:Lorg/apache/xmlbeans/impl/values/p0;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTStylesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTStylesImpl;->getStyleArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTStyleImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTStyleImpl;->insertNewTblStylePr(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblStylePr;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagPrImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagPrImpl;->getAttrArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAttr;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSectPrImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSectPrImpl;->getHeaderReferenceArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtEndPrImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtEndPrImpl;->insertNewRPr(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumImpl;->insertNewLvlOverride(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFootnotesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFootnotesImpl;->insertNewFootnote(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTCustomXmlPrImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTCustomXmlPrImpl;->insertNewAttr(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAttr;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTColumnsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTColumnsImpl;->getColArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumn;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStylesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStylesImpl;->getTableStyleArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;->insertNewTableStyleElement(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableColumnsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableColumnsImpl;->getTableColumnArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSstImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSstImpl;->insertNewSi(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSingleXmlCellsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSingleXmlCellsImpl;->getSingleXmlCellArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetsImpl;->insertNewSheet(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRowFieldsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRowFieldsImpl;->getFieldArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangesImpl;->insertNewProtectedRange(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRange;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->insertNewSecurityDescriptor(I)Li5/g2;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotFieldsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotFieldsImpl;->insertNewPivotField(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotCacheRecordsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotCacheRecordsImpl;->getRArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRecord;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotAreaReferencesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotAreaReferencesImpl;->insertNewReference(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPageFieldsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPageFieldsImpl;->getPageFieldArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPageBreakImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPageBreakImpl;->insertNewBrk(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTNumFmtsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTNumFmtsImpl;->getNumFmtArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMergeCellsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMergeCellsImpl;->insertNewMergeCell(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMapInfoImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMapInfoImpl;->getMapArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTItemsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTItemsImpl;->insertNewItem(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;->getIgnoredErrorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIconSetImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIconSetImpl;->insertNewCfvo(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTFunctionGroupsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTFunctionGroupsImpl;->getFunctionGroupArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFunctionGroup;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
