.class public final synthetic Lm5/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lm5/e0;->a:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v0

    iget-boolean p0, p0, Lm5/e0;->a:Z

    const/4 v1, 0x0

    if-nez p0, :cond_5

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_3

    const/4 v3, 0x2

    if-eq p0, v3, :cond_2

    const/16 v3, 0x9

    if-eq p0, v3, :cond_1

    const/16 v2, 0xb

    if-eq p0, v2, :cond_0

    move-object p0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lm5/z0;->J()Lm5/h;

    move-result-object p0

    invoke-virtual {p0}, Lm5/h;->g()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lm5/z0;->J()Lm5/h;

    move-result-object p0

    iget-object v3, p0, Lm5/h;->a:Lm5/z0;

    invoke-static {v3, v2}, Lm5/h;->h(Lm5/z0;Z)Lm5/b1;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lm5/h;->Y(Lm5/w1;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lm5/z0;->J()Lm5/h;

    move-result-object p0

    invoke-interface {p1}, Lm5/o0$a;->x()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lm5/h;->f(Ljavax/xml/namespace/QName;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lm5/z0;->J()Lm5/h;

    move-result-object p0

    invoke-interface {p1}, Lm5/o0$a;->x()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lm5/h;->i(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object v5, p1

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_4

    invoke-interface {v5, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v3}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v1

    invoke-virtual {p0}, Lm5/h;->h0()V

    :cond_5
    if-nez v1, :cond_8

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown kind"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not impl"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-interface {p1}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p0

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Lm5/z0;->g()Lm5/u1;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lm5/z0;->q:Lm5/d1;

    if-nez v1, :cond_7

    new-instance v1, Lm5/d;

    invoke-direct {v1, v0}, Lm5/u1;-><init>(Lm5/z0;)V

    goto :goto_2

    :cond_7
    new-instance v1, Lm5/e1;

    invoke-direct {v1, v0}, Lm5/u1;-><init>(Lm5/z0;)V

    :goto_2
    check-cast p1, Lm5/e;

    iget p1, p1, Lm5/e;->f:I

    invoke-virtual {p0, p1}, Lm5/h;->r(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lm5/h;->r:I

    iget v2, p0, Lm5/h;->s:I

    invoke-virtual {v1, v0, v2, p1}, Lm5/e;->d(IILjava/lang/Object;)V

    invoke-virtual {p0}, Lm5/h;->h0()V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0}, Lm5/z0;->J()Lm5/h;

    move-result-object p0

    invoke-interface {p1}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lm5/h;->e(Lm5/h;)V

    invoke-virtual {p0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v1

    invoke-virtual {p0}, Lm5/h;->h0()V

    invoke-virtual {p1}, Lm5/h;->h0()V

    :cond_8
    :goto_3
    check-cast v1, Lorg/w3c/dom/Node;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
