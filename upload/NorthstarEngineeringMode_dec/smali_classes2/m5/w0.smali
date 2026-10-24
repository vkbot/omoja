.class public final Lm5/w0;
.super Lm5/v0;
.source "SourceFile"


# instance fields
.field public final c:Z

.field public d:Z

.field public final e:Lm5/h;

.field public final f:Lm5/h;


# direct methods
.method public constructor <init>(Lm5/h;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lm5/v0;-><init>(Lm5/h;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Lm5/h;->A0(Ljava/lang/Object;)Lm5/h;

    move-result-object p2

    iput-object p2, p0, Lm5/w0;->e:Lm5/h;

    invoke-virtual {p2}, Lm5/h;->t0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lm5/h;->Z()Z

    :cond_0
    invoke-virtual {p1, p0}, Lm5/h;->A0(Ljava/lang/Object;)Lm5/h;

    move-result-object p1

    iput-object p1, p0, Lm5/w0;->f:Lm5/h;

    invoke-virtual {p1}, Lm5/h;->s0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lm5/h;->A0(Ljava/lang/Object;)Lm5/h;

    move-result-object p2

    iput-object p2, p0, Lm5/w0;->e:Lm5/h;

    invoke-virtual {p1}, Lm5/h;->H()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm5/w0;->c:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lm5/h;->A0(Ljava/lang/Object;)Lm5/h;

    move-result-object p2

    iput-object p2, p0, Lm5/w0;->f:Lm5/h;

    invoke-virtual {p1}, Lm5/h;->D()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lm5/h;->u0()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lm5/h;->v0(Z)Z

    invoke-virtual {p2}, Lm5/h;->Z()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lm5/h;->q0()Z

    :cond_4
    :goto_0
    iget-boolean p1, p0, Lm5/w0;->c:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lm5/w0;->e:Lm5/h;

    invoke-virtual {p1}, Lm5/h;->g0()V

    :try_start_0
    invoke-virtual {p0}, Lm5/w0;->c()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lm5/w0;->e:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->c0()Z

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final b()Lm5/h;
    .locals 0

    iget-object p0, p0, Lm5/w0;->e:Lm5/h;

    return-object p0
.end method

.method public final c()V
    .locals 5

    invoke-virtual {p0}, Lm5/v0;->a()V

    invoke-virtual {p0}, Lm5/v0;->a()V

    iget-boolean v0, p0, Lm5/w0;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lm5/w0;->e:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->M()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Lm5/w0;->d:Z

    goto :goto_3

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lm5/w0;->e:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->u0()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lm5/w0;->e:Lm5/h;

    invoke-virtual {v0, v4}, Lm5/h;->v0(Z)Z

    iget-object v0, p0, Lm5/w0;->e:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->Z()Z

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lm5/w0;->e:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->t0()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lm5/w0;->e:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->Z()Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lm5/w0;->e:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->Z()Z

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lm5/w0;->e:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->q0()Z

    :cond_5
    :goto_1
    iget-boolean v0, p0, Lm5/w0;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lm5/w0;->e:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->M()I

    move-result v0

    if-ne v0, v2, :cond_6

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lm5/w0;->e:Lm5/h;

    iget-object v1, p0, Lm5/w0;->f:Lm5/h;

    invoke-virtual {v0, v1}, Lm5/h;->I(Lm5/h;)Z

    move-result v1

    :goto_2
    iput-boolean v1, p0, Lm5/w0;->d:Z

    :goto_3
    iget-object v0, p0, Lm5/w0;->e:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->M()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lm5/w0;->e:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->L()Z

    :pswitch_1
    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No next event in stream"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
