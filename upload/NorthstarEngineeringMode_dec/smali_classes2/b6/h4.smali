.class public final synthetic Lb6/h4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSystemColorImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSystemColorImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb6/h4;->a:I

    iput-object p1, p0, Lb6/h4;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSystemColorImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lb6/h4;->a:I

    iget-object p0, p0, Lb6/h4;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSystemColorImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSystemColorImpl;->setLumArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_0
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSystemColorImpl;->setGreenOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_1
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSystemColorImpl;->setSatModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_2
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSystemColorImpl;->setBlueModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_3
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSystemColorImpl;->setGreenArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_4
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSystemColorImpl;->setSatOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_5
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSystemColorImpl;->setGreenModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_6
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTComplementTransform;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSystemColorImpl;->setCompArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTComplementTransform;)V

    return-void

    :pswitch_7
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSystemColorImpl;->setHueModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;)V

    return-void

    :pswitch_8
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSystemColorImpl;->setAlphaArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;)V

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
