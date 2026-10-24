.class public final synthetic Lb6/u;
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

    iput p2, p0, Lb6/u;->a:I

    iput-object p1, p0, Lb6/u;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBiLevelEffect;

    iget-object p0, p0, Lb6/u;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->setBiLevelArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTBiLevelEffect;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleEffect;

    iget-object p0, p0, Lb6/u;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->setGraysclArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleEffect;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorChangeEffect;

    iget-object p0, p0, Lb6/u;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->setClrChangeArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTColorChangeEffect;)V

    return-void
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLuminanceEffect;

    iget-object p0, p0, Lb6/u;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->setLumArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTLuminanceEffect;)V

    return-void
.end method

.method private final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaCeilingEffect;

    iget-object p0, p0, Lb6/u;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->setAlphaCeilingArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaCeilingEffect;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lb6/u;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;

    iget-object p0, p0, Lb6/u;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTBlipImpl;->setDuotoneArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lb6/u;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lb6/u;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lb6/u;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lb6/u;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lb6/u;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
