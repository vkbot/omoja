.class public final synthetic Lb6/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSRgbColorImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSRgbColorImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb6/f3;->a:I

    iput-object p1, p0, Lb6/f3;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSRgbColorImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseGammaTransform;

    iget-object p0, p0, Lb6/f3;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSRgbColorImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSRgbColorImpl;->setInvGammaArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseGammaTransform;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseTransform;

    iget-object p0, p0, Lb6/f3;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSRgbColorImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSRgbColorImpl;->setInvArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseTransform;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lb6/f3;->a:I

    iget-object v1, p0, Lb6/f3;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSRgbColorImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSRgbColorImpl;->setTintArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSRgbColorImpl;->setAlphaArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSRgbColorImpl;->setBlueOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lb6/f3;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lb6/f3;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSRgbColorImpl;->setRedModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTComplementTransform;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSRgbColorImpl;->setCompArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTComplementTransform;)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSRgbColorImpl;->setGreenOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSRgbColorImpl;->setLumModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

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
