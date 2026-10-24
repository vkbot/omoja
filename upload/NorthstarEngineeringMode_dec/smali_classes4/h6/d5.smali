.class public final synthetic Lh6/d5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/d5;->a:I

    iput-object p1, p0, Lh6/d5;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lh6/d5;->a:I

    iget-object p0, p0, Lh6/d5;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->removeObject(I)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->removeFootnoteRef(I)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->removeEndnoteRef(I)V

    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->removeRuby(I)V

    return-void

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->removeFootnoteReference(I)V

    return-void

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->removePict(I)V

    return-void

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->removeDayShort(I)V

    return-void

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->removeT(I)V

    return-void

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->removeYearLong(I)V

    return-void

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->removeCommentReference(I)V

    return-void

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRImpl;->removeLastRenderedPageBreak(I)V

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
