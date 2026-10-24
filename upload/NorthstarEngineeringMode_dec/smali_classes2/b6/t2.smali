.class public final synthetic Lb6/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb6/t2;->a:I

    iput-object p1, p0, Lb6/t2;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseGammaTransform;

    iget-object p0, p0, Lb6/t2;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->setInvGammaArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseGammaTransform;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lb6/t2;->a:I

    iget-object v1, p0, Lb6/t2;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFixedPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->setAlphaOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTFixedPercentage;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->setAlphaModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->setGreenArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedAngle;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->setHueArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedAngle;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lb6/t2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->setBlueModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->setRedArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->setRedOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

    return-void

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPresetColorImpl;->setRedModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V

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
