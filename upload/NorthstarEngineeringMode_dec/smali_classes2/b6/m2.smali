.class public final synthetic Lb6/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb6/m2;->a:I

    iput-object p1, p0, Lb6/m2;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb6/m2;->a:I

    iget-object p0, p0, Lb6/m2;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->insertNewHueOff(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAngle;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->getLumModArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->insertNewBlueOff(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->getGammaArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGammaTransform;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->insertNewSat(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->getBlueArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->insertNewHueMod(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->getSatOffArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->insertNewGray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleTransform;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->getTintArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->insertNewLum(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->getAlphaArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->insertNewLumOff(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->getShadeArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->insertNewSatMod(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->getCompArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTComplementTransform;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->insertNewGreenMod(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->getGreenOffArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->insertNewInv(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseTransform;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
