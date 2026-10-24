.class public final synthetic Lm5/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm5/y;


# direct methods
.method public synthetic constructor <init>(ILm5/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm5/q;->a:I

    iput-object p2, p0, Lm5/q;->b:Lm5/y;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x2

    iget v1, p0, Lm5/q;->a:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object p0, p0, Lm5/q;->b:Lm5/y;

    packed-switch v1, :pswitch_data_0

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->H()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget p0, p0, Lm5/h;->c:I

    invoke-virtual {v0, p0, v3, v5}, Lm5/w1;->Z(III)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget v1, v0, Lm5/h;->c:I

    if-nez v1, :cond_2

    iget-object v0, v0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->l0()Z

    move-result v0

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lm5/z0;->w(Lm5/h;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lm5/h;->w()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t get text value, current token can have no text value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->F()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lm5/y;->l()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget v0, p0, Lm5/h;->c:I

    if-ne v0, v3, :cond_3

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->z0()I

    move-result p0

    if-eq p0, v5, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->H()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->G()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->J()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v3, v2}, Lm5/h;->Q(ILm5/h;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v2}, Lm5/h;->R(Lm5/h;)V

    :goto_1
    move v4, v5

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t remove a whole document."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget v1, p0, Lm5/h;->c:I

    if-ne v1, v3, :cond_8

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->z0()I

    move-result p0

    if-ne p0, v0, :cond_8

    move v4, v5

    :cond_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object v1, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->M()I

    move-result v1

    if-eq v1, v5, :cond_d

    if-eq v1, v0, :cond_d

    const/4 v0, 0x3

    if-eq v1, v0, :cond_a

    const/4 v0, 0x4

    if-eq v1, v0, :cond_9

    const/4 v0, 0x5

    if-eq v1, v0, :cond_9

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->Z()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object p0, Li5/p0$a;->c:Li5/p0$a;

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->q0()Z

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v1, v0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v1}, Lm5/w1;->s0()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lm5/h;->b:Lm5/w1;

    iget-object v1, v1, Lm5/w1;->g:Lm5/w1;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lm5/w1;->s0()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lm5/h;->b:Lm5/w1;

    iget-object v1, v1, Lm5/w1;->g:Lm5/w1;

    invoke-virtual {v0, v1, v4}, Lm5/h;->Y(Lm5/w1;I)V

    goto :goto_3

    :cond_b
    iget-object v1, v0, Lm5/h;->b:Lm5/w1;

    iget-object v1, v1, Lm5/w1;->g:Lm5/w1;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1, v4}, Lm5/h;->Y(Lm5/w1;I)V

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0, v4}, Lm5/h;->v0(Z)Z

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->Z()Z

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->t0()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->Z()Z

    :cond_e
    :goto_3
    invoke-virtual {p0}, Lm5/y;->B0()Li5/p0$a;

    move-result-object p0

    :goto_4
    return-object p0

    :pswitch_7
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->r0()Lm5/h;

    move-result-object v0

    invoke-virtual {v0, v4}, Lm5/h;->v0(Z)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_5

    :cond_f
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v0}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {v0}, Lm5/h;->h0()V

    move v4, v5

    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, v2}, Lm5/y;->O1(Li5/z1;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
