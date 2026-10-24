.class public final synthetic Lh6/m8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/m8;->a:I

    iput-object p1, p0, Lh6/m8;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lh6/m8;->a:I

    iget-object p0, p0, Lh6/m8;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->removeCustomXmlDelRangeEnd(I)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->removeOMathPara(I)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->removeCustomXmlInsRangeEnd(I)V

    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->removeMoveTo(I)V

    return-void

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->removeCustomXmlMoveToRangeEnd(I)V

    return-void

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->removeMoveFromRangeStart(I)V

    return-void

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->removeCustomXml(I)V

    return-void

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->removeBookmarkStart(I)V

    return-void

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentCellImpl;->removeCustomXmlMoveFromRangeStart(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
