.class public final synthetic Lh6/vb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/vb;->a:I

    iput-object p1, p0, Lh6/vb;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lh6/vb;->a:I

    iget-object p0, p0, Lh6/vb;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;->setDivIdArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V

    return-void

    :pswitch_0
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;->setTrHeightArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;)V

    return-void

    :pswitch_1
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;->setGridAfterArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V

    return-void

    :pswitch_2
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;->setGridBeforeArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
