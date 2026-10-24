.class public final synthetic Lb6/v1;
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

    iput p2, p0, Lb6/v1;->a:I

    iput-object p1, p0, Lb6/v1;->b:Lorg/apache/xmlbeans/impl/values/p0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb6/v1;->a:I

    iget-object p0, p0, Lb6/v1;->b:Lorg/apache/xmlbeans/impl/values/p0;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataValidationsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataValidationsImpl;->insertNewDataValidation(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataBarImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataBarImpl;->getCfvoArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCustomWorkbookViewsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCustomWorkbookViewsImpl;->insertNewCustomWorkbookView(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomWorkbookView;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCustomPropertiesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCustomPropertiesImpl;->getCustomPrArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomProperty;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTControlsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTControlsImpl;->insertNewControl(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControl;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCommentListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCommentListImpl;->getCommentArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColsImpl;->insertNewCol(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColorScaleImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColorScaleImpl;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColFieldsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColFieldsImpl;->insertNewField(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellXfsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellXfsImpl;->insertNewXf(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellStyleXfsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellStyleXfsImpl;->getXfArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCalcChainImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCalcChainImpl;->insertNewC(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCacheFieldImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCacheFieldImpl;->getMpMapArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTBordersImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTBordersImpl;->insertNewBorder(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAutoFilterImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAutoFilterImpl;->getFilterColumnArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilterColumn;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTLTimeConditionListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTLTimeConditionListImpl;->insertNewCond(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTSlideIdListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTSlideIdListImpl;->getSldIdArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTExtensionListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTExtensionListImpl;->insertNewExt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTCustomerDataListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTCustomerDataListImpl;->getCustDataArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTCommentListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTCommentListImpl;->insertNewCm(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathParaImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathParaImpl;->insertNewOMath(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTMRImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTMRImpl;->getEArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTMImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTMImpl;->insertNewMr(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMR;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTDImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTDImpl;->getEArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/impl/CTPropertiesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/impl/CTPropertiesImpl;->getPropertyArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextTabStopListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextTabStopListImpl;->getTabArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextBodyImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextBodyImpl;->insertNewP(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableRowImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableRowImpl;->getTcArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableImpl;->insertNewTr(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DCubicBezierToImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DCubicBezierToImpl;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

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
