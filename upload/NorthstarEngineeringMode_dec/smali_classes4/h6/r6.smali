.class public final synthetic Lh6/r6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRubyContentImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRubyContentImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/r6;->a:I

    iput-object p1, p0, Lh6/r6;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRubyContentImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lh6/r6;->a:I

    iget-object p0, p0, Lh6/r6;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRubyContentImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRubyContentImpl;->removeCommentRangeStart(I)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRubyContentImpl;->removeBookmarkEnd(I)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRubyContentImpl;->removeIns(I)V

    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRubyContentImpl;->removeMoveFromRangeStart(I)V

    return-void

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRubyContentImpl;->removePermStart(I)V

    return-void

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRubyContentImpl;->removeCustomXmlInsRangeStart(I)V

    return-void

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRubyContentImpl;->removeCustomXmlMoveFromRangeEnd(I)V

    return-void

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRubyContentImpl;->removeMoveToRangeStart(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
