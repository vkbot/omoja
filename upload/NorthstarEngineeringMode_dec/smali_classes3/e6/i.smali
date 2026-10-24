.class public final synthetic Le6/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Le6/i;->a:I

    iput-object p1, p0, Le6/i;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Le6/i;->a:I

    iget-object p0, p0, Le6/i;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeHyperlink(I)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeBar(I)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeLimLow(I)V

    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeCustomXmlMoveToRangeStart(I)V

    return-void

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeSPre(I)V

    return-void

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeF(I)V

    return-void

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeBox(I)V

    return-void

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeNary(I)V

    return-void

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removePermStart(I)V

    return-void

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeD(I)V

    return-void

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeMoveFromRangeEnd(I)V

    return-void

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeCustomXmlDelRangeStart(I)V

    return-void

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeCustomXmlMoveFromRangeStart(I)V

    return-void

    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeCommentRangeEnd(I)V

    return-void

    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeM(I)V

    return-void

    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeProofErr(I)V

    return-void

    :pswitch_f
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeCustomXmlMoveFromRangeEnd(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
