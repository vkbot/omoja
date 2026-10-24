.class public final synthetic Lb6/z3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSchemeColorImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSchemeColorImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb6/z3;->a:I

    iput-object p1, p0, Lb6/z3;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSchemeColorImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleTransform;

    iget-object p0, p0, Lb6/z3;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSchemeColorImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSchemeColorImpl;->setGrayArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleTransform;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseGammaTransform;

    iget-object p0, p0, Lb6/z3;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSchemeColorImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSchemeColorImpl;->setInvGammaArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseGammaTransform;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lb6/z3;->a:I

    iget-object v1, p0, Lb6/z3;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSchemeColorImpl;

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lb6/z3;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lb6/z3;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSchemeColorImpl;->setBlueOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSchemeColorImpl;->setSatModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSchemeColorImpl;->setGreenOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSchemeColorImpl;->setRedModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSchemeColorImpl;->setAlphaArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSchemeColorImpl;->setGreenModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTComplementTransform;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTSchemeColorImpl;->setCompArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTComplementTransform;)V

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
