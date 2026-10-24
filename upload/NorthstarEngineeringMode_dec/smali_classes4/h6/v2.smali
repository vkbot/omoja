.class public final synthetic Lh6/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/v2;->a:I

    iput-object p1, p0, Lh6/v2;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lh6/v2;->a:I

    iget-object p0, p0, Lh6/v2;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->getInsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->insertNewCommentRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->getFldSimpleArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->insertNewCustomXml(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlRun;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->getBdoArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBdoContentRun;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->insertNewProofErr(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->getCustomXmlInsRangeStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->insertNewMoveToRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->getCommentRangeStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->insertNewSmartTag(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->getCustomXmlInsRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->insertNewMoveFromRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->getCustomXmlMoveToRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->insertNewOMathPara(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->getPermEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->insertNewCustomXmlMoveFromRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->getBookmarkEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->insertNewCustomXmlDelRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->getSubDocArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->insertNewBookmarkStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->getRArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->insertNewDel(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTHyperlinkImpl;->getCustomXmlMoveFromRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

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
