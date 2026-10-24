.class public final synthetic Lm5/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm5/j0;->a:I

    iput-object p2, p0, Lm5/j0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lm5/j0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lm5/j0;->a:I

    iget-object v1, p0, Lm5/j0;->c:Ljava/lang/Object;

    iget-object p0, p0, Lm5/j0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Li5/c0;

    check-cast v1, Lj5/m;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p0, v1}, Lorg/apache/xmlbeans/impl/values/q1;->O1(Ljava/lang/String;Li5/c0;Lj5/m;)Li5/i0;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Lm5/o0$a;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-interface {p1}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lm5/h;->u0()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v2

    invoke-interface {v2}, Lm5/o0$a;->x()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    move-object v0, v2

    :cond_2
    move-object v3, v2

    check-cast v3, Lm5/b;

    instance-of v3, v3, Lm5/a;

    if-eqz v3, :cond_3

    invoke-static {v2}, Lm5/o0;->N(Lm5/o0$a;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-static {v2}, Lm5/o0;->M(Lm5/o0$a;)Ljava/lang/String;

    move-result-object v4

    instance-of v5, v3, Lm5/c0;

    if-eqz v5, :cond_3

    check-cast v3, Lm5/c0;

    iget-object v3, v3, Lm5/c0;->t:Ljava/util/Hashtable;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {v2}, Lm5/o0;->U(Lm5/o0$a;)V

    invoke-virtual {p1}, Lm5/h;->w0()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lm5/h;->h0()V

    if-eqz v0, :cond_5

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0

    :cond_5
    new-instance p1, Lm5/o0$m;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Named item not found: uri="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", local="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lm5/o0$m;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    check-cast p0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Lm5/o0$a;

    new-instance v0, Lm5/o0$c;

    invoke-direct {v0, p0, v1, p1}, Lm5/o0$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lm5/o0$a;)V

    return-object v0

    :pswitch_2
    check-cast p0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Lm5/o0$a;

    invoke-static {p0, v1, p1}, Lm5/o0;->D(Ljava/lang/String;Ljava/lang/String;Lm5/o0$a;)Lorg/w3c/dom/Attr;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Lm5/o0$a;

    invoke-static {p0, v1, p1}, Lm5/o0;->z(Ljava/lang/String;Ljava/lang/String;Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
