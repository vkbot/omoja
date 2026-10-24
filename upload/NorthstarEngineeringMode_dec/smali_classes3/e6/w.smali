.class public final synthetic Le6/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Le6/w;->a:I

    iput-object p1, p0, Le6/w;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Le6/w;->a:I

    iget-object p0, p0, Le6/w;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getInsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewOMath(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getGroupChrArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewCustomXmlDelRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getHyperlinkArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewD(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTD;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getMoveFromRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewPermStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getBookmarkEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewCustomXmlMoveFromRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getCustomXmlDelRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewNary(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTNary;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getFArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTF;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewPhant(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTPhant;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getDelArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewCommentRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getBookmarkStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewMoveFromRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getMoveToRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewBox(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBox;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getOMathParaArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewSSub(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSub;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getBorderBoxArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBox;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewSdt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getRArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTR;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewCustomXml(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlRun;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getBarArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBar;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewMoveToRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getCustomXmlMoveToRangeStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_1c
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewCustomXmlMoveFromRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

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
