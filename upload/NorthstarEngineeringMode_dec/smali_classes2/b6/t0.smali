.class public final synthetic Lb6/t0;
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

    iput p2, p0, Lb6/t0;->a:I

    iput-object p1, p0, Lb6/t0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb6/t0;->a:I

    iget-object p0, p0, Lb6/t0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getHslArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHSLEffect;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewXfrm(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransformEffect;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getAlphaFloorArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaFloorEffect;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewTint(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTintEffect;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getEffectArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectReference;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewClrRepl(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorReplaceEffect;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getOuterShdwArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewBlur(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getAlphaModArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateEffect;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewBlend(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlendEffect;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getInnerShdwArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInnerShadowEffect;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewBiLevel(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBiLevelEffect;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getDuotoneArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewFillOverlay(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getAlphaCeilingArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaCeilingEffect;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewPrstShdw(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetShadowEffect;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getContArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewFill(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillEffect;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->getAlphaBiLevelArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaBiLevelEffect;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectContainerImpl;->insertNewAlphaRepl(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaReplaceEffect;

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
