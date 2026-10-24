.class public final synthetic Lh6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/p;->a:I

    iput-object p1, p0, Lh6/p;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lh6/p;->a:I

    iget-object p0, p0, Lh6/p;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;->setCustomXmlDelRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V

    return-void

    :pswitch_0
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;->setPermStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;)V

    return-void

    :pswitch_1
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;->setCustomXmlMoveFromRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V

    return-void

    :pswitch_2
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;->setCustomXmlInsRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V

    return-void

    :pswitch_3
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;->setProofErrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;)V

    return-void

    :pswitch_4
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;->setMoveFromArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V

    return-void

    :pswitch_5
    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;->setOMathArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;)V

    return-void

    :pswitch_6
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;->setMoveToRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    return-void

    :pswitch_7
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;->setTblArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)V

    return-void

    :pswitch_8
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;->setCustomXmlInsRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
