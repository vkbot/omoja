.class public final synthetic Lb6/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb6/p0;->a:I

    iput-object p1, p0, Lb6/p0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb6/p0;->a:I

    iget-object p0, p0, Lb6/p0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getXfrmArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransformEffect;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewReflection(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTReflectionEffect;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getTintArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTintEffect;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewSoftEdge(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSoftEdgesEffect;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getClrReplArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorReplaceEffect;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewLum(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLuminanceEffect;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getBlurArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewRelOff(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeOffsetEffect;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getBlendArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlendEffect;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewGrayscl(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleEffect;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getBiLevelArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBiLevelEffect;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewAlphaModFix(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateFixedEffect;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getFillOverlayArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewGlow(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGlowEffect;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getPrstShdwArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetShadowEffect;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewClrChange(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorChangeEffect;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getFillArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillEffect;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewAlphaOutset(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaOutsetEffect;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getAlphaReplArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaReplaceEffect;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewAlphaInv(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaInverseEffect;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
