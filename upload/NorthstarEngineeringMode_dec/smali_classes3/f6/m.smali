.class public final synthetic Lf6/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lf6/m;->a:I

    iput-object p1, p0, Lf6/m;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lf6/m;->a:I

    iget-object p0, p0, Lf6/m;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->getVideoArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->insertNewPar(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeParallel;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->getAnimEffectArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateEffectBehavior;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->insertNewAnimClr(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateColorBehavior;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->getAnimMotionArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateMotionBehavior;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->insertNewAudio(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->getExclArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeExclusive;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->insertNewAnimScale(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateScaleBehavior;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->getSeqArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeSequence;

    move-result-object p0

    return-object p0

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
