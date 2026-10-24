.class public final synthetic Le6/f0;
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

    iput p2, p0, Le6/f0;->a:I

    iput-object p1, p0, Le6/f0;->b:Lorg/apache/xmlbeans/impl/values/p0;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Le6/f0;->b:Lorg/apache/xmlbeans/impl/values/p0;

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTFunctionGroupsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFunctionGroup;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTFunctionGroupsImpl;->setFunctionGroupArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFunctionGroup;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Le6/f0;->b:Lorg/apache/xmlbeans/impl/values/p0;

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotCacheRecordsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRecord;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPivotCacheRecordsImpl;->setRArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRecord;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Le6/f0;->b:Lorg/apache/xmlbeans/impl/values/p0;

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetViewImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotSelection;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSheetViewImpl;->setPivotSelectionArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotSelection;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Le6/f0;->a:I

    iget-object v1, p0, Le6/f0;->b:Lorg/apache/xmlbeans/impl/values/p0;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTWorksheetImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTWorksheetImpl;->setColsArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    return-void

    :pswitch_0
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStylesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableStylesImpl;->setTableStyleArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;)V

    return-void

    :pswitch_1
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableColumnsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTTableColumnsImpl;->setTableColumnArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;)V

    return-void

    :pswitch_2
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSingleXmlCellsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSingleXmlCellsImpl;->setSingleXmlCellArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1, p2}, Le6/f0;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRstImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRstImpl;->setRArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;)V

    return-void

    :pswitch_5
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRowFieldsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTRowFieldsImpl;->setFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;)V

    return-void

    :pswitch_6
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTProtectedRangeImpl;->insertSecurityDescriptor(ILjava/lang/String;)V

    return-void

    :pswitch_7
    invoke-direct {p0, p1, p2}, Le6/f0;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_8
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPageFieldsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTPageFieldsImpl;->setPageFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;)V

    return-void

    :pswitch_9
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTNumFmtsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTNumFmtsImpl;->setNumFmtArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;)V

    return-void

    :pswitch_a
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMapInfoImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTMapInfoImpl;->setMapArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;)V

    return-void

    :pswitch_b
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTIgnoredErrorsImpl;->setIgnoredErrorArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)V

    return-void

    :pswitch_c
    invoke-direct {p0, p1, p2}, Le6/f0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_d
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalSheetNamesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalSheetNamesImpl;->setSheetNameArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;)V

    return-void

    :pswitch_e
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalRowImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExternalRowImpl;->setCellArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;)V

    return-void

    :pswitch_f
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExtensionListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtension;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTExtensionListImpl;->setExtArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtension;)V

    return-void

    :pswitch_10
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataValidationsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTDataValidationsImpl;->setDataValidationArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)V

    return-void

    :pswitch_11
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCustomWorkbookViewsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomWorkbookView;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCustomWorkbookViewsImpl;->setCustomWorkbookViewArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomWorkbookView;)V

    return-void

    :pswitch_12
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTControlsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControl;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTControlsImpl;->setControlArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControl;)V

    return-void

    :pswitch_13
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColsImpl;->setColArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    return-void

    :pswitch_14
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColFieldsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColFieldsImpl;->setFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;)V

    return-void

    :pswitch_15
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellXfsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellXfsImpl;->setXfArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V

    return-void

    :pswitch_16
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCalcChainImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCalcChainImpl;->setCArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;)V

    return-void

    :pswitch_17
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTBordersImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTBordersImpl;->setBorderArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;)V

    return-void

    :pswitch_18
    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAuthorsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAuthorsImpl;->setAuthorArray(ILjava/lang/String;)V

    return-void

    :pswitch_19
    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTLTimeConditionListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTLTimeConditionListImpl;->setCondArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;)V

    return-void

    :pswitch_1a
    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTExtensionListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTExtensionListImpl;->setExtArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;)V

    return-void

    :pswitch_1b
    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTCommentListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTCommentListImpl;->setCmArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;)V

    return-void

    :pswitch_1c
    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathParaImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathParaImpl;->setOMathArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;)V

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
