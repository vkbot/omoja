.class public final synthetic Lf6/x;
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

    iput p2, p0, Lf6/x;->a:I

    iput-object p1, p0, Lf6/x;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateScaleBehavior;

    iget-object p0, p0, Lf6/x;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->setAnimScaleArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateScaleBehavior;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;

    iget-object p0, p0, Lf6/x;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->setAudioArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateColorBehavior;

    iget-object p0, p0, Lf6/x;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->setAnimClrArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateColorBehavior;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lf6/x;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeParallel;

    iget-object p0, p0, Lf6/x;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->setParArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeParallel;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lf6/x;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lf6/x;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lf6/x;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
