.class public final synthetic Lh6/c7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/c7;->a:I

    iput-object p1, p0, Lh6/c7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lh6/c7;->a:I

    iget-object p0, p0, Lh6/c7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewCustomXmlMoveToRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getGroupChrArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewBdo(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBdoContentRun;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getBookmarkStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewMoveFromRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getR2Array(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTR;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewMoveToRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getCustomXmlArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlRun;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewCustomXmlMoveFromRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getMoveToRangeStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewFunc(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getSSubSupArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSubSup;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewLimLow(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLow;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getCommentRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewCustomXmlMoveFromRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getBorderBoxArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBox;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewSSup(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSup;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getSSubArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSub;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewOMath(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getNaryArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTNary;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewR(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getProofErrArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewAcc(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTAcc;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getLimUppArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimUpp;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewSmartTag(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getFArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTF;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewMoveFromRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getRadArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTRad;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->insertNewCommentRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_1c
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->getPermStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;

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
