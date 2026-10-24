.class public final synthetic Lorg/apache/poi/xwpf/usermodel/f;
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

    iput p1, p0, Lorg/apache/poi/xwpf/usermodel/f;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget p0, p0, Lorg/apache/poi/xwpf/usermodel/f;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-interface {p1}, Li5/g0;->getEnumValue()Li5/h0;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ljavax/xml/namespace/QName;

    invoke-static {p1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lm5/h;->u0()Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lm5/h;->h0()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lm5/o0$a;

    return-object v0

    :pswitch_5
    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result p0

    const-string v2, "Not impl"

    packed-switch p0, :pswitch_data_1

    :pswitch_6
    invoke-interface {p1}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p0

    iget-object p1, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p1}, Lm5/w1;->l0()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lm5/h;->Z()Z

    invoke-virtual {p0}, Lm5/h;->q()Lm5/e;

    move-result-object p1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lm5/h;->b:Lm5/w1;

    iget-object p1, p1, Lm5/w1;->j:Lm5/w1;

    invoke-virtual {p0, p1, v1}, Lm5/h;->Y(Lm5/w1;I)V

    invoke-virtual {p0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object p1

    invoke-virtual {p0}, Lm5/h;->q0()Z

    invoke-virtual {p0}, Lm5/h;->q()Lm5/e;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_1
    move-object p1, v1

    goto :goto_2

    :cond_2
    move-object v0, p1

    goto :goto_1

    :goto_2
    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    :goto_3
    iget-object v0, p1, Lm5/e;->b:Lm5/e;

    if-eqz v0, :cond_3

    move-object p1, v0

    goto :goto_3

    :cond_3
    move-object v0, p1

    :cond_4
    invoke-virtual {p0}, Lm5/h;->h0()V

    check-cast v0, Lorg/w3c/dom/Node;

    goto :goto_4

    :pswitch_7
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_8
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_4
    :pswitch_9
    return-object v0

    :pswitch_a
    check-cast p1, Lm5/o0$a;

    invoke-static {p1}, Lm5/o0;->P(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lm5/o0$a;

    invoke-static {p1}, Lm5/o0;->K(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/d0$a;

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/d0;->a:Ljava/util/Map;

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/schema/d0$a;->a:Ljavax/xml/namespace/QName;

    return-object p0

    :pswitch_d
    check-cast p1, Li5/p$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/p;

    return-object p0

    :pswitch_e
    check-cast p1, Li5/p$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/p;

    return-object p0

    :pswitch_f
    check-cast p1, Li5/y$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/y;

    return-object p0

    :pswitch_10
    check-cast p1, Li5/r$a;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/z;->a(Li5/r$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Li5/u$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/u;

    return-object p0

    :pswitch_12
    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Li5/r;

    invoke-interface {p1}, Li5/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Li5/c0$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    return-object p0

    :pswitch_16
    check-cast p1, Li5/y$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/y;

    return-object p0

    :pswitch_17
    check-cast p1, Li5/c0$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    return-object p0

    :pswitch_18
    check-cast p1, Li5/p$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/p;

    return-object p0

    :pswitch_19
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->getRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->isSetBottom()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->getLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
