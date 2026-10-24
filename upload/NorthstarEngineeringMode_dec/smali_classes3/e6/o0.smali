.class public final synthetic Le6/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Le6/o0;->a:I

    iput-object p1, p0, Le6/o0;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Le6/o0;->a:I

    iget-object p0, p0, Le6/o0;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->getContinuationSeparatorArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->insertNewMonthShort(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->getAnnotationRefArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->insertNewEndnoteRef(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->getYearLongArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->insertNewYearShort(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->getMonthLongArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->insertNewPict(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->getDayLongArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->insertNewSoftHyphen(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->getRubyArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->insertNewT(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->getFootnoteRefArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->insertNewCr(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->getNoBreakHyphenArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->insertNewInstrText(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->getSymArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSym;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->insertNewLastRenderedPageBreak(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->getContentPartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->insertNewPtab(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->getEndnoteReferenceArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTRImpl;->insertNewDayShort(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

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
