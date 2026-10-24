.class public final synthetic Lf6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lf6/p;->a:I

    iput-object p1, p0, Lf6/p;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeSequence;

    iget-object p0, p0, Lf6/p;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->setSeqArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeSequence;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeExclusive;

    iget-object p0, p0, Lf6/p;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->setExclArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeExclusive;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateMotionBehavior;

    iget-object p0, p0, Lf6/p;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->setAnimMotionArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateMotionBehavior;)V

    return-void
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateEffectBehavior;

    iget-object p0, p0, Lf6/p;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->setAnimEffectArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateEffectBehavior;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lf6/p;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;

    iget-object p0, p0, Lf6/p;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->setVideoArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lf6/p;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lf6/p;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lf6/p;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lf6/p;->a(Ljava/lang/Object;Ljava/lang/Object;)V

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
