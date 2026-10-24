.class public final synthetic Lh6/ha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/ha;->a:I

    iput-object p1, p0, Lh6/ha;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lh6/ha;->a:I

    iget-object p0, p0, Lh6/ha;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->insertNewMoveTo(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->getOMathParaArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->insertNewDel(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->getMoveFromArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->insertNewIns(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->getBdoArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBdoContentRun;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->insertNewR(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->getBookmarkStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->insertNewCustomXmlMoveToRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->getCustomXmlMoveFromRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->insertNewMoveFromRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->getSmartTagArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->insertNewCommentRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->getCustomXmlInsRangeStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->insertNewPermEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->getCustomXmlDelRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->insertNewMoveFromRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->getOMathArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->insertNewCustomXmlMoveToRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->getBookmarkEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->insertNewMoveToRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->getSdtArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->insertNewCommentRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
