.class public final synthetic Lm5/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lm5/l0;->a:I

    iput-object p1, p0, Lm5/l0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lm5/l0;->a:I

    iget-object p0, p0, Lm5/l0;->b:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lm5/h;->u0()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v1

    invoke-static {v1}, Lm5/o0;->o(Lm5/o0$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    move-object v2, v1

    check-cast v2, Lm5/b;

    instance-of v2, v2, Lm5/a;

    if-eqz v2, :cond_2

    invoke-static {v1}, Lm5/o0;->N(Lm5/o0$a;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-static {v1}, Lm5/o0;->M(Lm5/o0$a;)Ljava/lang/String;

    move-result-object v3

    instance-of v4, v2, Lm5/c0;

    if-eqz v4, :cond_2

    check-cast v2, Lm5/c0;

    iget-object v2, v2, Lm5/c0;->t:Ljava/util/Hashtable;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v1}, Lm5/o0;->U(Lm5/o0$a;)V

    invoke-virtual {p1}, Lm5/h;->w0()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lm5/h;->h0()V

    if-eqz v0, :cond_4

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0

    :cond_4
    new-instance p1, Lm5/o0$m;

    const-string v0, "Named item not found: "

    invoke-static {v0, p0}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lm5/o0$m;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object p1

    invoke-virtual {p1}, Lm5/z0;->J()Lm5/h;

    move-result-object p1

    new-instance v0, Lm5/g;

    iget-object v1, p1, Lm5/h;->a:Lm5/z0;

    invoke-direct {v0, v1}, Lm5/g;-><init>(Lm5/z0;)V

    invoke-virtual {p1, v0}, Lm5/h;->k(Lm5/b1;)V

    invoke-virtual {p1}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lm5/h;->Z()Z

    invoke-virtual {p1, p0}, Lm5/h;->A(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lm5/h;->h0()V

    check-cast v0, Lorg/w3c/dom/Comment;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
