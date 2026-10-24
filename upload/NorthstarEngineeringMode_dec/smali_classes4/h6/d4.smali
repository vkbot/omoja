.class public final synthetic Lh6/d4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/d4;->a:I

    iput-object p1, p0, Lh6/d4;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lh6/d4;->a:I

    iget-object p0, p0, Lh6/d4;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setBCsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void

    :pswitch_0
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setSzCsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V

    return-void

    :pswitch_1
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setSmallCapsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void

    :pswitch_2
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setWArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;)V

    return-void

    :pswitch_3
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setUArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;)V

    return-void

    :pswitch_4
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setColorArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;)V

    return-void

    :pswitch_5
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setIArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void

    :pswitch_6
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setPositionArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;)V

    return-void

    :pswitch_7
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setStrikeArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void

    :pswitch_8
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFitText;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setFitTextArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFitText;)V

    return-void

    :pswitch_9
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setSpecVanishArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void

    :pswitch_a
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setDstrikeArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void

    :pswitch_b
    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setImprintArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
