.class public final synthetic Lorg/apache/xmlbeans/impl/schema/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/x;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/x;->a:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-interface {p1}, Li5/g0;->getEnumValue()Li5/h0;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    invoke-interface {p1}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p0

    iget-object p1, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p1}, Lm5/w1;->k0()Z

    move-result v0

    invoke-virtual {p0}, Lm5/h;->h0()V

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lm5/o0$a;

    invoke-static {p1}, Lm5/o0;->L(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result p0

    const-string v1, "Not impl"

    packed-switch p0, :pswitch_data_1

    :pswitch_9
    move-object p0, p1

    check-cast p0, Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->U()V

    invoke-virtual {p0}, Lm5/w1;->d0()I

    move-result p0

    const/4 v1, 0x2

    if-ge p0, v1, :cond_1

    move v0, p0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object p0

    iget-object v1, p0, Lm5/z0;->x:Lm5/z0$m;

    invoke-virtual {v1, v0, p1}, Lm5/z0$m;->a(ILm5/o0$a;)I

    move-result v1

    iget-object v2, p0, Lm5/z0;->y:Lm5/z0$m;

    invoke-virtual {v2, v0, p1}, Lm5/z0$m;->a(ILm5/o0$a;)I

    move-result v0

    if-gt v1, v0, :cond_2

    iget-object v2, p0, Lm5/z0;->x:Lm5/z0$m;

    invoke-virtual {v2, p1}, Lm5/z0$m;->c(Lm5/o0$a;)I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lm5/z0;->y:Lm5/z0$m;

    invoke-virtual {v2, p1}, Lm5/z0$m;->c(Lm5/o0$a;)I

    move-result p1

    :goto_0
    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lm5/z0;->x:Lm5/z0$m;

    iget-object v1, p0, Lm5/z0;->y:Lm5/z0$m;

    iput-object v1, p0, Lm5/z0;->x:Lm5/z0$m;

    iput-object v0, p0, Lm5/z0;->y:Lm5/z0$m;

    :cond_3
    move v0, p1

    goto :goto_1

    :pswitch_a
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_b
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    :pswitch_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lm5/o0$a;

    invoke-static {p1}, Lm5/o0;->O(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/d0$a;

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/d0;->a:Ljava/util/Map;

    iget p0, p1, Lorg/apache/xmlbeans/impl/schema/d0$a;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/d0$a;

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/d0;->a:Ljava/util/Map;

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/schema/d0$a;->a:Ljavax/xml/namespace/QName;

    return-object p0

    :pswitch_10
    check-cast p1, Li5/y$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/y;

    return-object p0

    :pswitch_11
    check-cast p1, Li5/c0$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    return-object p0

    :pswitch_12
    check-cast p1, Li5/c0$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    return-object p0

    :pswitch_13
    check-cast p1, Li5/c0$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    return-object p0

    :pswitch_14
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/namespace/QName;

    return-object p0

    :pswitch_15
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/z;->n(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
