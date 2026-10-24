.class public final synthetic Lb6/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb6/o0;->a:I

    iput-object p1, p0, Lb6/o0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaInverseEffect;

    iget-object p0, p0, Lb6/o0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setAlphaInvArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaInverseEffect;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaOutsetEffect;

    iget-object p0, p0, Lb6/o0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setAlphaOutsetArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaOutsetEffect;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorChangeEffect;

    iget-object p0, p0, Lb6/o0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setClrChangeArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTColorChangeEffect;)V

    return-void
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGlowEffect;

    iget-object p0, p0, Lb6/o0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setGlowArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGlowEffect;)V

    return-void
.end method

.method private final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleEffect;

    iget-object p0, p0, Lb6/o0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setGraysclArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleEffect;)V

    return-void
.end method

.method private final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeOffsetEffect;

    iget-object p0, p0, Lb6/o0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setRelOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeOffsetEffect;)V

    return-void
.end method

.method private final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLuminanceEffect;

    iget-object p0, p0, Lb6/o0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setLumArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTLuminanceEffect;)V

    return-void
.end method

.method private final h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSoftEdgesEffect;

    iget-object p0, p0, Lb6/o0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setSoftEdgeArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTSoftEdgesEffect;)V

    return-void
.end method

.method private final i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTReflectionEffect;

    iget-object p0, p0, Lb6/o0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setReflectionArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTReflectionEffect;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lb6/o0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lb6/o0;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lb6/o0;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lb6/o0;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lb6/o0;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lb6/o0;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateFixedEffect;

    iget-object p0, p0, Lb6/o0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setAlphaModFixArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateFixedEffect;)V

    return-void

    :pswitch_5
    invoke-direct {p0, p1, p2}, Lb6/o0;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_6
    invoke-direct {p0, p1, p2}, Lb6/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_7
    invoke-direct {p0, p1, p2}, Lb6/o0;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_8
    invoke-direct {p0, p1, p2}, Lb6/o0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

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
