.class public final synthetic Lh6/oa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/oa;->a:I

    iput-object p1, p0, Lh6/oa;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lh6/oa;->a:I

    iget-object p0, p0, Lh6/oa;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->setPermStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;)V

    return-void

    :pswitch_0
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->setCustomXmlDelRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V

    return-void

    :pswitch_1
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->setFldSimpleArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;)V

    return-void

    :pswitch_2
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDirContentRun;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->setDirArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDirContentRun;)V

    return-void

    :pswitch_3
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->setCustomXmlInsRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V

    return-void

    :pswitch_4
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->setProofErrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;)V

    return-void

    :pswitch_5
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->setHyperlinkArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;)V

    return-void

    :pswitch_6
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->setCustomXmlMoveFromRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V

    return-void

    :pswitch_7
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->setMoveToRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;)V

    return-void

    :pswitch_8
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->setSubDocArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;)V

    return-void

    :pswitch_9
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlRun;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagRunImpl;->setCustomXmlArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlRun;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
