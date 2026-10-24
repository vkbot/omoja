.class public final synthetic Lc6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/xmlbeans/impl/values/p0;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/values/p0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lc6/d;->a:I

    iput-object p1, p0, Lc6/d;->b:Lorg/apache/xmlbeans/impl/values/p0;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lc6/d;->b:Lorg/apache/xmlbeans/impl/values/p0;

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTCustomerDataListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTCustomerDataListImpl;->setCustDataArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lc6/d;->b:Lorg/apache/xmlbeans/impl/values/p0;

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAutoFilterImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilterColumn;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAutoFilterImpl;->setFilterColumnArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilterColumn;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lc6/d;->b:Lorg/apache/xmlbeans/impl/values/p0;

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCacheFieldImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCacheFieldImpl;->setMpMapArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lc6/d;->a:I

    iget-object v1, p0, Lc6/d;->b:Lorg/apache/xmlbeans/impl/values/p0;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSortStateImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortCondition;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSortStateImpl;->setSortConditionArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortCondition;)V

    return-void

    :pswitch_0
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetViewsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetViewsImpl;->setSheetViewArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;)V

    return-void

    :pswitch_1
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetDataImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetDataImpl;->setRowArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;)V

    return-void

    :pswitch_2
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRowImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRowImpl;->setCArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V

    return-void

    :pswitch_3
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->setSecurityDescriptorArray(ILjava/lang/String;)V

    return-void

    :pswitch_4
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotCachesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotCachesImpl;->setPivotCacheArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;)V

    return-void

    :pswitch_5
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotAreaReferenceImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotAreaReferenceImpl;->setXArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;)V

    return-void

    :pswitch_6
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTOleObjectsImpl;->setOleObjectArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;)V

    return-void

    :pswitch_7
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMapInfoImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMapInfoImpl;->setSchemaArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;)V

    return-void

    :pswitch_8
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIndexedColorsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRgbColor;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIndexedColorsImpl;->setRgbColorArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRgbColor;)V

    return-void

    :pswitch_9
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTHyperlinksImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTHyperlinksImpl;->setHyperlinkArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;)V

    return-void

    :pswitch_a
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTFillsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTFillsImpl;->setFillArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;)V

    return-void

    :pswitch_b
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalSheetDataImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalSheetDataImpl;->setRowArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;)V

    return-void

    :pswitch_c
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalDefinedNamesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalDefinedNamesImpl;->setDefinedNameArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;)V

    return-void

    :pswitch_d
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDefinedNamesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDefinedNamesImpl;->setDefinedNameArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)V

    return-void

    :pswitch_e
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataBarImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataBarImpl;->setCfvoArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    return-void

    :pswitch_f
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCustomPropertiesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomProperty;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCustomPropertiesImpl;->setCustomPrArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomProperty;)V

    return-void

    :pswitch_10
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCommentListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCommentListImpl;->setCommentArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;)V

    return-void

    :pswitch_11
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColorScaleImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColorScaleImpl;->setColorArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void

    :pswitch_12
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCfRuleImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCfRuleImpl;->setFormulaArray(ILjava/lang/String;)V

    return-void

    :pswitch_13
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellStyleXfsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellStyleXfsImpl;->setXfArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V

    return-void

    :pswitch_14
    invoke-direct {p0, p1, p2}, Lc6/d;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_15
    invoke-direct {p0, p1, p2}, Lc6/d;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_16
    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTSlideIdListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTSlideIdListImpl;->setSldIdArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)V

    return-void

    :pswitch_17
    invoke-direct {p0, p1, p2}, Lc6/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_18
    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTMRImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTMRImpl;->setEArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;)V

    return-void

    :pswitch_19
    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTDImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTDImpl;->setEArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;)V

    return-void

    :pswitch_1a
    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/impl/CTPropertiesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/impl/CTPropertiesImpl;->setPropertyArray(ILorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;)V

    return-void

    :pswitch_1b
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTGroupShapeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTGroupShapeImpl;->setPicArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;)V

    return-void

    :pswitch_1c
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTDrawingImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTDrawingImpl;->setTwoCellAnchorArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;)V

    return-void

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
