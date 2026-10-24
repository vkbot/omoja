.class public final synthetic Lb6/w0;
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

    iput p2, p0, Lb6/w0;->a:I

    iput-object p1, p0, Lb6/w0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaBiLevelEffect;

    iget-object p0, p0, Lb6/w0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setAlphaBiLevelArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaBiLevelEffect;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaCeilingEffect;

    iget-object p0, p0, Lb6/w0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setAlphaCeilingArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaCeilingEffect;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInnerShadowEffect;

    iget-object p0, p0, Lb6/w0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setInnerShdwArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTInnerShadowEffect;)V

    return-void
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateEffect;

    iget-object p0, p0, Lb6/w0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setAlphaModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateEffect;)V

    return-void
.end method

.method private final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectReference;

    iget-object p0, p0, Lb6/w0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setEffectArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectReference;)V

    return-void
.end method

.method private final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaFloorEffect;

    iget-object p0, p0, Lb6/w0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setAlphaFloorArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaFloorEffect;)V

    return-void
.end method

.method private final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHSLEffect;

    iget-object p0, p0, Lb6/w0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setHslArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTHSLEffect;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lb6/w0;->a:I

    iget-object v1, p0, Lb6/w0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lb6/w0;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lb6/w0;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lb6/w0;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setOuterShdwArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lb6/w0;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lb6/w0;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setDuotoneArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;)V

    return-void

    :pswitch_6
    invoke-direct {p0, p1, p2}, Lb6/w0;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->setContArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;)V

    return-void

    :pswitch_8
    invoke-direct {p0, p1, p2}, Lb6/w0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

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
