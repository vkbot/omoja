.class public final Lm5/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/o0$b;,
        Lm5/o0$c;,
        Lm5/o0$d;,
        Lm5/o0$e;,
        Lm5/o0$f;,
        Lm5/o0$j;,
        Lm5/o0$n;,
        Lm5/o0$h;,
        Lm5/o0$i;,
        Lm5/o0$l;,
        Lm5/o0$k;,
        Lm5/o0$m;,
        Lm5/o0$o;,
        Lm5/o0$g;,
        Lm5/o0$a;
    }
.end annotation


# static fields
.field public static final a:Lm5/o0$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm5/o0$f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm5/o0;->a:Lm5/o0$f;

    return-void
.end method

.method public static A(Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;
    .locals 5

    invoke-static {p1}, Lm5/o0;->x(Lm5/o0$a;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-static {p1}, Lm5/o0;->o(Lm5/o0$a;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lm5/o0$a;->k()Lm5/h;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lm5/h;->u0()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v3

    invoke-static {v3}, Lm5/o0;->o(Lm5/o0$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lm5/o0;->U(Lm5/o0$a;)V

    invoke-virtual {v1}, Lm5/h;->w0()V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v1, p0}, Lm5/h;->X(Lm5/o0$a;)V

    invoke-virtual {v1}, Lm5/h;->Z()Z

    check-cast p1, Lm5/w1;

    invoke-static {v1, p1}, Lm5/h;->S(Lm5/h;Lm5/w1;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Lm5/h;->X(Lm5/o0$a;)V

    check-cast p1, Lm5/w1;

    invoke-static {v1, p1}, Lm5/h;->S(Lm5/h;Lm5/w1;)V

    invoke-static {v2}, Lm5/o0;->U(Lm5/o0$a;)V

    :goto_1
    invoke-virtual {v1}, Lm5/h;->h0()V

    check-cast v2, Lorg/w3c/dom/Node;

    return-object v2

    :cond_4
    new-instance p0, Lm5/o0$g;

    const/4 p1, 0x3

    const-string v0, "Node is not an attribute"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lm5/o0$i;

    invoke-direct {p0}, Lm5/o0$i;-><init>()V

    throw p0
.end method

.method public static B(Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;
    .locals 5

    invoke-static {p1}, Lm5/o0;->x(Lm5/o0$a;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-ne v0, p0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    return-object p1

    :cond_0
    if-nez v0, :cond_6

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Lm5/o0$a;->x()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0}, Lm5/o0$a;->k()Lm5/h;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lm5/h;->u0()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v3

    invoke-interface {v3}, Lm5/o0$a;->x()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lm5/o0;->U(Lm5/o0$a;)V

    invoke-virtual {v1}, Lm5/h;->w0()V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v1, p0}, Lm5/h;->X(Lm5/o0$a;)V

    invoke-virtual {v1}, Lm5/h;->Z()Z

    check-cast p1, Lm5/w1;

    invoke-static {v1, p1}, Lm5/h;->S(Lm5/h;Lm5/w1;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Lm5/h;->X(Lm5/o0$a;)V

    check-cast p1, Lm5/w1;

    invoke-static {v1, p1}, Lm5/h;->S(Lm5/h;Lm5/w1;)V

    invoke-static {v2}, Lm5/o0;->U(Lm5/o0$a;)V

    :goto_1
    invoke-virtual {v1}, Lm5/h;->h0()V

    check-cast v2, Lorg/w3c/dom/Node;

    return-object v2

    :cond_5
    new-instance p0, Lm5/o0$g;

    const/4 p1, 0x3

    const-string v0, "Node is not an attribute"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lm5/o0$i;

    invoke-direct {p0}, Lm5/o0$i;-><init>()V

    throw p0
.end method

.method public static C(Ljava/lang/String;Lm5/o0$a;)Lm5/b;
    .locals 2

    invoke-static {p0}, Lm5/o0;->Z(Ljava/lang/String;)V

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object p1

    invoke-virtual {p1}, Lm5/z0;->J()Lm5/h;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v1, p0}, Lm5/z0;->G(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lm5/h;->f(Ljavax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object p0

    check-cast p0, Lm5/b;

    invoke-virtual {v0}, Lm5/h;->h0()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm5/a1;->t:Z

    return-object p0
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;Lm5/o0$a;)Lorg/w3c/dom/Attr;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lm5/o0;->d0(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p2}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object p2

    invoke-virtual {p2}, Lm5/z0;->J()Lm5/h;

    move-result-object v0

    invoke-virtual {p2, p0, p1}, Lm5/z0;->G(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lm5/h;->f(Ljavax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object p0

    invoke-virtual {v0}, Lm5/h;->h0()V

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public static E(Ljava/lang/String;Lm5/o0$a;)Lm5/d;
    .locals 2

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object p1

    iget-object v0, p1, Lm5/z0;->q:Lm5/d1;

    if-nez v0, :cond_0

    new-instance v0, Lm5/d;

    invoke-direct {v0, p1}, Lm5/u1;-><init>(Lm5/z0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lm5/e1;

    invoke-direct {v0, p1}, Lm5/u1;-><init>(Lm5/z0;)V

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1, p0}, Lm5/e;->d(IILjava/lang/Object;)V

    return-object v0
.end method

.method public static F(Ljava/lang/String;Lm5/o0$a;)Lm5/r0;
    .locals 2

    invoke-static {p0}, Lm5/o0;->Z(Ljava/lang/String;)V

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object p1

    invoke-virtual {p1}, Lm5/z0;->J()Lm5/h;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v1, p0}, Lm5/z0;->G(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lm5/h;->i(Ljavax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object p0

    check-cast p0, Lm5/r0;

    invoke-virtual {v0}, Lm5/h;->h0()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm5/a1;->t:Z

    return-object p0
.end method

.method public static G(Ljava/lang/String;Ljava/lang/String;Lm5/o0$a;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 3

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lj5/p;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_3

    invoke-static {p0}, Lm5/z0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lm5/o0$j;

    const-string p1, "Invalid target - is \'xml\'"

    invoke-direct {p0, v1, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p2}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object p2

    invoke-virtual {p2}, Lm5/z0;->J()Lm5/h;

    move-result-object p2

    new-instance v0, Lm5/c1;

    iget-object v1, p2, Lm5/h;->a:Lm5/z0;

    invoke-direct {v0, v1, p0}, Lm5/c1;-><init>(Lm5/z0;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lm5/h;->k(Lm5/b1;)V

    invoke-virtual {p2}, Lm5/h;->t()Lm5/o0$a;

    move-result-object p0

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lm5/h;->Z()Z

    invoke-virtual {p2, p1}, Lm5/h;->A(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lm5/h;->h0()V

    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    return-object p0

    :cond_3
    new-instance p0, Lm5/o0$j;

    const-string p1, "Target has an invalid character"

    invoke-direct {p0, v1, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Target is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Target is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static H(Ljava/lang/String;Lm5/o0$a;)Lm5/u1;
    .locals 2

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object p1

    invoke-virtual {p1}, Lm5/z0;->g()Lm5/u1;

    move-result-object p1

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1, p0}, Lm5/e;->d(IILjava/lang/Object;)V

    return-object p1
.end method

.method public static I(Lm5/o0$a;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, ":"

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown kind"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-interface {p0}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v1

    invoke-virtual {v1}, Lm5/z0;->J()Lm5/h;

    move-result-object v1

    invoke-virtual {v1}, Lm5/h;->g()V

    invoke-virtual {v1}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v4

    invoke-virtual {v1}, Lm5/h;->h0()V

    check-cast v4, Lorg/w3c/dom/DocumentFragment;

    goto/16 :goto_c

    :pswitch_1
    new-instance p0, Lm5/o0$n;

    const-string p1, "Document type nodes may not be imported"

    invoke-direct {p0, p1}, Lm5/o0$n;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Lm5/o0$n;

    const-string p1, "Document nodes may not be imported"

    invoke-direct {p0, p1}, Lm5/o0$n;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v1

    invoke-virtual {v1}, Lm5/z0;->J()Lm5/h;

    move-result-object v1

    new-instance v4, Lm5/g;

    iget-object v5, v1, Lm5/h;->a:Lm5/z0;

    invoke-direct {v4, v5}, Lm5/g;-><init>(Lm5/z0;)V

    invoke-virtual {v1, v4}, Lm5/h;->k(Lm5/b1;)V

    invoke-virtual {v1}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v4

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lm5/h;->Z()Z

    invoke-virtual {v1, p2}, Lm5/h;->A(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lm5/h;->h0()V

    check-cast v4, Lorg/w3c/dom/Comment;

    :goto_0
    move p2, v2

    goto/16 :goto_c

    :pswitch_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p0}, Lm5/o0;->G(Ljava/lang/String;Ljava/lang/String;Lm5/o0$a;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v4

    goto :goto_0

    :pswitch_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not impl"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lm5/o0;->E(Ljava/lang/String;Lm5/o0$a;)Lm5/d;

    move-result-object v4

    goto :goto_0

    :pswitch_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lm5/o0;->H(Ljava/lang/String;Lm5/o0$a;)Lm5/u1;

    move-result-object v4

    goto :goto_0

    :pswitch_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v1, v4, p2}, La4/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v1, p2, p0}, Lm5/o0;->D(Ljava/lang/String;Ljava/lang/String;Lm5/o0$a;)Lorg/w3c/dom/Attr;

    move-result-object p2

    :goto_2
    move-object v4, p2

    goto :goto_5

    :cond_6
    :goto_3
    invoke-static {p2, p0}, Lm5/o0;->C(Ljava/lang/String;Lm5/o0$a;)Lm5/b;

    move-result-object p2

    goto :goto_2

    :cond_7
    :goto_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lm5/o0;->C(Ljava/lang/String;Lm5/o0$a;)Lm5/b;

    move-result-object p2

    goto :goto_2

    :goto_5
    move p2, v3

    goto/16 :goto_c

    :pswitch_9
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_9

    :cond_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {v5, v4, v1}, La4/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_a
    :goto_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_b

    goto :goto_8

    :cond_b
    invoke-static {v1, v4, v2}, Lm5/o0;->d0(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v5

    invoke-virtual {v5}, Lm5/z0;->J()Lm5/h;

    move-result-object v6

    invoke-virtual {v5, v4, v1}, Lm5/z0;->G(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v6, v1}, Lm5/h;->i(Ljavax/xml/namespace/QName;)V

    invoke-virtual {v6}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v1

    invoke-virtual {v6}, Lm5/h;->h0()V

    check-cast v1, Lorg/w3c/dom/Element;

    :goto_7
    move-object v4, v1

    goto :goto_a

    :cond_c
    :goto_8
    invoke-static {v1, p0}, Lm5/o0;->F(Ljava/lang/String;Lm5/o0$a;)Lm5/r0;

    move-result-object v1

    goto :goto_7

    :cond_d
    :goto_9
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lm5/o0;->F(Ljava/lang/String;Lm5/o0$a;)Lm5/r0;

    move-result-object v1

    goto :goto_7

    :goto_a
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    move v5, v2

    :goto_b
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_e

    move-object v6, v4

    check-cast v6, Lm5/o0$a;

    invoke-interface {v1, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-static {p0, v7, v3}, Lm5/o0;->I(Lm5/o0$a;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lm5/o0$a;

    invoke-static {v6, v7}, Lm5/o0;->A(Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_e
    :goto_c
    if-eqz p2, :cond_f

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    if-ge v2, p2, :cond_f

    move-object p2, v4

    check-cast p2, Lm5/o0$a;

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lm5/o0;->I(Lm5/o0$a;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lm5/o0$a;

    invoke-static {p2, v1, v0}, Lm5/o0;->Q(Lm5/o0$a;Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_f
    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static J(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown node type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "notation"

    return-object p0

    :pswitch_1
    const-string p0, "document fragment"

    return-object p0

    :pswitch_2
    const-string p0, "document type"

    return-object p0

    :pswitch_3
    const-string p0, "document"

    return-object p0

    :pswitch_4
    const-string p0, "comment"

    return-object p0

    :pswitch_5
    const-string p0, "processing instruction"

    return-object p0

    :pswitch_6
    const-string p0, "entity"

    return-object p0

    :pswitch_7
    const-string p0, "entity reference"

    return-object p0

    :pswitch_8
    const-string p0, "cdata section"

    return-object p0

    :pswitch_9
    const-string p0, "text"

    return-object p0

    :pswitch_a
    const-string p0, "attribute"

    return-object p0

    :pswitch_b
    const-string p0, "element"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
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

.method public static K(Lm5/o0$a;)Lorg/w3c/dom/Node;
    .locals 3

    invoke-interface {p0}, Lm5/o0$a;->t()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    const-string v2, "Not impl"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :cond_0
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :pswitch_1
    check-cast p0, Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->U()V

    invoke-virtual {p0}, Lm5/w1;->w0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lm5/w1;->i:Lm5/w1;

    check-cast p0, Lm5/b1;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lm5/w1;->A0()Lm5/w1;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Lm5/w1;->r:Lm5/e;

    if-nez v1, :cond_4

    iget-object v1, v0, Lm5/w1;->l:Ljava/lang/Object;

    if-nez v1, :cond_4

    iget-object p0, v0, Lm5/w1;->g:Lm5/w1;

    check-cast p0, Lm5/b1;

    return-object p0

    :cond_4
    invoke-virtual {v0}, Lm5/w1;->t0()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, v0, Lm5/w1;->r:Lm5/e;

    return-object p0

    :cond_5
    iget-object v0, p0, Lm5/w1;->k:Ljava/lang/Object;

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lm5/w1;->q:Lm5/e;

    if-eqz v0, :cond_7

    iget-object v1, v0, Lm5/e;->b:Lm5/e;

    if-nez v1, :cond_7

    iget v0, v0, Lm5/e;->f:I

    iget v1, p0, Lm5/w1;->o:I

    if-ne v0, v1, :cond_7

    goto :goto_1

    :cond_7
    :goto_0
    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    iget-object v1, p0, Lm5/w1;->q:Lm5/e;

    iget v2, p0, Lm5/w1;->o:I

    invoke-static {v0, p0, v1, v2}, Lm5/h;->z0(Lm5/z0;Lm5/w1;Lm5/e;I)Lm5/e;

    move-result-object v0

    iput-object v0, p0, Lm5/w1;->q:Lm5/e;

    if-eqz v0, :cond_8

    :goto_1
    iget-object p0, p0, Lm5/w1;->q:Lm5/e;

    return-object p0

    :cond_8
    :goto_2
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static L(Lm5/o0$a;)Lorg/w3c/dom/Node;
    .locals 4

    invoke-interface {p0}, Lm5/o0$a;->t()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    check-cast p0, Lm5/e;

    iget-object v0, p0, Lm5/e;->d:Ljava/lang/Object;

    instance-of v2, v0, Lm5/w1;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    check-cast v0, Lm5/w1;

    iget-object v1, v0, Lm5/w1;->a:Lm5/z0;

    iget-object v2, v0, Lm5/w1;->r:Lm5/e;

    iget v3, v0, Lm5/w1;->p:I

    invoke-static {v1, v0, v2, v3}, Lm5/h;->z0(Lm5/z0;Lm5/w1;Lm5/e;I)Lm5/e;

    move-result-object v1

    iput-object v1, v0, Lm5/w1;->r:Lm5/e;

    iget-object v1, v0, Lm5/w1;->a:Lm5/z0;

    iget-object v2, v0, Lm5/w1;->q:Lm5/e;

    iget v3, v0, Lm5/w1;->o:I

    invoke-static {v1, v0, v2, v3}, Lm5/h;->z0(Lm5/z0;Lm5/w1;Lm5/e;I)Lm5/e;

    move-result-object v1

    iput-object v1, v0, Lm5/w1;->q:Lm5/e;

    iget-object v1, p0, Lm5/e;->b:Lm5/e;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lm5/e;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lm5/w1;->g:Lm5/w1;

    move-object v1, p0

    check-cast v1, Lm5/b1;

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lm5/w1;->i:Lm5/w1;

    move-object v1, p0

    check-cast v1, Lm5/b1;

    goto :goto_0

    :pswitch_3
    check-cast p0, Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->U()V

    iget-object v0, p0, Lm5/w1;->r:Lm5/e;

    if-nez v0, :cond_3

    iget-object v0, p0, Lm5/w1;->l:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object p0, p0, Lm5/w1;->g:Lm5/w1;

    check-cast p0, Lm5/b1;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lm5/w1;->t0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lm5/w1;->r:Lm5/e;

    return-object p0

    :cond_4
    :goto_0
    check-cast v1, Lorg/w3c/dom/Node;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static M(Lm5/o0$a;)Ljava/lang/String;
    .locals 6

    invoke-interface {p0}, Lm5/o0$a;->t()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lm5/e;

    iget-object v0, p0, Lm5/e;->d:Ljava/lang/Object;

    instance-of v3, v0, Lm5/w1;

    if-nez v3, :cond_1

    iget v1, p0, Lm5/e;->e:I

    iget p0, p0, Lm5/e;->f:I

    invoke-static {v1, p0, v0}, Lm5/f;->c(IILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    check-cast v0, Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->U()V

    invoke-virtual {p0}, Lm5/e;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lm5/w1;->a:Lm5/z0;

    iget-object v4, v0, Lm5/w1;->r:Lm5/e;

    iget v5, v0, Lm5/w1;->p:I

    invoke-static {v3, v0, v4, v5}, Lm5/h;->z0(Lm5/z0;Lm5/w1;Lm5/e;I)Lm5/e;

    move-result-object v3

    iput-object v3, v0, Lm5/w1;->r:Lm5/e;

    iget v3, p0, Lm5/e;->e:I

    iget p0, p0, Lm5/e;->f:I

    iget v4, v0, Lm5/w1;->o:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-virtual {v0}, Lm5/w1;->E0()I

    move-result v1

    if-ne v3, v1, :cond_2

    const/4 v3, -0x1

    :cond_2
    invoke-virtual {v0, v3, p0, v2}, Lm5/w1;->Z(III)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lm5/w1;->a:Lm5/z0;

    iget-object v3, v0, Lm5/w1;->q:Lm5/e;

    iget v4, v0, Lm5/w1;->o:I

    invoke-static {v1, v0, v3, v4}, Lm5/h;->z0(Lm5/z0;Lm5/w1;Lm5/e;I)Lm5/e;

    move-result-object v1

    iput-object v1, v0, Lm5/w1;->q:Lm5/e;

    iget v1, p0, Lm5/e;->e:I

    iget p0, p0, Lm5/e;->f:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p0, v2}, Lm5/w1;->Z(III)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    check-cast p0, Lm5/w1;

    invoke-virtual {p0, v2}, Lm5/w1;->h0(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static N(Lm5/o0$a;)Lorg/w3c/dom/Document;
    .locals 3

    invoke-interface {p0}, Lm5/o0$a;->t()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object p0

    iget-object v0, p0, Lm5/z0;->r:Lm5/o0$a;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lm5/z0;->J()Lm5/h;

    move-result-object v0

    iget-object v1, v0, Lm5/h;->a:Lm5/z0;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lm5/h;->h(Lm5/z0;Z)Lm5/b1;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lm5/h;->Y(Lm5/w1;I)V

    invoke-virtual {v0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v1

    iput-object v1, p0, Lm5/z0;->r:Lm5/o0$a;

    invoke-virtual {v0}, Lm5/h;->h0()V

    :cond_1
    iget-object p0, p0, Lm5/z0;->r:Lm5/o0$a;

    check-cast p0, Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public static O(Lm5/o0$a;)Lorg/w3c/dom/Node;
    .locals 3

    invoke-interface {p0}, Lm5/o0$a;->t()I

    move-result v0

    const-string v1, "Not impl"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown kind"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    invoke-interface {p0}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm5/h;->v0(Z)Z

    goto :goto_1

    :goto_0
    :pswitch_3
    move-object p0, v2

    goto :goto_1

    :pswitch_4
    invoke-interface {p0}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm5/h;->v0(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lm5/h;->h0()V

    goto :goto_0

    :cond_0
    :goto_1
    if-nez p0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v0

    invoke-virtual {p0}, Lm5/h;->h0()V

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static P(Lm5/o0$a;)Lorg/w3c/dom/Node;
    .locals 3

    invoke-interface {p0}, Lm5/o0$a;->t()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    move-object v0, p0

    check-cast v0, Lm5/b1;

    iget-object v1, v0, Lm5/w1;->h:Lm5/w1;

    check-cast v1, Lm5/b1;

    if-eqz v1, :cond_0

    instance-of v2, v0, Lm5/b;

    if-nez v2, :cond_4

    instance-of v2, v1, Lm5/b;

    if-eqz v2, :cond_4

    :cond_0
    iget-object v0, v0, Lm5/w1;->f:Lm5/w1;

    if-eqz v0, :cond_4

    check-cast v0, Lm5/o0$a;

    invoke-static {v0}, Lm5/o0;->K(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Lm5/e;

    iget-object v1, v0, Lm5/e;->d:Ljava/lang/Object;

    instance-of v2, v1, Lm5/w1;

    if-nez v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    check-cast v1, Lm5/b1;

    invoke-virtual {v1}, Lm5/w1;->U()V

    invoke-virtual {v0}, Lm5/e;->b()Z

    move-result v2

    iget-object v0, v0, Lm5/e;->c:Lm5/e;

    if-nez v0, :cond_5

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lm5/w1;->q:Lm5/e;

    goto :goto_1

    :cond_4
    :goto_0
    if-eqz v1, :cond_6

    move-object v0, v1

    check-cast v0, Lm5/o0$a;

    invoke-static {v0}, Lm5/o0;->L(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eq v0, p0, :cond_6

    :cond_5
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method public static Q(Lm5/o0$a;Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;
    .locals 8

    if-ne p1, p2, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    return-object p1

    :cond_0
    if-eqz p2, :cond_2

    invoke-static {p2}, Lm5/o0;->O(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lm5/o0$m;

    const-string p1, "RefChild is not a child of this node"

    invoke-direct {p0, p1}, Lm5/o0$m;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    invoke-static {p1}, Lm5/o0;->K(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    check-cast v0, Lm5/o0$a;

    invoke-static {p0, v0}, Lm5/o0;->b0(Lm5/o0$a;Lm5/o0$a;)V

    invoke-static {v0}, Lm5/o0;->L(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lm5/o0;->K(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_5

    check-cast v0, Lm5/o0$a;

    invoke-static {v0}, Lm5/o0;->L(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez p2, :cond_4

    invoke-static {p0, v0, v2}, Lm5/o0;->Q(Lm5/o0$a;Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    goto :goto_3

    :cond_4
    invoke-static {p2}, Lm5/o0;->O(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lm5/o0$a;

    invoke-static {v3, v0, p2}, Lm5/o0;->Q(Lm5/o0$a;Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    :goto_3
    move-object v0, v1

    goto :goto_2

    :cond_5
    check-cast p1, Lorg/w3c/dom/Node;

    return-object p1

    :cond_6
    invoke-static {p0, p1}, Lm5/o0;->b0(Lm5/o0$a;Lm5/o0$a;)V

    invoke-static {p1}, Lm5/o0;->O(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Lm5/o0$a;

    invoke-static {v1, p1}, Lm5/o0;->R(Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    :cond_7
    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lm5/o0$a;->t()I

    const/4 v3, 0x1

    const/4 v4, 0x5

    const-string v5, "Not implemented"

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v0, v3, :cond_10

    const/16 v3, 0xa

    if-eq v0, v3, :cond_f

    if-eq v0, v7, :cond_a

    if-eq v0, v6, :cond_a

    if-eq v0, v4, :cond_9

    const/4 v3, 0x7

    if-eq v0, v3, :cond_10

    const/16 v3, 0x8

    if-ne v0, v3, :cond_8

    goto :goto_6

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected child node type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    check-cast p1, Lm5/e;

    invoke-interface {p0}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p0

    if-nez p2, :cond_b

    invoke-virtual {p0}, Lm5/h;->s0()V

    goto :goto_5

    :cond_b
    invoke-interface {p2}, Lm5/o0$a;->t()I

    move-result v0

    if-eq v0, v7, :cond_e

    if-ne v0, v6, :cond_c

    goto :goto_4

    :cond_c
    if-eq v0, v4, :cond_d

    invoke-virtual {p0, p2}, Lm5/h;->X(Lm5/o0$a;)V

    goto :goto_5

    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_4
    move-object v2, p2

    check-cast v2, Lm5/e;

    invoke-virtual {p0, v2}, Lm5/h;->V(Lm5/e;)V

    :goto_5
    invoke-virtual {p0}, Lm5/h;->q()Lm5/e;

    move-result-object p2

    invoke-static {p2, p1, v2}, Lm5/e;->a(Lm5/e;Lm5/e;Lm5/e;)Lm5/e;

    move-result-object p2

    iget-object v0, p1, Lm5/e;->d:Ljava/lang/Object;

    iget v2, p1, Lm5/e;->e:I

    iget p1, p1, Lm5/e;->f:I

    invoke-virtual {p0, v2, p1, v0}, Lm5/h;->z(IILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Lm5/h;->l0(Lm5/e;)V

    invoke-virtual {p0}, Lm5/h;->h0()V

    goto/16 :goto_b

    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_6
    if-nez p2, :cond_11

    invoke-interface {p0}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p0

    invoke-virtual {p0}, Lm5/h;->s0()V

    check-cast p1, Lm5/w1;

    invoke-static {p0, p1}, Lm5/h;->S(Lm5/h;Lm5/w1;)V

    invoke-virtual {p0}, Lm5/h;->h0()V

    goto/16 :goto_b

    :cond_11
    invoke-interface {p2}, Lm5/o0$a;->t()I

    move-result v0

    if-eq v0, v7, :cond_14

    if-ne v0, v6, :cond_12

    goto :goto_7

    :cond_12
    if-eq v0, v4, :cond_13

    invoke-interface {p2}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p0

    check-cast p1, Lm5/w1;

    invoke-static {p0, p1}, Lm5/h;->S(Lm5/h;Lm5/w1;)V

    invoke-virtual {p0}, Lm5/h;->h0()V

    goto :goto_b

    :cond_13
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    if-eqz p2, :cond_17

    invoke-interface {p2}, Lm5/o0$a;->t()I

    move-result v3

    if-eq v3, v7, :cond_15

    invoke-interface {p2}, Lm5/o0$a;->t()I

    move-result v3

    if-ne v3, v6, :cond_17

    :cond_15
    invoke-static {p2}, Lm5/o0;->L(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-static {p2}, Lm5/o0;->O(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_16

    check-cast v4, Lm5/o0$a;

    invoke-static {v4, p2}, Lm5/o0;->R(Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    :cond_16
    check-cast p2, Lorg/w3c/dom/Node;

    check-cast p2, Lm5/o0$a;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p2, v3

    check-cast p2, Lm5/o0$a;

    goto :goto_8

    :cond_17
    if-nez p2, :cond_18

    invoke-static {p0, p1, v2}, Lm5/o0;->Q(Lm5/o0$a;Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    goto :goto_9

    :cond_18
    invoke-static {p2}, Lm5/o0;->O(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lm5/o0$a;

    invoke-static {v3, p1, p2}, Lm5/o0;->Q(Lm5/o0$a;Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    :goto_9
    invoke-static {p1}, Lm5/o0;->L(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lm5/o0$a;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm5/o0$a;

    if-nez p1, :cond_19

    invoke-static {p0, v0, v2}, Lm5/o0;->Q(Lm5/o0$a;Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    goto :goto_a

    :cond_19
    invoke-static {p1}, Lm5/o0;->O(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lm5/o0$a;

    invoke-static {v3, v0, p1}, Lm5/o0;->Q(Lm5/o0$a;Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    goto :goto_a

    :cond_1a
    :goto_b
    return-object v1
.end method

.method public static R(Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;
    .locals 5

    invoke-static {p1}, Lm5/o0;->O(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result p0

    const-string v0, "Not impl"

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown kind"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    invoke-interface {p1}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p0

    invoke-virtual {p0}, Lm5/h;->q()Lm5/e;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lm5/e;

    const/4 v2, 0x0

    iget v3, v1, Lm5/e;->f:I

    invoke-virtual {p0, v3, v2}, Lm5/h;->Q(ILm5/h;)Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lm5/h;->r:I

    iget v4, p0, Lm5/h;->s:I

    invoke-virtual {v1, v3, v4, v2}, Lm5/e;->d(IILjava/lang/Object;)V

    invoke-static {v0, v1}, Lm5/e;->c(Lm5/e;Lm5/e;)Lm5/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lm5/h;->l0(Lm5/e;)V

    invoke-virtual {p0}, Lm5/h;->h0()V

    goto :goto_0

    :pswitch_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_4
    invoke-static {p1}, Lm5/o0;->U(Lm5/o0$a;)V

    :goto_0
    check-cast p1, Lorg/w3c/dom/Node;

    return-object p1

    :cond_0
    new-instance p0, Lm5/o0$m;

    const-string p1, "Child to remove is not a child of given parent"

    invoke-direct {p0, p1}, Lm5/o0$m;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static S(Ljava/lang/String;Lm5/o0$a;)V
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {p1}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p1

    invoke-virtual {p1}, Lm5/h;->Z()Z

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lm5/h;->r(I)Ljava/lang/Object;

    iget v0, p1, Lm5/h;->s:I

    invoke-virtual {p1, v0, v3}, Lm5/h;->Q(ILm5/h;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lm5/h;->A(Ljava/lang/String;)V

    invoke-virtual {p1}, Lm5/h;->h0()V

    goto/16 :goto_2

    :cond_2
    check-cast p1, Lm5/e;

    invoke-virtual {p1}, Lm5/e;->k()Lm5/h;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, p1, Lm5/e;->f:I

    invoke-virtual {v0, v1, v3}, Lm5/h;->Q(ILm5/h;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p1, Lm5/e;->f:I

    invoke-virtual {v0, p0}, Lm5/h;->A(Ljava/lang/String;)V

    invoke-virtual {v0}, Lm5/h;->h0()V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0, p0}, Lm5/e;->d(IILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_5

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lm5/o0$a;

    invoke-static {p1, v1}, Lm5/o0;->R(Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v0

    invoke-virtual {v0}, Lm5/z0;->g()Lm5/u1;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p0}, Lm5/e;->d(IILjava/lang/Object;)V

    invoke-static {p1, v0, v3}, Lm5/o0;->Q(Lm5/o0$a;Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_6
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    :goto_1
    move-object v0, p1

    check-cast v0, Lm5/b;

    instance-of v0, v0, Lm5/a;

    if-eqz v0, :cond_9

    invoke-static {p1}, Lm5/o0;->N(Lm5/o0$a;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {p1}, Lm5/o0;->M(Lm5/o0$a;)Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Lm5/c0;

    if-eqz v2, :cond_9

    check-cast v0, Lm5/c0;

    iget-object v2, v0, Lm5/c0;->t:Ljava/util/Hashtable;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {p1}, Lm5/o0;->x(Lm5/o0$a;)Lorg/w3c/dom/Element;

    move-result-object p1

    check-cast p1, Lm5/o0$a;

    iget-object v1, v0, Lm5/c0;->t:Ljava/util/Hashtable;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lm5/c0;->t:Ljava/util/Hashtable;

    :cond_8
    iget-object v0, v0, Lm5/c0;->t:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_2
    return-void
.end method

.method public static T(Ljava/lang/String;Lm5/o0$a;)V
    .locals 7

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    invoke-static {p0, p1, p1, v1}, Lm5/o0;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lm5/o0$a;->k()Lm5/h;

    move-result-object v0

    iget-object v4, v0, Lm5/h;->b:Lm5/w1;

    iget-object v4, v4, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result v6

    if-ne v6, v2, :cond_2

    move v1, v3

    :cond_2
    invoke-static {p0, v5, v4, v1}, Lm5/o0;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object p1

    invoke-virtual {p1, v5, v4, p0}, Lm5/z0;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lm5/h;->m0(Ljavax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lm5/h;->h0()V

    :goto_1
    return-void
.end method

.method public static U(Lm5/o0$a;)V
    .locals 7

    invoke-interface {p0}, Lm5/o0$a;->k()Lm5/h;

    move-result-object v0

    invoke-virtual {v0}, Lm5/h;->s0()V

    invoke-virtual {v0}, Lm5/h;->Z()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lm5/h;->q()Lm5/e;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Lm5/h;->l0(Lm5/e;)V

    invoke-interface {p0}, Lm5/o0$a;->k()Lm5/h;

    move-result-object v3

    invoke-virtual {v3}, Lm5/h;->q()Lm5/e;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, v4

    :goto_0
    iget-object v6, v5, Lm5/e;->b:Lm5/e;

    if-eqz v6, :cond_1

    move-object v5, v6

    goto :goto_0

    :cond_1
    iput-object v1, v5, Lm5/e;->b:Lm5/e;

    iput-object v5, v1, Lm5/e;->c:Lm5/e;

    move-object v1, v4

    :goto_1
    invoke-virtual {v3, v1}, Lm5/h;->l0(Lm5/e;)V

    invoke-virtual {v3}, Lm5/h;->h0()V

    :cond_2
    invoke-virtual {v0}, Lm5/h;->h0()V

    check-cast p0, Lm5/w1;

    invoke-static {v2, p0}, Lm5/h;->S(Lm5/h;Lm5/w1;)V

    return-void
.end method

.method public static V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v0

    new-instance v1, Lm5/w;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lm5/w;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x1

    invoke-static {v0, p0, v1}, Lm5/o0;->W(Lm5/z0;ZLjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static W(Lm5/z0;ZLjava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lm5/z0;",
            "Z",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lm5/z0;->a:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lm5/z0;->l()V

    :cond_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lm5/z0;->m()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lm5/z0;->m()V

    :cond_2
    throw p2

    :cond_3
    monitor-enter p0

    if-eqz p1, :cond_4

    :try_start_1
    invoke-virtual {p0}, Lm5/z0;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    :try_start_2
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_5

    :try_start_3
    invoke-virtual {p0}, Lm5/z0;->m()V

    :cond_5
    monitor-exit p0

    return-object p2

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lm5/z0;->m()V

    :cond_6
    throw p2

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static X(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v0

    new-instance v1, Lm5/j;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lm5/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1}, Lm5/o0;->W(Lm5/z0;ZLjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static Y(Ljava/util/function/Consumer;Lm5/o0$a;)V
    .locals 3

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v0

    new-instance v1, Lm5/r;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lm5/r;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x1

    invoke-static {v0, p0, v1}, Lm5/o0;->W(Lm5/z0;ZLjava/util/function/Supplier;)Ljava/lang/Object;

    return-void
.end method

.method public static Z(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lj5/p;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lm5/o0$j;

    const/4 v0, 0x5

    const-string v1, "Name has an invalid character"

    invoke-direct {p0, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lm5/o0$a;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lm5/o0$a;

    if-eqz v1, :cond_0

    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v1

    if-ne v1, v0, :cond_0

    new-instance v0, Lm5/g0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lm5/g0;-><init>(ILm5/o0$a;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    new-instance p0, Lm5/o0$o;

    const/4 p1, 0x4

    const-string v0, "Attr to set is from another document"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attr to set is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a0(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p0}, Lj5/p;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lm5/o0$j;

    const/4 v0, 0x5

    const-string v1, "The name contains an invalid character"

    invoke-direct {p0, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Lm5/o0$a;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lm5/o0$a;

    if-eqz v1, :cond_0

    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v1

    if-ne v1, v0, :cond_0

    new-instance v0, Lw0/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lw0/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    new-instance p0, Lm5/o0$o;

    const/4 p1, 0x4

    const-string v0, "Attr to set is from another document"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attr to set is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b0(Lm5/o0$a;Lm5/o0$a;)V
    .locals 8

    invoke-interface {p0}, Lm5/o0$a;->t()I

    move-result v0

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/16 v7, 0x8

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_4

    if-eq v1, v4, :cond_4

    if-eq v1, v7, :cond_4

    goto :goto_2

    :cond_0
    invoke-static {p0}, Lm5/o0;->K(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Lm5/o0$a;

    invoke-interface {v1}, Lm5/o0$a;->t()I

    move-result v7

    if-ne v7, v3, :cond_1

    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lm5/o0;->L(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    const-string v2, "Documents may only have a maximum of one document element"

    goto :goto_3

    :pswitch_1
    invoke-static {v0}, Lm5/o0;->J(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " nodes may not have any children"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :pswitch_2
    if-eq v1, v6, :cond_4

    if-ne v1, v5, :cond_3

    goto :goto_3

    :pswitch_3
    if-eq v1, v3, :cond_4

    if-eq v1, v6, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_4

    if-eq v1, v7, :cond_4

    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lm5/o0;->J(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " nodes may not have "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lm5/o0;->J(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " nodes as children"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_3
    if-nez v2, :cond_9

    if-eq p0, p1, :cond_8

    check-cast p0, Lorg/w3c/dom/Node;

    :goto_4
    check-cast p0, Lm5/o0$a;

    invoke-static {p0}, Lm5/o0;->O(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result v0

    if-eq v0, v5, :cond_6

    if-eq p1, p0, :cond_5

    goto :goto_4

    :cond_5
    new-instance p0, Lm5/o0$g;

    const-string p1, "New child is an ancestor node of the parent node"

    invoke-direct {p0, v6, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lm5/o0$l;

    const-string p1, "Entity reference trees may not be modified"

    invoke-direct {p0, v4, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_7
    return-void

    :cond_8
    new-instance p0, Lm5/o0$g;

    const-string p1, "New child and parent are the same node"

    invoke-direct {p0, v6, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lm5/o0$g;

    invoke-direct {p0, v6, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;Lm5/o0$a;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lm5/o0;->p(Lm5/o0$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lm5/o0;->w(Ljava/lang/String;Lm5/o0$a;)V

    :cond_0
    return-void
.end method

.method public static c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lm5/o0$k;

    const-string p1, "Invalid prefix - contains \':\' character"

    invoke-direct {p0, p1}, Lm5/o0$k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lm5/o0;->a0(Ljava/lang/String;)V

    const-string v0, ""

    if-nez p0, :cond_2

    move-object p0, v0

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Lm5/o0$k;

    const-string p1, "Attempt to give a prefix for no namespace"

    invoke-direct {p0, p1}, Lm5/o0$k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    const-string v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Invalid prefix - begins with \'xml\'"

    if-eqz v0, :cond_7

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Lm5/o0$k;

    invoke-direct {p0, v1}, Lm5/o0$k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    if-eqz p3, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    const-string v0, "Invalid namespace - uri is not \'http://www.w3.org/2000/xmlns/;"

    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v2, "xmlns"

    if-lez p3, :cond_b

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-static {p2}, Lm5/z0;->e(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Lm5/o0$k;

    invoke-direct {p0, v0}, Lm5/o0$k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lm5/o0$k;

    const-string p1, "Invalid namespace - attr prefix begins with \'xml\'"

    invoke-direct {p0, p1}, Lm5/o0$k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lm5/o0$k;

    const-string p1, "Invalid namespace - attr is default namespace already"

    invoke-direct {p0, p1}, Lm5/o0$k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_c
    new-instance p0, Lm5/o0$k;

    invoke-direct {p0, v0}, Lm5/o0$k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-static {p0}, Lm5/z0;->e(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    :cond_e
    :goto_3
    return-object p0

    :cond_f
    new-instance p0, Lm5/o0$k;

    invoke-direct {p0, v1}, Lm5/o0$k;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Lm5/o0$a;II)V
    .locals 3

    invoke-static {p0}, Lm5/o0;->p(Lm5/o0$a;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_2

    if-ltz p2, :cond_2

    add-int v1, p1, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p1

    :cond_0
    if-lez p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lm5/o0;->w(Ljava/lang/String;Lm5/o0$a;)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lm5/o0$h;

    invoke-direct {p0}, Lm5/o0$h;-><init>()V

    throw p0
.end method

.method public static d0(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    invoke-static {p0}, Lm5/o0;->a0(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const-string p2, "xmlns"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lm5/o0$k;

    const-string p1, "Default xmlns attribute does not have namespace: http://www.w3.org/2000/xmlns/"

    invoke-direct {p0, p1}, Lm5/o0$k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v1, :cond_8

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lm5/o0;->a0(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_6

    invoke-static {p0}, Lm5/o0;->a0(Ljava/lang/String;)V

    const-string v0, "xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Lm5/o0$k;

    const-string p1, "Invalid prefix - begins with \'xml\'"

    invoke-direct {p0, p1}, Lm5/o0$k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Lm5/o0$k;

    const-string p1, "Invalid qualified name, no local part specified"

    invoke-direct {p0, p1}, Lm5/o0$k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lm5/o0$k;

    const-string p1, "Invalid qualified name, more than one colon"

    invoke-direct {p0, p1}, Lm5/o0$k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lm5/o0$k;

    const-string p1, "Attempt to give a prefix for no namespace"

    invoke-direct {p0, p1}, Lm5/o0$k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lm5/o0$k;

    const-string p1, "Invalid qualified name, no prefix specified"

    invoke-direct {p0, p1}, Lm5/o0$k;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lm5/o0$a;ILjava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lm5/o0;->p(Lm5/o0$a;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lm5/o0;->w(Ljava/lang/String;Lm5/o0$a;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lm5/o0$h;

    invoke-direct {p0}, Lm5/o0$h;-><init>()V

    throw p0
.end method

.method public static f(Lm5/o0$a;IILjava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lm5/o0;->p(Lm5/o0$a;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_3

    if-ltz p2, :cond_3

    add-int v1, p1, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p1

    :cond_0
    if-lez p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lm5/o0;->w(Ljava/lang/String;Lm5/o0$a;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Lm5/o0$h;

    invoke-direct {p0}, Lm5/o0$h;-><init>()V

    throw p0
.end method

.method public static g(Lm5/o0$a;II)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lm5/o0;->p(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_1

    add-int v0, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p1

    :cond_0
    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lm5/o0$h;

    invoke-direct {p0}, Lm5/o0$h;-><init>()V

    throw p0
.end method

.method public static h(Lm5/o0$a;)I
    .locals 2

    move-object v0, p0

    check-cast v0, Lm5/w1;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lm5/w1;->O(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lm5/w1;->d0()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/x;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/x;-><init>(I)V

    invoke-static {v0, p0}, Lm5/o0;->X(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "1.0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "2.0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string p1, "core"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p1, "xml"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static j(Lm5/o0$a;Lorg/w3c/dom/Node;)S
    .locals 6

    instance-of v0, p0, Lorg/w3c/dom/Node;

    const/16 v1, 0x20

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Lorg/w3c/dom/Node;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    :cond_2
    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x1

    move v0, p1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v0, :cond_3

    if-nez v5, :cond_3

    return p1

    :cond_3
    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v1, 0xa

    goto :goto_2

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 v1, 0x14

    :cond_7
    :goto_2
    return v1

    :cond_8
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    return p0

    :cond_9
    const/4 p0, 0x4

    return p0
.end method

.method public static k(Lm5/o0$a;)Lorg/w3c/dom/Node;
    .locals 3

    move-object v0, p0

    check-cast v0, Lm5/w1;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lm5/w1;->O(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lm5/w1;->w0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Lm5/w1;->i:Lm5/w1;

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lm5/w1;->A0()Lm5/w1;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lm5/w1;->r:Lm5/e;

    if-nez v2, :cond_1

    iget-object v2, v1, Lm5/w1;->l:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object p0, v1, Lm5/w1;->g:Lm5/w1;

    check-cast p0, Lm5/b1;

    return-object p0

    :cond_1
    iget-object v1, v0, Lm5/w1;->k:Ljava/lang/Object;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lm5/w1;->q:Lm5/e;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lm5/e;->b:Lm5/e;

    if-nez v2, :cond_3

    iget v2, v1, Lm5/e;->f:I

    iget v0, v0, Lm5/w1;->o:I

    if-ne v2, v0, :cond_3

    return-object v1

    :cond_3
    :goto_0
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/f;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    invoke-static {v0, p0}, Lm5/o0;->X(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static l(Lm5/o0$a;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lm5/o0$a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lm5/o0$a;->x()Ljavax/xml/namespace/QName;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static m(Lm5/o0$a;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lm5/o0$a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lm5/o0$a;->x()Ljavax/xml/namespace/QName;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static n(Lm5/o0$a;)Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/x;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/x;-><init>(I)V

    invoke-static {v0, p0}, Lm5/o0;->X(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static o(Lm5/o0$a;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lm5/o0$a;->t()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown node type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "#document-fragment"

    return-object p0

    :pswitch_1
    const-string p0, "#document"

    return-object p0

    :pswitch_2
    const-string p0, "#comment"

    return-object p0

    :pswitch_3
    invoke-interface {p0}, Lm5/o0$a;->x()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not impl"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    const-string p0, "#cdata-section"

    return-object p0

    :pswitch_6
    const-string p0, "#text"

    return-object p0

    :pswitch_7
    invoke-interface {p0}, Lm5/o0$a;->x()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v1, ":"

    invoke-static {v0, v1}, Landroidx/activity/result/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static p(Lm5/o0$a;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/c0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/c0;-><init>(I)V

    invoke-static {v0, p0}, Lm5/o0;->X(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static q(Lm5/o0$a;)Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/x;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/x;-><init>(I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static r(Lm5/o0$a;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lm5/o0$a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lm5/o0$a;->x()Ljavax/xml/namespace/QName;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static s(Lm5/o0$a;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    invoke-interface {p0}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lm5/o0$a;

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v1

    if-ne v1, v0, :cond_2

    if-eqz p2, :cond_1

    instance-of v1, p2, Lm5/o0$a;

    if-eqz v1, :cond_0

    check-cast p2, Lm5/o0$a;

    invoke-interface {p2}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lm5/o0$o;

    const-string p1, "Reference child is from another document"

    invoke-direct {p0, v2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Lm5/f0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lm5/f0;-><init>(Lm5/o0$a;Lm5/o0$a;I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_2
    new-instance p0, Lm5/o0$o;

    const-string p1, "Child to add is from another document"

    invoke-direct {p0, v2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Child to add is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static t(Lm5/o0$a;Lorg/w3c/dom/Node;)Z
    .locals 1

    instance-of v0, p0, Lm5/e;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lm5/b1;

    if-eqz v0, :cond_1

    check-cast p0, Lm5/b1;

    invoke-virtual {p0}, Lm5/b1;->c0()Lm5/o0$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Lm5/o0$b;

    invoke-direct {p0}, Lm5/o0$b;-><init>()V

    throw p0
.end method

.method public static u(Lm5/o0$a;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lm5/o0$a;

    if-eqz v1, :cond_0

    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v1

    if-ne v1, v0, :cond_0

    new-instance v0, Lm5/g0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lm5/g0;-><init>(ILm5/o0$a;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    new-instance p0, Lm5/o0$o;

    const/4 p1, 0x4

    const-string v0, "Child to remove is from another document"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lm5/o0$m;

    const-string p1, "Child to remove is null"

    invoke-direct {p0, p1}, Lm5/o0$m;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static v(Lm5/o0$a;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    invoke-interface {p0}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    instance-of v1, p1, Lm5/o0$a;

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v1

    if-ne v1, v0, :cond_1

    instance-of v1, p2, Lm5/o0$a;

    if-eqz v1, :cond_0

    check-cast p2, Lm5/o0$a;

    invoke-interface {p2}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v1

    if-ne v1, v0, :cond_0

    new-instance v0, Lm5/f0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lm5/f0;-><init>(Lm5/o0$a;Lm5/o0$a;I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    new-instance p0, Lm5/o0$o;

    const-string p1, "Child to replace is from another document"

    invoke-direct {p0, v2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lm5/o0$o;

    const-string p1, "Child to add is from another document"

    invoke-direct {p0, v2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lm5/o0$m;

    const-string p1, "Child to replace is null"

    invoke-direct {p0, p1}, Lm5/o0$m;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Child to add is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w(Ljava/lang/String;Lm5/o0$a;)V
    .locals 2

    new-instance v0, Lx1/d;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lx1/d;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, p1}, Lm5/o0;->Y(Ljava/util/function/Consumer;Lm5/o0$a;)V

    return-void
.end method

.method public static x(Lm5/o0$a;)Lorg/w3c/dom/Element;
    .locals 1

    invoke-interface {p0}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm5/h;->v0(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lm5/h;->h0()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v0

    invoke-virtual {p0}, Lm5/h;->h0()V

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public static y(Ljava/lang/String;Lm5/o0$a;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p1}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Lm5/h;->u0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v0

    invoke-static {v0}, Lm5/o0;->o(Lm5/o0$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lm5/h;->h0()V

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public static z(Ljava/lang/String;Ljava/lang/String;Lm5/o0$a;)Lorg/w3c/dom/Node;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-interface {p2}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p2

    :cond_1
    invoke-virtual {p2}, Lm5/h;->u0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v0

    invoke-interface {v0}, Lm5/o0$a;->x()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lm5/h;->h0()V

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method
