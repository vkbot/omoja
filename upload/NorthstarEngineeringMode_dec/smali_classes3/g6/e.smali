.class public final synthetic Lg6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/xmlbeans/impl/values/p0;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/values/p0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg6/e;->a:I

    iput-object p1, p0, Lg6/e;->b:Lorg/apache/xmlbeans/impl/values/p0;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg6/e;->a:I

    iget-object p0, p0, Lg6/e;->b:Lorg/apache/xmlbeans/impl/values/p0;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTStylesImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTStylesImpl;->sizeOfStyleArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagPrImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagPrImpl;->sizeOfAttrArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSettingsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSettingsImpl;->sizeOfActiveWritingStyleArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSectPrImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSectPrImpl;->sizeOfHeaderReferenceArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumberingImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumberingImpl;->sizeOfAbstractNumArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;->sizeOfInlineArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTColumnsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTColumnsImpl;->sizeOfColArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTWorksheetImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTWorksheetImpl;->sizeOfColsArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStylesImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStylesImpl;->sizeOfTableStyleArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableColumnsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableColumnsImpl;->sizeOfTableColumnArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSingleXmlCellsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSingleXmlCellsImpl;->sizeOfSingleXmlCellArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetViewImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetViewImpl;->sizeOfPivotSelectionArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRstImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRstImpl;->sizeOfRArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRowFieldsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRowFieldsImpl;->sizeOfFieldArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotCacheRecordsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotCacheRecordsImpl;->sizeOfRArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPageFieldsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPageFieldsImpl;->sizeOfPageFieldArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTNumFmtsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTNumFmtsImpl;->sizeOfNumFmtArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMapInfoImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMapInfoImpl;->sizeOfMapArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;->sizeOfIgnoredErrorArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTFunctionGroupsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTFunctionGroupsImpl;->sizeOfFunctionGroupArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalSheetNamesImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalSheetNamesImpl;->sizeOfSheetNameArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalRowImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalRowImpl;->sizeOfCellArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExtensionListImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExtensionListImpl;->sizeOfExtArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataValidationsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataValidationsImpl;->sizeOfDataValidationArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCustomWorkbookViewsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCustomWorkbookViewsImpl;->sizeOfCustomWorkbookViewArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTControlsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTControlsImpl;->sizeOfControlArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColsImpl;->sizeOfColArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColFieldsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColFieldsImpl;->sizeOfFieldArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
