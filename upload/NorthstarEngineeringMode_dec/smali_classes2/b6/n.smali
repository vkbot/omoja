.class public final synthetic Lb6/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb6/n;->a:I

    iput-object p1, p0, Lb6/n;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb6/n;->a:I

    iget-object p0, p0, Lb6/n;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->getAlphaModFixArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateFixedEffect;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->insertNewClrRepl(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorReplaceEffect;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->getAlphaFloorArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaFloorEffect;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->insertNewBlur(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->getAlphaBiLevelArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaBiLevelEffect;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->insertNewAlphaMod(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateEffect;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->getAlphaInvArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaInverseEffect;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->insertNewAlphaRepl(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaReplaceEffect;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->getTintArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTintEffect;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->insertNewHsl(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHSLEffect;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->getFillOverlayArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
