.class public final synthetic Lb6/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb6/y;->a:I

    iput-object p1, p0, Lb6/y;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHSLEffect;

    iget-object p0, p0, Lb6/y;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->setHslArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTHSLEffect;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaReplaceEffect;

    iget-object p0, p0, Lb6/y;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->setAlphaReplArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaReplaceEffect;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateEffect;

    iget-object p0, p0, Lb6/y;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->setAlphaModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateEffect;)V

    return-void
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;

    iget-object p0, p0, Lb6/y;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->setBlurArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;)V

    return-void
.end method

.method private final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorReplaceEffect;

    iget-object p0, p0, Lb6/y;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->setClrReplArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTColorReplaceEffect;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lb6/y;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lb6/y;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lb6/y;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lb6/y;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lb6/y;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lb6/y;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
