.class public final synthetic Lb6/w4;
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

    iput p2, p0, Lb6/w4;->a:I

    iput-object p1, p0, Lb6/w4;->b:Lorg/apache/xmlbeans/impl/values/p0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lb6/w4;->a:I

    iget-object p0, p0, Lb6/w4;->b:Lorg/apache/xmlbeans/impl/values/p0;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStyleImpl;->setTableStyleElementArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSstImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSstImpl;->setSiArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    return-void

    :pswitch_1
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetsImpl;->setSheetArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;)V

    return-void

    :pswitch_2
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetViewImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetViewImpl;->setSelectionArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;)V

    return-void

    :pswitch_3
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRstImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticRun;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRstImpl;->setRPhArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticRun;)V

    return-void

    :pswitch_4
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRange;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangesImpl;->setProtectedRangeArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRange;)V

    return-void

    :pswitch_5
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Li5/g2;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->xsetSecurityDescriptorArray(ILi5/g2;)V

    return-void

    :pswitch_6
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotFieldsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotFieldsImpl;->setPivotFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;)V

    return-void

    :pswitch_7
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotAreaReferencesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotAreaReferencesImpl;->setReferenceArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;)V

    return-void

    :pswitch_8
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPageBreakImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPageBreakImpl;->setBrkArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;)V

    return-void

    :pswitch_9
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMergeCellsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMergeCellsImpl;->setMergeCellArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;)V

    return-void

    :pswitch_a
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTItemsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTItemsImpl;->setItemArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;)V

    return-void

    :pswitch_b
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIconSetImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIconSetImpl;->setCfvoArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    return-void

    :pswitch_c
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTFontsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTFontsImpl;->setFontArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;)V

    return-void

    :pswitch_d
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalSheetDataSetImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetData;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalSheetDataSetImpl;->setSheetDataArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetData;)V

    return-void

    :pswitch_e
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalReferencesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalReferencesImpl;->setExternalReferenceArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;)V

    return-void

    :pswitch_f
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDxfsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDxfsImpl;->setDxfArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;)V

    return-void

    :pswitch_10
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataFieldsImpl;->setDataFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;)V

    return-void

    :pswitch_11
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCustomSheetViewsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomSheetView;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCustomSheetViewsImpl;->setCustomSheetViewArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomSheetView;)V

    return-void

    :pswitch_12
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTConditionalFormattingImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTConditionalFormattingImpl;->setCfRuleArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;)V

    return-void

    :pswitch_13
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColorScaleImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColorScaleImpl;->setCfvoArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    return-void

    :pswitch_14
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellWatchesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellWatch;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellWatchesImpl;->setCellWatchArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellWatch;)V

    return-void

    :pswitch_15
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCacheFieldsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCacheFieldsImpl;->setCacheFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;)V

    return-void

    :pswitch_16
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTBookViewsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTBookViewsImpl;->setWorkbookViewArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;)V

    return-void

    :pswitch_17
    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTSlideMasterIdListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTSlideMasterIdListImpl;->setSldMasterIdArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;)V

    return-void

    :pswitch_18
    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTEmbeddedFontListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTEmbeddedFontListImpl;->setEmbeddedFontArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;)V

    return-void

    :pswitch_19
    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTCommentAuthorListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTCommentAuthorListImpl;->setCmAuthorArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;)V

    return-void

    :pswitch_1a
    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTMCSImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMC;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTMCSImpl;->setMcArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTMC;)V

    return-void

    :pswitch_1b
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTDrawingImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTDrawingImpl;->setAbsoluteAnchorArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;)V

    return-void

    :pswitch_1c
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextParagraphImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextParagraphImpl;->setBrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;)V

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
