.class public final synthetic Lh6/u4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/u4;->a:I

    iput-object p1, p0, Lh6/u4;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lh6/u4;->a:I

    iget-object p0, p0, Lh6/u4;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->insertNewMonthShort(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->getDelInstrTextArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->insertNewDrawing(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->getEndnoteReferenceArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->insertNewTab(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->getSoftHyphenArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->insertNewPtab(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->getDayLongArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->insertNewAnnotationRef(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->getCrArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->insertNewSym(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSym;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->getContentPartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->insertNewSeparator(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->getPgNumArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->insertNewMonthLong(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->getFldCharArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->insertNewInstrText(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->getContinuationSeparatorArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->insertNewYearShort(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->getDelTextArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->insertNewNoBreakHyphen(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->getBrArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
