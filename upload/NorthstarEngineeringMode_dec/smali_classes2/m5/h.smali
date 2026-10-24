.class public final Lm5/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/h$a;,
        Lm5/h$b;
    }
.end annotation


# instance fields
.field public a:Lm5/z0;

.field public b:Lm5/w1;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Lm5/h;

.field public g:Lm5/h;

.field public h:I

.field public i:Lm5/h;

.field public j:Lm5/h;

.field public k:Lm5/z0$f;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I


# direct methods
.method public static N(I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static S(Lm5/h;Lm5/w1;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    iget v1, p0, Lm5/h;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v1}, Lm5/w1;->U()V

    :cond_0
    iget v1, p0, Lm5/h;->c:I

    if-nez v1, :cond_1

    iget-object v2, p0, Lm5/h;->b:Lm5/w1;

    if-eq v2, p1, :cond_4

    :cond_1
    iget-object v2, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lm5/w1;->x0()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    if-ne v2, p1, :cond_3

    iget v2, p1, Lm5/w1;->o:I

    add-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_5

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Lm5/w1;->b0(I)Lm5/w1;

    move-result-object v1

    if-ne v1, p1, :cond_5

    iget-object v1, v2, Lm5/w1;->a:Lm5/z0;

    iget v1, v1, Lm5/z0;->u:I

    iget v2, p1, Lm5/w1;->o:I

    add-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_5

    :cond_4
    :goto_0
    invoke-virtual {p0, p1, v0}, Lm5/h;->Y(Lm5/w1;I)V

    return-void

    :cond_5
    :goto_1
    iget-object v1, p1, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v1}, Lm5/z0;->H()V

    iget-object v1, p1, Lm5/w1;->a:Lm5/z0;

    iget-wide v2, v1, Lm5/z0;->k:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lm5/z0;->k:J

    iget-wide v2, v1, Lm5/z0;->l:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lm5/z0;->l:J

    if-eqz p0, :cond_6

    iget-object v2, p0, Lm5/h;->a:Lm5/z0;

    if-eq v2, v1, :cond_6

    invoke-virtual {v2}, Lm5/z0;->H()V

    iget-object v1, p0, Lm5/h;->a:Lm5/z0;

    iget-wide v2, v1, Lm5/z0;->k:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lm5/z0;->k:J

    iget-wide v2, v1, Lm5/z0;->l:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lm5/z0;->l:J

    :cond_6
    invoke-virtual {p1}, Lm5/w1;->s0()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    if-nez p0, :cond_7

    move-object v1, v2

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v3}, Lm5/h;->v(Z)Lm5/w1;

    move-result-object v1

    :goto_2
    invoke-virtual {p1, v1}, Lm5/w1;->q0(Lm5/w1;)V

    goto :goto_3

    :cond_8
    iget-object v1, p1, Lm5/w1;->f:Lm5/w1;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lm5/w1;->r0()V

    :cond_9
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lm5/h;->y()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0}, Lm5/h;->v(Z)Lm5/w1;

    move-result-object v1

    invoke-virtual {v1}, Lm5/w1;->r0()V

    :cond_a
    :goto_3
    iget v1, p1, Lm5/w1;->p:I

    if-lez v1, :cond_b

    iget v1, p1, Lm5/w1;->o:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0}, Lm5/w1;->b0(I)Lm5/w1;

    move-result-object v4

    iget-object v5, p1, Lm5/w1;->a:Lm5/z0;

    iget v5, v5, Lm5/z0;->u:I

    iget v6, p1, Lm5/w1;->p:I

    invoke-static {p1, v1, v4, v5, v6}, Lm5/h;->y0(Lm5/w1;ILm5/w1;II)V

    :cond_b
    iget-object v1, p1, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v1}, Lm5/z0;->k()V

    move-object v1, p1

    :goto_4
    if-eqz v1, :cond_e

    :goto_5
    iget-object v4, v1, Lm5/w1;->c:Lm5/h;

    if-eqz v4, :cond_c

    iget v5, p1, Lm5/w1;->o:I

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v5}, Lm5/w1;->f0(I)Lm5/w1;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lm5/h;->Y(Lm5/w1;I)V

    goto :goto_5

    :cond_c
    invoke-virtual {v1}, Lm5/w1;->T()V

    if-eqz p0, :cond_d

    iget-object v4, p0, Lm5/h;->a:Lm5/z0;

    iput-object v4, v1, Lm5/w1;->a:Lm5/z0;

    :cond_d
    invoke-virtual {v1, p1, v3}, Lm5/w1;->L0(Lm5/w1;Z)Lm5/w1;

    move-result-object v1

    goto :goto_4

    :cond_e
    iget-object v1, p1, Lm5/w1;->f:Lm5/w1;

    if-eqz v1, :cond_13

    iget-object v4, v1, Lm5/w1;->i:Lm5/w1;

    if-ne v4, p1, :cond_f

    iget-object v4, p1, Lm5/w1;->g:Lm5/w1;

    iput-object v4, v1, Lm5/w1;->i:Lm5/w1;

    :cond_f
    iget-object v4, v1, Lm5/w1;->j:Lm5/w1;

    if-ne v4, p1, :cond_10

    iget-object v4, p1, Lm5/w1;->h:Lm5/w1;

    iput-object v4, v1, Lm5/w1;->j:Lm5/w1;

    :cond_10
    iget-object v1, p1, Lm5/w1;->h:Lm5/w1;

    if-eqz v1, :cond_11

    iget-object v4, p1, Lm5/w1;->g:Lm5/w1;

    iput-object v4, v1, Lm5/w1;->g:Lm5/w1;

    :cond_11
    iget-object v4, p1, Lm5/w1;->g:Lm5/w1;

    if-eqz v4, :cond_12

    iput-object v1, v4, Lm5/w1;->h:Lm5/w1;

    :cond_12
    iput-object v2, p1, Lm5/w1;->f:Lm5/w1;

    iput-object v2, p1, Lm5/w1;->h:Lm5/w1;

    iput-object v2, p1, Lm5/w1;->g:Lm5/w1;

    :cond_13
    if-eqz p0, :cond_1a

    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    iget v2, p0, Lm5/h;->c:I

    if-eqz v2, :cond_14

    move v2, v3

    goto :goto_6

    :cond_14
    move v2, v0

    :goto_6
    invoke-virtual {p0}, Lm5/h;->c()I

    move-result v4

    if-lez v4, :cond_16

    invoke-virtual {p0}, Lm5/h;->g0()V

    invoke-virtual {p0}, Lm5/h;->Z()Z

    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    iget v2, p0, Lm5/h;->c:I

    if-eqz v2, :cond_15

    goto :goto_7

    :cond_15
    move v3, v0

    :goto_7
    invoke-virtual {p0}, Lm5/h;->c0()Z

    move v2, v3

    :cond_16
    if-eqz v2, :cond_17

    invoke-virtual {v1, p1}, Lm5/w1;->N(Lm5/w1;)V

    goto :goto_9

    :cond_17
    invoke-virtual {v1}, Lm5/w1;->V()Lm5/w1;

    iget-object v2, v1, Lm5/w1;->f:Lm5/w1;

    iput-object v2, p1, Lm5/w1;->f:Lm5/w1;

    iget-object v2, v1, Lm5/w1;->h:Lm5/w1;

    iput-object v2, p1, Lm5/w1;->h:Lm5/w1;

    iput-object v1, p1, Lm5/w1;->g:Lm5/w1;

    iget-object v2, v1, Lm5/w1;->h:Lm5/w1;

    if-eqz v2, :cond_18

    iput-object p1, v2, Lm5/w1;->g:Lm5/w1;

    goto :goto_8

    :cond_18
    iget-object v2, v1, Lm5/w1;->f:Lm5/w1;

    iput-object p1, v2, Lm5/w1;->i:Lm5/w1;

    :goto_8
    iput-object p1, v1, Lm5/w1;->h:Lm5/w1;

    :goto_9
    if-lez v4, :cond_19

    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    iget v2, p0, Lm5/h;->c:I

    iget v3, p1, Lm5/w1;->o:I

    add-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, p1, v3, v4}, Lm5/h;->y0(Lm5/w1;ILm5/w1;II)V

    :cond_19
    invoke-virtual {p0, p1, v0}, Lm5/h;->Y(Lm5/w1;I)V

    :cond_1a
    return-void
.end method

.method public static U(Lm5/w1;Lm5/h;Z)V
    .locals 12

    invoke-virtual {p0}, Lm5/w1;->k0()Z

    move-result v0

    invoke-virtual {p0}, Lm5/w1;->l0()Z

    move-result v1

    const/4 v2, -0x1

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_3

    if-eqz p2, :cond_0

    if-nez v0, :cond_3

    :cond_0
    const/16 p2, 0x100

    invoke-virtual {p0, p2}, Lm5/w1;->O(I)Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    iget p1, p0, Lm5/w1;->e:I

    and-int/lit16 p1, p1, -0x101

    iput p1, p0, Lm5/w1;->e:I

    invoke-virtual {p0}, Lm5/w1;->r0()V

    invoke-virtual {p0, v5}, Lm5/w1;->q0(Lm5/w1;)V

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    iget-wide p1, p0, Lm5/z0;->k:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lm5/z0;->k:J

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lm5/w1;->U()V

    invoke-virtual {p0}, Lm5/w1;->m0()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lm5/w1;->k()Lm5/h;

    move-result-object p0

    invoke-virtual {p0}, Lm5/h;->Z()Z

    invoke-virtual {p0, v2, p1}, Lm5/h;->Q(ILm5/h;)Ljava/lang/Object;

    invoke-virtual {p0}, Lm5/h;->h0()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    iget-object v6, p1, Lm5/h;->b:Lm5/w1;

    if-ne p0, v6, :cond_5

    iget v6, p1, Lm5/h;->c:I

    if-ne v6, v2, :cond_5

    invoke-virtual {p1, p0, v1}, Lm5/h;->Y(Lm5/w1;I)V

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lm5/h;->b0()Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lm5/h;->Z()Z

    :goto_1
    return-void

    :cond_5
    iget-object v6, p1, Lm5/h;->a:Lm5/z0;

    iget-object v7, p0, Lm5/w1;->a:Lm5/z0;

    if-ne v6, v7, :cond_7

    invoke-virtual {p1}, Lm5/h;->g0()V

    invoke-virtual {p1, p0, v1}, Lm5/h;->Y(Lm5/w1;I)V

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lm5/h;->b0()Z

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lm5/h;->Z()Z

    :goto_2
    invoke-virtual {p1}, Lm5/h;->C()Z

    move-result v0

    invoke-virtual {p1}, Lm5/h;->c0()Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lm5/w1;->m0()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lm5/w1;->k()Lm5/h;

    move-result-object v0

    invoke-virtual {v0}, Lm5/h;->Z()Z

    invoke-virtual {v0, v2, p1}, Lm5/h;->Q(ILm5/h;)Ljava/lang/Object;

    invoke-virtual {v0}, Lm5/h;->h0()V

    if-eqz p1, :cond_8

    iget v0, v0, Lm5/h;->s:I

    invoke-virtual {p1, v0}, Lm5/h;->a0(I)V

    goto :goto_3

    :cond_8
    move v0, v1

    :goto_3
    iget-object v6, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v6}, Lm5/z0;->k()V

    const/4 v6, 0x1

    invoke-virtual {p0, p0, v6}, Lm5/w1;->L0(Lm5/w1;Z)Lm5/w1;

    move-result-object v7

    move v9, v1

    move-object v8, v7

    :goto_4
    if-eqz v7, :cond_10

    iget-object v10, v7, Lm5/w1;->f:Lm5/w1;

    if-ne v10, p0, :cond_b

    invoke-virtual {v7}, Lm5/w1;->s0()Z

    move-result v10

    if-eqz v10, :cond_b

    if-nez p2, :cond_9

    iget-object v8, v7, Lm5/w1;->g:Lm5/w1;

    goto :goto_8

    :cond_9
    if-nez p1, :cond_a

    move-object v10, v5

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v1}, Lm5/h;->v(Z)Lm5/w1;

    move-result-object v10

    :goto_5
    invoke-virtual {v7, v10}, Lm5/w1;->q0(Lm5/w1;)V

    :cond_b
    :goto_6
    iget-object v10, v7, Lm5/w1;->c:Lm5/h;

    if-eqz v10, :cond_c

    invoke-virtual {v10, p0, v2}, Lm5/h;->Y(Lm5/w1;I)V

    goto :goto_6

    :cond_c
    invoke-virtual {v7}, Lm5/w1;->T()V

    if-eqz p1, :cond_d

    iget-object v10, p1, Lm5/h;->a:Lm5/z0;

    iput-object v10, v7, Lm5/w1;->a:Lm5/z0;

    :cond_d
    if-nez v9, :cond_f

    iget-object v9, v7, Lm5/w1;->d:Lm5/c;

    if-eqz v9, :cond_e

    goto :goto_7

    :cond_e
    move v9, v1

    goto :goto_8

    :cond_f
    :goto_7
    move v9, v6

    :goto_8
    invoke-virtual {v7, p0, v6}, Lm5/w1;->L0(Lm5/w1;Z)Lm5/w1;

    move-result-object v7

    goto :goto_4

    :cond_10
    iget-object p2, p0, Lm5/w1;->j:Lm5/w1;

    if-eqz v9, :cond_11

    if-nez p1, :cond_11

    iget-object p1, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p1}, Lm5/z0;->J()Lm5/h;

    move-result-object p1

    invoke-virtual {p1}, Lm5/h;->g()V

    invoke-virtual {p1}, Lm5/h;->Z()Z

    move-object v2, p1

    goto :goto_9

    :cond_11
    move-object v2, v5

    :goto_9
    invoke-virtual {p2}, Lm5/w1;->s0()Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {p0}, Lm5/w1;->r0()V

    :cond_12
    iget-object v7, p0, Lm5/w1;->a:Lm5/z0;

    iget-wide v9, v7, Lm5/z0;->k:J

    add-long/2addr v9, v3

    iput-wide v9, v7, Lm5/z0;->k:J

    iget-wide v9, v7, Lm5/z0;->l:J

    add-long/2addr v9, v3

    iput-wide v9, v7, Lm5/z0;->l:J

    if-eqz p1, :cond_13

    if-nez v0, :cond_13

    invoke-virtual {p1, v1}, Lm5/h;->v(Z)Lm5/w1;

    move-result-object v7

    invoke-virtual {v7}, Lm5/w1;->r0()V

    iget-object v7, p1, Lm5/h;->a:Lm5/z0;

    iget-wide v9, v7, Lm5/z0;->k:J

    add-long/2addr v9, v3

    iput-wide v9, v7, Lm5/z0;->k:J

    iget-wide v9, v7, Lm5/z0;->l:J

    add-long/2addr v9, v3

    iput-wide v9, v7, Lm5/z0;->l:J

    :cond_13
    iget-object v3, p0, Lm5/w1;->i:Lm5/w1;

    if-ne v3, v8, :cond_14

    iget-object v3, p2, Lm5/w1;->g:Lm5/w1;

    iput-object v3, p0, Lm5/w1;->i:Lm5/w1;

    :cond_14
    iget-object v3, p0, Lm5/w1;->j:Lm5/w1;

    if-ne v3, p2, :cond_15

    iget-object v3, v8, Lm5/w1;->h:Lm5/w1;

    iput-object v3, p0, Lm5/w1;->j:Lm5/w1;

    :cond_15
    iget-object p0, v8, Lm5/w1;->h:Lm5/w1;

    if-eqz p0, :cond_16

    iget-object v3, p2, Lm5/w1;->g:Lm5/w1;

    iput-object v3, p0, Lm5/w1;->g:Lm5/w1;

    :cond_16
    iget-object v3, p2, Lm5/w1;->g:Lm5/w1;

    if-eqz v3, :cond_17

    iput-object p0, v3, Lm5/w1;->h:Lm5/w1;

    :cond_17
    iput-object v5, v8, Lm5/w1;->h:Lm5/w1;

    iput-object v5, p2, Lm5/w1;->g:Lm5/w1;

    move-object p0, v8

    :goto_a
    if-eqz p0, :cond_18

    iput-object v5, p0, Lm5/w1;->f:Lm5/w1;

    iget-object p0, p0, Lm5/w1;->g:Lm5/w1;

    goto :goto_a

    :cond_18
    if-eqz p1, :cond_25

    iget-object p0, p1, Lm5/h;->b:Lm5/w1;

    iget v3, p1, Lm5/h;->c:I

    if-eqz v3, :cond_19

    move v3, v6

    goto :goto_b

    :cond_19
    move v3, v1

    :goto_b
    invoke-virtual {p1}, Lm5/h;->c()I

    move-result v4

    if-lez v4, :cond_1b

    invoke-virtual {p1}, Lm5/h;->g0()V

    invoke-virtual {p1}, Lm5/h;->Z()Z

    iget-object p0, p1, Lm5/h;->b:Lm5/w1;

    iget v3, p1, Lm5/h;->c:I

    if-eqz v3, :cond_1a

    move v3, v6

    goto :goto_c

    :cond_1a
    move v3, v1

    :goto_c
    invoke-virtual {p1}, Lm5/h;->c0()Z

    :cond_1b
    invoke-virtual {v8}, Lm5/w1;->s0()Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object v5, v8

    :goto_d
    iget-object v7, v5, Lm5/w1;->g:Lm5/w1;

    if-eqz v7, :cond_1c

    invoke-virtual {v7}, Lm5/w1;->s0()Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-object v5, v5, Lm5/w1;->g:Lm5/w1;

    goto :goto_d

    :cond_1c
    invoke-virtual {p1, v1}, Lm5/h;->v(Z)Lm5/w1;

    move-result-object v7

    if-lez v4, :cond_1d

    iget-object v9, p1, Lm5/h;->b:Lm5/w1;

    iget v10, p1, Lm5/h;->c:I

    invoke-virtual {v5}, Lm5/w1;->E0()I

    move-result v11

    invoke-static {v9, v10, v5, v11, v4}, Lm5/h;->y0(Lm5/w1;ILm5/w1;II)V

    :cond_1d
    invoke-virtual {v7}, Lm5/w1;->m0()Z

    move-result v4

    if-eqz v4, :cond_20

    iget v4, v7, Lm5/w1;->o:I

    if-lez v4, :cond_1e

    goto :goto_e

    :cond_1e
    invoke-virtual {v7}, Lm5/w1;->A0()Lm5/w1;

    move-result-object v7

    iget v4, v7, Lm5/w1;->o:I

    add-int/lit8 v6, v4, 0x2

    iget v4, v7, Lm5/w1;->p:I

    :goto_e
    iget v9, v5, Lm5/w1;->o:I

    add-int/lit8 v9, v9, 0x2

    invoke-static {v7, v6, v5, v9, v4}, Lm5/h;->y0(Lm5/w1;ILm5/w1;II)V

    goto :goto_f

    :cond_1f
    if-lez v4, :cond_20

    iget-object v5, p1, Lm5/h;->b:Lm5/w1;

    iget v6, p1, Lm5/h;->c:I

    invoke-virtual {p2}, Lm5/w1;->E0()I

    move-result v7

    invoke-static {v5, v6, p2, v7, v4}, Lm5/h;->y0(Lm5/w1;ILm5/w1;II)V

    :cond_20
    :goto_f
    if-eqz v3, :cond_22

    iget-object v3, p0, Lm5/w1;->j:Lm5/w1;

    iput-object v3, v8, Lm5/w1;->h:Lm5/w1;

    if-nez v3, :cond_21

    iput-object v8, p0, Lm5/w1;->i:Lm5/w1;

    goto :goto_10

    :cond_21
    iput-object v8, v3, Lm5/w1;->g:Lm5/w1;

    :goto_10
    iput-object p2, p0, Lm5/w1;->j:Lm5/w1;

    move-object p2, v8

    :goto_11
    if-eqz p2, :cond_24

    iput-object p0, p2, Lm5/w1;->f:Lm5/w1;

    iget-object p2, p2, Lm5/w1;->g:Lm5/w1;

    goto :goto_11

    :cond_22
    iget-object v3, p0, Lm5/w1;->h:Lm5/w1;

    iput-object v3, v8, Lm5/w1;->h:Lm5/w1;

    iput-object p0, p2, Lm5/w1;->g:Lm5/w1;

    iget-object v3, p0, Lm5/w1;->h:Lm5/w1;

    if-eqz v3, :cond_23

    iput-object v8, v3, Lm5/w1;->g:Lm5/w1;

    goto :goto_12

    :cond_23
    iget-object v3, p0, Lm5/w1;->f:Lm5/w1;

    iput-object v8, v3, Lm5/w1;->i:Lm5/w1;

    :goto_12
    iput-object p2, p0, Lm5/w1;->h:Lm5/w1;

    move-object p2, v8

    :goto_13
    if-eq p2, p0, :cond_24

    iget-object v3, p0, Lm5/w1;->f:Lm5/w1;

    iput-object v3, p2, Lm5/w1;->f:Lm5/w1;

    iget-object p2, p2, Lm5/w1;->g:Lm5/w1;

    goto :goto_13

    :cond_24
    invoke-virtual {p1, v8, v1}, Lm5/h;->Y(Lm5/w1;I)V

    invoke-virtual {p1, v0}, Lm5/h;->f0(I)V

    :cond_25
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lm5/h;->h0()V

    :cond_26
    return-void
.end method

.method public static h(Lm5/z0;Z)Lm5/b1;
    .locals 1

    iget-object v0, p0, Lm5/z0;->q:Lm5/d1;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance p1, Lm5/b0;

    invoke-direct {p1, p0}, Lm5/b0;-><init>(Lm5/z0;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lm5/c0;

    invoke-direct {p1, p0}, Lm5/c0;-><init>(Lm5/z0;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lm5/s1;

    invoke-direct {p1, p0}, Lm5/s1;-><init>(Lm5/z0;)V

    :goto_0
    iget-object v0, p0, Lm5/z0;->r:Lm5/o0$a;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lm5/b1;->c0()Lm5/o0$a;

    move-result-object v0

    iput-object v0, p0, Lm5/z0;->r:Lm5/o0$a;

    :cond_2
    return-object p1
.end method

.method public static j(Lm5/z0;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lm5/r0;
    .locals 1

    iget-object p2, p0, Lm5/z0;->q:Lm5/d1;

    if-nez p2, :cond_0

    new-instance p2, Lm5/r0;

    invoke-direct {p2, p0, p1}, Lm5/r0;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_0
    invoke-interface {p2}, Lm5/d1;->b()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ll5/e;

    if-ne p2, v0, :cond_1

    new-instance p2, Lm5/m1;

    invoke-direct {p2, p0, p1}, Lm5/r0;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_1
    const-class v0, Ll5/c;

    if-ne p2, v0, :cond_2

    new-instance p2, Lm5/l1;

    invoke-direct {p2, p0, p1}, Lm5/r0;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_2
    const-class v0, Ll5/d;

    if-ne p2, v0, :cond_3

    new-instance p2, Lm5/k1;

    invoke-direct {p2, p0, p1}, Lm5/r0;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_3
    const-class v0, Ll5/f;

    if-ne p2, v0, :cond_4

    new-instance p2, Lm5/n1;

    invoke-direct {p2, p0, p1}, Lm5/r0;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_4
    const-class v0, Ll5/i;

    if-ne p2, v0, :cond_5

    new-instance p2, Lm5/r1;

    invoke-direct {p2, p0, p1}, Lm5/r0;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_5
    const-class v0, Ll5/j;

    if-ne p2, v0, :cond_6

    new-instance p2, Lm5/q1;

    invoke-direct {p2, p0, p1}, Lm5/r0;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_6
    const-class v0, Ll5/h;

    if-ne p2, v0, :cond_7

    new-instance p2, Lm5/o1;

    invoke-direct {p2, p0, p1}, Lm5/r0;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_7
    const-class v0, Ll5/a;

    if-ne p2, v0, :cond_8

    new-instance p2, Lm5/a0;

    invoke-direct {p2, p0, p1}, Lm5/r0;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_8
    const-class v0, Ll5/b;

    if-ne p2, v0, :cond_9

    new-instance p2, Lm5/z;

    invoke-direct {p2, p0, p1}, Lm5/r0;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_9
    const-class v0, Ll5/g;

    if-ne p2, v0, :cond_a

    new-instance p2, Lm5/p1;

    invoke-direct {p2, p0, p1}, Lm5/r0;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown SAAJ element class: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Ljava/io/PrintStream;Lm5/e;Ljava/lang/Object;)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_2

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p1, Lm5/u1;

    if-eqz v1, :cond_1

    const-string v1, "TEXT"

    goto :goto_1

    :cond_1
    const-string v1, "CDATA"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lm5/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lm5/e;->b:Lm5/e;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static m(Ljava/io/PrintStream;Ljava/lang/Object;II)V
    .locals 7

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {p2, p3, p1}, Lm5/f;->c(IILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p3, v1, :cond_7

    const/16 v1, 0x24

    if-ne p3, v1, :cond_0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    const-string v5, ">"

    const-string v6, "<#"

    if-ne v3, v4, :cond_6

    aget-char v2, v2, p2

    const/16 v3, 0x20

    const/16 v4, 0x22

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_1

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(C)V

    goto :goto_1

    :cond_1
    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    const-string v2, "\\n"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    const-string v2, "\\r"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    const-string v2, "\\t"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-ne v2, v4, :cond_5

    const-string v2, "\\\""

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p3, v1

    goto/16 :goto_0

    :cond_7
    :goto_2
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static n(Ljava/io/PrintStream;Ljava/lang/String;Lm5/h;Ljava/lang/Object;)V
    .locals 1

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-ne p3, p2, :cond_0

    const-string p3, "*:"

    invoke-virtual {p0, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p2, Lm5/h;->e:Ljava/lang/String;

    if-nez p3, :cond_1

    const-string p3, "<cur>"

    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lm5/h;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static o(Ljava/io/PrintStream;Lm5/w1;ILjava/lang/Object;)V
    .locals 7

    const-string v0, "  "

    if-ne p1, p3, :cond_0

    const-string v1, "* "

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lm5/w1;->z0()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const-string v2, "<< Unknown Kind ("

    const-string v3, ") >>"

    invoke-static {v2, v0, v3}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, "PROCINST"

    goto :goto_2

    :cond_3
    const-string v0, "COMMENT"

    goto :goto_2

    :cond_4
    const-string v0, "ATTR"

    goto :goto_2

    :cond_5
    const-string v0, "ELEM"

    goto :goto_2

    :cond_6
    const-string v0, "ROOT"

    goto :goto_2

    :cond_7
    const-string v0, "TEXT"

    :goto_2
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    const-string v2, " "

    if-eqz v0, :cond_9

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p1, Lm5/w1;->k:Ljava/lang/Object;

    const-string v3, " )"

    if-nez v0, :cond_a

    iget-object v0, p1, Lm5/w1;->q:Lm5/e;

    if-eqz v0, :cond_b

    :cond_a
    const-string v0, " Value( "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lm5/w1;->k:Ljava/lang/Object;

    iget v4, p1, Lm5/w1;->m:I

    iget v5, p1, Lm5/w1;->o:I

    invoke-static {p0, v0, v4, v5}, Lm5/h;->m(Ljava/io/PrintStream;Ljava/lang/Object;II)V

    iget-object v0, p1, Lm5/w1;->q:Lm5/e;

    invoke-static {p0, v0, p3}, Lm5/h;->l(Ljava/io/PrintStream;Lm5/e;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p1, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    if-eqz v0, :cond_c

    const-string v0, " (USER)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_c
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lm5/w1;->O(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, " (VACANT)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p1, Lm5/w1;->l:Ljava/lang/Object;

    if-nez v0, :cond_e

    iget-object v0, p1, Lm5/w1;->r:Lm5/e;

    if-eqz v0, :cond_f

    :cond_e
    const-string v0, " After( "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lm5/w1;->l:Ljava/lang/Object;

    iget v4, p1, Lm5/w1;->n:I

    iget v5, p1, Lm5/w1;->p:I

    invoke-static {p0, v0, v4, v5}, Lm5/h;->m(Ljava/io/PrintStream;Ljava/lang/Object;II)V

    iget-object v0, p1, Lm5/w1;->r:Lm5/e;

    invoke-static {p0, v0, p3}, Lm5/h;->l(Ljava/io/PrintStream;Lm5/e;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_f
    iget-object v0, p1, Lm5/w1;->c:Lm5/h;

    :goto_3
    if-eqz v0, :cond_10

    const-string v3, "E:"

    invoke-static {p0, v3, v0, p3}, Lm5/h;->n(Ljava/io/PrintStream;Ljava/lang/String;Lm5/h;Ljava/lang/Object;)V

    iget-object v0, v0, Lm5/h;->i:Lm5/h;

    goto :goto_3

    :cond_10
    iget-object v0, p1, Lm5/w1;->a:Lm5/z0;

    iget-object v0, v0, Lm5/z0;->i:Lm5/h;

    :goto_4
    if-eqz v0, :cond_12

    iget-object v3, v0, Lm5/h;->b:Lm5/w1;

    if-ne v3, p1, :cond_11

    const-string v3, "R:"

    invoke-static {p0, v3, v0, p3}, Lm5/h;->n(Ljava/io/PrintStream;Ljava/lang/String;Lm5/h;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, v0, Lm5/h;->i:Lm5/h;

    goto :goto_4

    :cond_12
    iget-object v0, p1, Lm5/w1;->d:Lm5/c;

    :goto_5
    if-eqz v0, :cond_15

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-ne p3, v0, :cond_13

    const-string v3, "*:"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_13
    iget-object v3, v0, Lm5/c;->f:Ljava/lang/Object;

    instance-of v4, v3, Li5/o1;

    const-string v5, "]"

    if-eqz v4, :cond_14

    check-cast v3, Li5/o1;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "<line:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Li5/o1;->a:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ">["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lm5/c;->b:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<mark>["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lm5/c;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_6
    iget-object v0, v0, Lm5/c;->c:Lm5/c;

    goto :goto_5

    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_16

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_16

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_16
    const-string v2, " ("

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    iget-object p1, p1, Lm5/w1;->i:Lm5/w1;

    :goto_7
    if-eqz p1, :cond_17

    add-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0, p3}, Lm5/h;->o(Ljava/io/PrintStream;Lm5/w1;ILjava/lang/Object;)V

    iget-object p1, p1, Lm5/w1;->g:Lm5/w1;

    goto :goto_7

    :cond_17
    return-void
.end method

.method public static y0(Lm5/w1;ILm5/w1;II)V
    .locals 9

    invoke-virtual {p0, p1, p4}, Lm5/w1;->a0(II)Ljava/lang/Object;

    move-result-object v5

    iget-object v3, p0, Lm5/w1;->a:Lm5/z0;

    iget v6, v3, Lm5/z0;->o:I

    iget v7, v3, Lm5/z0;->p:I

    const/4 v8, 0x0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v3 .. v8}, Lm5/w1;->o0(ILjava/lang/Object;IIZ)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p4

    invoke-virtual/range {v0 .. v6}, Lm5/w1;->H0(IILm5/w1;IZZ)V

    return-void
.end method

.method public static z0(Lm5/z0;Lm5/w1;Lm5/e;I)Lm5/e;
    .locals 4

    const/4 v0, 0x0

    move-object v1, p2

    move v2, v0

    :goto_0
    if-eqz v1, :cond_1

    if-lez p3, :cond_1

    iget v3, v1, Lm5/e;->f:I

    if-le v3, p3, :cond_0

    iput p3, v1, Lm5/e;->f:I

    :cond_0
    iput v2, v1, Lm5/e;->e:I

    iget v3, v1, Lm5/e;->f:I

    add-int/2addr v2, v3

    sub-int/2addr p3, v3

    iget-object v1, v1, Lm5/e;->b:Lm5/e;

    goto :goto_0

    :cond_1
    if-gtz p3, :cond_3

    :goto_1
    if-eqz v1, :cond_4

    iget p0, v1, Lm5/e;->f:I

    if-eqz p0, :cond_2

    iput v0, v1, Lm5/e;->f:I

    :cond_2
    iput v2, v1, Lm5/e;->e:I

    iget-object v1, v1, Lm5/e;->b:Lm5/e;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lm5/z0;->g()Lm5/u1;

    move-result-object p0

    check-cast p1, Lm5/o0$a;

    iput-object p1, p0, Lm5/e;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lm5/e;->a:Lm5/z0;

    iput p3, p0, Lm5/e;->f:I

    iput v2, p0, Lm5/e;->e:I

    invoke-static {p2, p0, p1}, Lm5/e;->a(Lm5/e;Lm5/e;Lm5/e;)Lm5/e;

    move-result-object p2

    :cond_4
    return-object p2
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lm5/h;->z(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final A0(Ljava/lang/Object;)Lm5/h;
    .locals 4

    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->r()Lm5/h;

    move-result-object v0

    new-instance v1, Lm5/z0$f;

    iget-object v2, v0, Lm5/h;->a:Lm5/z0;

    iget-object v3, v2, Lm5/z0;->c:Ljava/lang/ref/ReferenceQueue;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v3, v2, Lm5/z0;->c:Ljava/lang/ref/ReferenceQueue;

    :cond_0
    iget-object v2, v2, Lm5/z0;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, v1, Lm5/z0$f;->a:Lm5/h;

    iput-object v1, v0, Lm5/h;->k:Lm5/z0$f;

    invoke-virtual {v0, p0}, Lm5/h;->W(Lm5/h;)V

    return-object v0
.end method

.method public final B()Z
    .locals 6

    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    iget-object v0, v0, Lm5/z0;->m:Lm5/h$b;

    iget v1, p0, Lm5/h;->l:I

    iget-object v2, v0, Lm5/h$b;->d:[Lm5/h;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lm5/h;->b:Lm5/w1;

    iget-object v0, v0, Lm5/h$b;->b:[Lm5/w1;

    aget-object v0, v0, v1

    if-ne v2, v0, :cond_1

    iget p0, p0, Lm5/h;->c:I

    if-ne p0, v5, :cond_1

    :goto_0
    move v3, v4

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v1, v2, Lm5/h;->b:Lm5/w1;

    if-ne v0, v1, :cond_1

    iget p0, p0, Lm5/h;->c:I

    if-ne p0, v5, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v3
.end method

.method public final C()Z
    .locals 4

    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    iget-object v0, v0, Lm5/z0;->m:Lm5/h$b;

    iget v1, p0, Lm5/h;->l:I

    iget-object v2, v0, Lm5/h$b;->d:[Lm5/h;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    iget-object v2, p0, Lm5/h;->b:Lm5/w1;

    iget-object v3, v0, Lm5/h$b;->b:[Lm5/w1;

    aget-object v3, v3, v1

    if-ne v2, v3, :cond_0

    iget p0, p0, Lm5/h;->c:I

    iget-object v0, v0, Lm5/h$b;->c:[I

    aget v0, v0, v1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lm5/h;->I(Lm5/h;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final D()Z
    .locals 1

    iget v0, p0, Lm5/h;->c:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->z0()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final E()Z
    .locals 1

    iget v0, p0, Lm5/h;->c:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->z0()I

    move-result p0

    invoke-static {p0}, Lm5/h;->N(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final F()Z
    .locals 1

    iget v0, p0, Lm5/h;->c:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->z0()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final G()Z
    .locals 2

    iget v0, p0, Lm5/h;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->z0()I

    move-result p0

    invoke-static {p0}, Lm5/h;->N(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final H()Z
    .locals 1

    iget v0, p0, Lm5/h;->c:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->z0()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final I(Lm5/h;)Z
    .locals 2

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v1, p1, Lm5/h;->b:Lm5/w1;

    if-ne v0, v1, :cond_0

    iget p0, p0, Lm5/h;->c:I

    iget p1, p1, Lm5/h;->c:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final J()Z
    .locals 0

    iget p0, p0, Lm5/h;->c:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final K()Z
    .locals 3

    invoke-virtual {p0}, Lm5/h;->M()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lm5/h;->L()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public final L()Z
    .locals 1

    iget v0, p0, Lm5/h;->c:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->y0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final M()I
    .locals 2

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->z0()I

    move-result v0

    iget p0, p0, Lm5/h;->c:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    neg-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final O(Lm5/h;)Lm5/h;
    .locals 1

    if-nez p1, :cond_0

    iput-object p0, p0, Lm5/h;->j:Lm5/h;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lm5/h;->j:Lm5/h;

    iput-object v0, p0, Lm5/h;->j:Lm5/h;

    iget-object v0, p1, Lm5/h;->j:Lm5/h;

    iput-object p0, v0, Lm5/h;->i:Lm5/h;

    iput-object p0, p1, Lm5/h;->j:Lm5/h;

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public final P(Lm5/h;)Lm5/h;
    .locals 3

    iget-object v0, p0, Lm5/h;->j:Lm5/h;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    move-object p1, v1

    goto :goto_1

    :cond_0
    if-ne p1, p0, :cond_1

    iget-object p1, p0, Lm5/h;->i:Lm5/h;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lm5/h;->i:Lm5/h;

    iput-object v2, v0, Lm5/h;->i:Lm5/h;

    :goto_0
    iget-object v2, p0, Lm5/h;->i:Lm5/h;

    if-nez v2, :cond_2

    if-eqz p1, :cond_3

    iput-object v0, p1, Lm5/h;->j:Lm5/h;

    goto :goto_1

    :cond_2
    iput-object v0, v2, Lm5/h;->j:Lm5/h;

    iput-object v1, p0, Lm5/h;->i:Lm5/h;

    :cond_3
    :goto_1
    iput-object v1, p0, Lm5/h;->j:Lm5/h;

    return-object p1
.end method

.method public final Q(ILm5/h;)Ljava/lang/Object;
    .locals 9

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lm5/h;->c()I

    move-result p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lm5/h;->r:I

    iput p1, p0, Lm5/h;->s:I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lm5/h;->r(I)Ljava/lang/Object;

    move-result-object v7

    iget v8, p0, Lm5/h;->r:I

    if-nez p2, :cond_3

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->d:Lm5/c;

    move-object v6, v0

    :goto_0
    if-eqz v6, :cond_5

    const/4 v5, 0x0

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget v1, p0, Lm5/h;->c:I

    iget-object v2, v6, Lm5/c;->a:Lm5/w1;

    iget v3, v6, Lm5/c;->b:I

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lm5/w1;->n0(ILm5/w1;IIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {p2}, Lm5/z0;->J()Lm5/h;

    move-result-object p2

    invoke-virtual {p2}, Lm5/h;->g()V

    invoke-virtual {p2}, Lm5/h;->Z()Z

    invoke-virtual {p0, p1, p2}, Lm5/h;->Q(ILm5/h;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2}, Lm5/h;->h0()V

    return-object p0

    :cond_2
    iget-object v6, v6, Lm5/c;->c:Lm5/c;

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget v1, p0, Lm5/h;->c:I

    iget-object v2, p2, Lm5/h;->b:Lm5/w1;

    iget v3, p2, Lm5/h;->c:I

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lm5/w1;->n0(ILm5/w1;IIZ)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, p0}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {p0, p1}, Lm5/h;->a0(I)V

    iput v8, p0, Lm5/h;->r:I

    iput p1, p0, Lm5/h;->s:I

    return-object v7

    :cond_4
    invoke-virtual {p2, v8, p1, v7}, Lm5/h;->z(IILjava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->H()V

    if-nez p2, :cond_6

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget v1, p0, Lm5/h;->c:I

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lm5/w1;->H0(IILm5/w1;IZZ)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget v1, p0, Lm5/h;->c:I

    iget-object v3, p2, Lm5/h;->b:Lm5/w1;

    iget v4, p2, Lm5/h;->c:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lm5/w1;->H0(IILm5/w1;IZZ)V

    :goto_1
    iget-object p2, p0, Lm5/h;->a:Lm5/z0;

    iget-wide v0, p2, Lm5/z0;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p2, Lm5/z0;->k:J

    iput v8, p0, Lm5/h;->r:I

    iput p1, p0, Lm5/h;->s:I

    return-object v7
.end method

.method public final R(Lm5/h;)V
    .locals 1

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/h;->q0()Z

    invoke-static {p1, v0}, Lm5/h;->S(Lm5/h;Lm5/w1;)V

    return-void
.end method

.method public final T(Lm5/h;Z)V
    .locals 0

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-static {p0, p1, p2}, Lm5/h;->U(Lm5/w1;Lm5/h;Z)V

    return-void
.end method

.method public final V(Lm5/e;)V
    .locals 4

    iget-object v0, p1, Lm5/e;->d:Ljava/lang/Object;

    instance-of v1, v0, Lm5/o0$a;

    if-eqz v1, :cond_0

    check-cast v0, Lm5/o0$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lm5/h;->X(Lm5/o0$a;)V

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->U()V

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v1, p0, Lm5/h;->a:Lm5/z0;

    iget-object v2, v0, Lm5/w1;->q:Lm5/e;

    iget v3, v0, Lm5/w1;->o:I

    invoke-static {v1, v0, v2, v3}, Lm5/h;->z0(Lm5/z0;Lm5/w1;Lm5/e;I)Lm5/e;

    move-result-object v1

    iput-object v1, v0, Lm5/w1;->q:Lm5/e;

    :goto_1
    if-eqz v1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lm5/h;->b:Lm5/w1;

    iget v0, v1, Lm5/e;->e:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lm5/h;->u(Lm5/w1;I)Lm5/w1;

    move-result-object p1

    iget v0, p0, Lm5/h;->q:I

    invoke-virtual {p0, p1, v0}, Lm5/h;->Y(Lm5/w1;I)V

    return-void

    :cond_1
    iget-object v1, v1, Lm5/e;->b:Lm5/e;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v1, p0, Lm5/h;->a:Lm5/z0;

    iget-object v2, v0, Lm5/w1;->r:Lm5/e;

    iget v3, v0, Lm5/w1;->p:I

    invoke-static {v1, v0, v2, v3}, Lm5/h;->z0(Lm5/z0;Lm5/w1;Lm5/e;I)Lm5/e;

    move-result-object v1

    iput-object v1, v0, Lm5/w1;->r:Lm5/e;

    :goto_2
    if-eqz v1, :cond_4

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lm5/h;->b:Lm5/w1;

    iget v0, v1, Lm5/e;->e:I

    iget v1, p1, Lm5/w1;->o:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lm5/w1;->f0(I)Lm5/w1;

    move-result-object v0

    iget-object p1, p1, Lm5/w1;->a:Lm5/z0;

    iget p1, p1, Lm5/z0;->u:I

    iput p1, p0, Lm5/h;->q:I

    invoke-virtual {p0, v0, p1}, Lm5/h;->Y(Lm5/w1;I)V

    return-void

    :cond_3
    iget-object v1, v1, Lm5/e;->b:Lm5/e;

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final W(Lm5/h;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lm5/h;->Y(Lm5/w1;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lm5/h;->b:Lm5/w1;

    iget p1, p1, Lm5/h;->c:I

    invoke-virtual {p0, v0, p1}, Lm5/h;->Y(Lm5/w1;I)V

    :goto_0
    return-void
.end method

.method public final X(Lm5/o0$a;)V
    .locals 1

    instance-of v0, p1, Lm5/w1;

    if-eqz v0, :cond_0

    check-cast p1, Lm5/w1;

    goto :goto_0

    :cond_0
    check-cast p1, Lm5/t1;

    iget-object p1, p1, Lm5/t1;->a:Lm5/s1;

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lm5/h;->Y(Lm5/w1;I)V

    return-void
.end method

.method public final Y(Lm5/w1;I)V
    .locals 2

    iget v0, p0, Lm5/h;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    if-eq p1, v0, :cond_0

    iget-object v1, v0, Lm5/w1;->c:Lm5/h;

    invoke-virtual {p0, v1}, Lm5/h;->P(Lm5/h;)Lm5/h;

    move-result-object v1

    iput-object v1, v0, Lm5/w1;->c:Lm5/h;

    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    iget-object v1, v0, Lm5/z0;->i:Lm5/h;

    invoke-virtual {p0, v1}, Lm5/h;->O(Lm5/h;)Lm5/h;

    move-result-object v1

    iput-object v1, v0, Lm5/z0;->i:Lm5/h;

    const/4 v0, 0x1

    iput v0, p0, Lm5/h;->d:I

    :cond_0
    iput-object p1, p0, Lm5/h;->b:Lm5/w1;

    iput p2, p0, Lm5/h;->c:I

    return-void
.end method

.method public final Z()Z
    .locals 6

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget v1, p0, Lm5/h;->c:I

    iget v2, v0, Lm5/w1;->o:I

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Lm5/w1;->E0()I

    move-result v2

    goto/16 :goto_3

    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v1, v4, :cond_2

    invoke-virtual {v0}, Lm5/w1;->x0()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lm5/w1;->s0()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lm5/w1;->g:Lm5/w1;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lm5/w1;->s0()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_1
    return v5

    :cond_2
    if-lez v1, :cond_4

    iget-object v1, v0, Lm5/w1;->i:Lm5/w1;

    if-eqz v1, :cond_3

    :goto_0
    move-object v0, v1

    :goto_1
    move v2, v5

    goto :goto_3

    :cond_3
    move v2, v4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lm5/w1;->U()V

    iget v1, v0, Lm5/w1;->o:I

    if-nez v1, :cond_8

    iget-object v1, v0, Lm5/w1;->i:Lm5/w1;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lm5/w1;->s0()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lm5/w1;->i:Lm5/w1;

    :goto_2
    iget-object v2, v1, Lm5/w1;->g:Lm5/w1;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lm5/w1;->s0()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, v1, Lm5/w1;->g:Lm5/w1;

    goto :goto_2

    :cond_5
    iget v2, v1, Lm5/w1;->p:I

    if-lez v2, :cond_6

    iget v0, v1, Lm5/w1;->o:I

    add-int/lit8 v0, v0, 0x2

    move v2, v0

    move-object v0, v1

    goto :goto_3

    :cond_6
    iget-object v1, v1, Lm5/w1;->g:Lm5/w1;

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_7
    iget-object v0, v0, Lm5/w1;->i:Lm5/w1;

    goto :goto_1

    :cond_8
    move v2, v3

    :cond_9
    :goto_3
    invoke-virtual {p0, v0, v2}, Lm5/h;->u(Lm5/w1;I)Lm5/w1;

    move-result-object v0

    iget v1, p0, Lm5/h;->q:I

    invoke-virtual {p0, v0, v1}, Lm5/h;->Y(Lm5/w1;I)V

    return v3
.end method

.method public final a(Lm5/h;)V
    .locals 4

    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    iget-object v0, v0, Lm5/z0;->m:Lm5/h$b;

    invoke-virtual {v0, p1}, Lm5/h$b;->a(Lm5/h;)I

    move-result p1

    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    iget-object v0, v0, Lm5/z0;->m:Lm5/h$b;

    iget v1, p0, Lm5/h;->m:I

    iget-object v2, v0, Lm5/h$b;->e:[I

    iget-object v0, v0, Lm5/h$b;->f:[I

    const/4 v3, -0x1

    invoke-static {v1, v3, v2, v0, p1}, Lm5/h$b;->b(II[I[II)I

    move-result p1

    iput p1, p0, Lm5/h;->m:I

    iget p1, p0, Lm5/h;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm5/h;->p:I

    return-void
.end method

.method public final a0(I)V
    .locals 2

    invoke-virtual {p0}, Lm5/h;->c()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget v1, p0, Lm5/h;->c:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lm5/h;->u(Lm5/w1;I)Lm5/w1;

    move-result-object p1

    iget v0, p0, Lm5/h;->q:I

    invoke-virtual {p0, p1, v0}, Lm5/h;->Y(Lm5/w1;I)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lm5/h;->Z()Z

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget p0, p0, Lm5/h;->c:I

    invoke-virtual {v0}, Lm5/w1;->x0()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lm5/w1;->b0(I)Lm5/w1;

    move-result-object p0

    iget-object v0, v0, Lm5/w1;->a:Lm5/z0;

    iget v0, v0, Lm5/z0;->u:I

    iget p0, p0, Lm5/w1;->o:I

    add-int/lit8 p0, p0, 0x2

    if-ge v0, p0, :cond_1

    const/4 p0, 0x1

    :cond_1
    sub-int p0, v0, p0

    :goto_0
    return p0
.end method

.method public final b0()Z
    .locals 3

    invoke-virtual {p0}, Lm5/h;->M()I

    move-result v0

    invoke-static {v0}, Lm5/h;->N(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lm5/h;->t0()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lm5/h;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm5/h;->v0(Z)Z

    invoke-virtual {p0, v2}, Lm5/h;->v0(Z)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lm5/h;->Z()Z

    move-result p0

    return p0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget p0, p0, Lm5/h;->c:I

    invoke-virtual {v0, p0}, Lm5/w1;->P(I)I

    move-result p0

    return p0
.end method

.method public final c0()Z
    .locals 3

    iget v0, p0, Lm5/h;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lm5/h;->a:Lm5/z0;

    iget-object v1, v1, Lm5/z0;->m:Lm5/h$b;

    iget-object v2, v1, Lm5/h$b;->d:[Lm5/h;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    iget-object v2, v1, Lm5/h$b;->b:[Lm5/w1;

    aget-object v2, v2, v0

    iget-object v1, v1, Lm5/h$b;->c:[I

    aget v0, v1, v0

    invoke-virtual {p0, v2, v0}, Lm5/h;->Y(Lm5/w1;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lm5/h;->W(Lm5/h;)V

    :goto_0
    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    iget-object v0, v0, Lm5/z0;->m:Lm5/h$b;

    iget v1, p0, Lm5/h;->l:I

    invoke-virtual {v0, v1, v1}, Lm5/h$b;->c(II)I

    move-result v0

    iput v0, p0, Lm5/h;->l:I

    const/4 p0, 0x1

    return p0
.end method

.method public final d()V
    .locals 3

    :goto_0
    iget v0, p0, Lm5/h;->p:I

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm5/h;->j0(I)I

    move-result v0

    iget v1, p0, Lm5/h;->n:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lm5/h;->n:I

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lm5/h;->n:I

    const/4 v1, -0x1

    iput v1, p0, Lm5/h;->o:I

    :cond_1
    :goto_1
    iget-object v1, p0, Lm5/h;->a:Lm5/z0;

    iget-object v1, v1, Lm5/z0;->m:Lm5/h$b;

    iget v2, p0, Lm5/h;->m:I

    invoke-virtual {v1, v2, v0}, Lm5/h$b;->c(II)I

    move-result v0

    iput v0, p0, Lm5/h;->m:I

    iget v0, p0, Lm5/h;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lm5/h;->p:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final d0()V
    .locals 2

    iget v0, p0, Lm5/h;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lm5/h;->a:Lm5/z0;

    iget-object v1, v1, Lm5/z0;->m:Lm5/h$b;

    invoke-virtual {v1, v0, v0}, Lm5/h$b;->c(II)I

    move-result v0

    iput v0, p0, Lm5/h;->l:I

    :cond_0
    return-void
.end method

.method public final e(Lm5/h;)V
    .locals 1

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v0, p1, Lm5/h;->a:Lm5/z0;

    invoke-virtual {p0, v0}, Lm5/w1;->R(Lm5/z0;)Lm5/w1;

    move-result-object p0

    iget-object v0, p1, Lm5/h;->b:Lm5/w1;

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lm5/h;->S(Lm5/h;Lm5/w1;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lm5/h;->Y(Lm5/w1;I)V

    :goto_0
    return-void
.end method

.method public final e0()Z
    .locals 6

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->x0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lm5/h;->c:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->s0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lm5/h;->c:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->h:Lm5/w1;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lm5/h;->s()Lm5/w1;

    move-result-object v0

    iget v2, p0, Lm5/h;->q:I

    iget v3, v0, Lm5/w1;->o:I

    add-int/lit8 v4, v3, 0x2

    const/4 v5, 0x1

    if-le v2, v4, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    if-ne v2, v4, :cond_5

    invoke-virtual {v0}, Lm5/w1;->s0()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v0, Lm5/w1;->p:I

    if-gtz v2, :cond_3

    iget-object v2, v0, Lm5/w1;->g:Lm5/w1;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lm5/w1;->s0()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {v0}, Lm5/w1;->V()Lm5/w1;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    goto :goto_1

    :cond_5
    add-int/2addr v3, v5

    if-ne v2, v3, :cond_6

    invoke-virtual {v0}, Lm5/w1;->U()V

    iget v2, v0, Lm5/w1;->o:I

    if-lez v2, :cond_7

    goto :goto_0

    :cond_6
    if-le v2, v5, :cond_7

    :goto_0
    move v1, v5

    :cond_7
    :goto_1
    invoke-virtual {p0, v0, v1}, Lm5/h;->u(Lm5/w1;I)Lm5/w1;

    move-result-object v0

    iget v1, p0, Lm5/h;->q:I

    invoke-virtual {p0, v0, v1}, Lm5/h;->Y(Lm5/w1;I)V

    return v5
.end method

.method public final f(Ljavax/xml/namespace/QName;)V
    .locals 2

    new-instance v0, Lm5/b;

    iget-object v1, p0, Lm5/h;->a:Lm5/z0;

    invoke-direct {v0, v1, p1}, Lm5/b;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0, v0}, Lm5/h;->k(Lm5/b1;)V

    return-void
.end method

.method public final f0(I)V
    .locals 2

    invoke-virtual {p0}, Lm5/h;->b()I

    move-result v0

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    move p1, v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lm5/h;->s()Lm5/w1;

    move-result-object v0

    iget v1, p0, Lm5/h;->q:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lm5/w1;->f0(I)Lm5/w1;

    move-result-object p1

    iget-object v0, v0, Lm5/w1;->a:Lm5/z0;

    iget v0, v0, Lm5/z0;->u:I

    iput v0, p0, Lm5/h;->q:I

    invoke-virtual {p0, p1, v0}, Lm5/h;->Y(Lm5/w1;I)V

    :cond_2
    return-void
.end method

.method public final g()V
    .locals 2

    new-instance v0, Lm5/b0;

    iget-object v1, p0, Lm5/h;->a:Lm5/z0;

    invoke-direct {v0, v1}, Lm5/b0;-><init>(Lm5/z0;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lm5/h;->Y(Lm5/w1;I)V

    return-void
.end method

.method public final g0()V
    .locals 4

    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    iget-object v0, v0, Lm5/z0;->m:Lm5/h$b;

    invoke-virtual {v0, p0}, Lm5/h$b;->a(Lm5/h;)I

    move-result v0

    iget-object v1, p0, Lm5/h;->a:Lm5/z0;

    iget-object v1, v1, Lm5/z0;->m:Lm5/h$b;

    iget v2, p0, Lm5/h;->l:I

    iget-object v3, v1, Lm5/h$b;->e:[I

    iget-object v1, v1, Lm5/h$b;->f:[I

    invoke-static {v2, v2, v3, v1, v0}, Lm5/h$b;->b(II[I[II)I

    move-result v0

    iput v0, p0, Lm5/h;->l:I

    return-void
.end method

.method public final h0()V
    .locals 5

    iget v0, p0, Lm5/h;->h:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    iget-object v3, p0, Lm5/h;->f:Lm5/h;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lm5/h;->g:Lm5/h;

    iput-object v4, v3, Lm5/h;->g:Lm5/h;

    :cond_0
    iget-object v4, p0, Lm5/h;->g:Lm5/h;

    if-nez v4, :cond_1

    iget-object v4, p0, Lm5/h;->a:Lm5/z0;

    iget-object v4, v4, Lm5/z0;->f:[Lm5/h;

    aput-object v3, v4, v0

    goto :goto_0

    :cond_1
    iput-object v3, v4, Lm5/h;->f:Lm5/h;

    :goto_0
    iput-object v2, p0, Lm5/h;->f:Lm5/h;

    iput-object v2, p0, Lm5/h;->g:Lm5/h;

    iput v1, p0, Lm5/h;->h:I

    :cond_2
    iget v0, p0, Lm5/h;->d:I

    if-eqz v0, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    :goto_1
    iget v0, p0, Lm5/h;->l:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lm5/h;->d0()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lm5/h;->d()V

    iput-object v2, p0, Lm5/h;->e:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lm5/h;->W(Lm5/h;)V

    iget-object v0, p0, Lm5/h;->k:Lm5/z0$f;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iget-object v0, p0, Lm5/h;->k:Lm5/z0$f;

    iput-object v2, v0, Lm5/z0$f;->a:Lm5/h;

    :cond_4
    iput-object v2, p0, Lm5/h;->k:Lm5/z0$f;

    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    iget-object v1, v0, Lm5/z0;->i:Lm5/h;

    invoke-virtual {p0, v1}, Lm5/h;->P(Lm5/h;)Lm5/h;

    move-result-object v1

    iput-object v1, v0, Lm5/z0;->i:Lm5/h;

    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    iget v1, v0, Lm5/z0;->h:I

    const/16 v4, 0x10

    if-ge v1, v4, :cond_5

    iget-object v1, v0, Lm5/z0;->g:Lm5/h;

    invoke-virtual {p0, v1}, Lm5/h;->O(Lm5/h;)Lm5/h;

    move-result-object v1

    iput-object v1, v0, Lm5/z0;->g:Lm5/h;

    const/4 v0, 0x0

    iput v0, p0, Lm5/h;->d:I

    iget-object p0, p0, Lm5/h;->a:Lm5/z0;

    iget v0, p0, Lm5/z0;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm5/z0;->h:I

    goto :goto_2

    :cond_5
    iput-object v2, p0, Lm5/h;->a:Lm5/z0;

    iput v3, p0, Lm5/h;->d:I

    :cond_6
    :goto_2
    return-void
.end method

.method public final i(Ljavax/xml/namespace/QName;)V
    .locals 2

    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lm5/h;->j(Lm5/z0;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lm5/r0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm5/h;->k(Lm5/b1;)V

    return-void
.end method

.method public final i0()V
    .locals 2

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {p0}, Lm5/h;->g0()V

    invoke-virtual {p0}, Lm5/h;->u0()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lm5/h;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    iget-object v1, v1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm5/h;->R(Lm5/h;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lm5/h;->u0()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lm5/h;->c0()Z

    return-void
.end method

.method public final j0(I)I
    .locals 3

    iget v0, p0, Lm5/h;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lm5/h;->n:I

    iget v0, p0, Lm5/h;->m:I

    iput v0, p0, Lm5/h;->o:I

    :cond_0
    :goto_0
    iget v0, p0, Lm5/h;->n:I

    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lm5/h;->a:Lm5/z0;

    iget-object v1, v1, Lm5/z0;->m:Lm5/h$b;

    iget v2, p0, Lm5/h;->o:I

    iget-object v1, v1, Lm5/h$b;->e:[I

    aget v1, v1, v2

    iput v1, p0, Lm5/h;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm5/h;->n:I

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lm5/h;->n:I

    if-le v0, p1, :cond_2

    iget-object v1, p0, Lm5/h;->a:Lm5/z0;

    iget-object v1, v1, Lm5/z0;->m:Lm5/h$b;

    iget v2, p0, Lm5/h;->o:I

    iget-object v1, v1, Lm5/h$b;->f:[I

    aget v1, v1, v2

    iput v1, p0, Lm5/h;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lm5/h;->n:I

    goto :goto_1

    :cond_2
    iget p0, p0, Lm5/h;->o:I

    return p0
.end method

.method public final k(Lm5/b1;)V
    .locals 4

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->J()Lm5/h;

    move-result-object v0

    invoke-virtual {p1, v1}, Lm5/w1;->f0(I)Lm5/w1;

    move-result-object v2

    iget-object v3, p1, Lm5/w1;->a:Lm5/z0;

    iget v3, v3, Lm5/z0;->u:I

    iput v3, p0, Lm5/h;->q:I

    invoke-virtual {v0, v2, v3}, Lm5/h;->Y(Lm5/w1;I)V

    invoke-virtual {v0, p0}, Lm5/h;->R(Lm5/h;)V

    invoke-virtual {v0}, Lm5/h;->h0()V

    :cond_1
    invoke-virtual {p0, p1, v1}, Lm5/h;->Y(Lm5/w1;I)V

    return-void
.end method

.method public final k0(Ljavax/xml/namespace/QName;)V
    .locals 5

    sget-object v0, Lm5/z0;->B:Ljavax/xml/namespace/QName;

    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v1, v0}, Lm5/w1;->X(Ljavax/xml/namespace/QName;)Lm5/w1;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lm5/h;->Z()Z

    invoke-virtual {p0, v0}, Lm5/h;->f(Ljavax/xml/namespace/QName;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v2}, Lm5/h;->Y(Lm5/w1;I)V

    invoke-virtual {p0}, Lm5/h;->i0()V

    :goto_0
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0}, Lm5/h;->E()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lm5/h;->b:Lm5/w1;

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v2}, Lm5/h;->v(Z)Lm5/w1;

    move-result-object v3

    :goto_2
    const/4 v4, 0x1

    invoke-virtual {v3, v1, p1, v4}, Lm5/w1;->F0(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, ":"

    invoke-static {p1, v1, v0}, La4/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Lm5/h;->p0(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lm5/h;->v0(Z)Z

    return-void
.end method

.method public final l0(Lm5/e;)V
    .locals 2

    invoke-virtual {p0}, Lm5/h;->s()Lm5/w1;

    move-result-object v0

    iget p0, p0, Lm5/h;->q:I

    iget v1, v0, Lm5/w1;->o:I

    add-int/lit8 v1, v1, 0x2

    if-lt p0, v1, :cond_0

    iput-object p1, v0, Lm5/w1;->r:Lm5/e;

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lm5/w1;->q:Lm5/e;

    :goto_0
    if-eqz p1, :cond_1

    move-object p0, v0

    check-cast p0, Lm5/o0$a;

    iput-object p0, p1, Lm5/e;->d:Ljava/lang/Object;

    const/4 p0, 0x0

    iput-object p0, p1, Lm5/e;->a:Lm5/z0;

    iget-object p1, p1, Lm5/e;->b:Lm5/e;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final m0(Ljavax/xml/namespace/QName;)V
    .locals 4

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_0
    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->H()V

    iget-object v0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    iput-object p1, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    instance-of v1, p0, Lm5/a1;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lm5/a1;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lm5/a1;->t:Z

    :cond_1
    invoke-virtual {p0}, Lm5/w1;->z0()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lm5/w1;->s0()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lm5/w1;->f:Lm5/w1;

    if-eqz v1, :cond_6

    sget-object v1, Lm5/z0;->B:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p0

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v1, p0, Lm5/w1;->f:Lm5/w1;

    :goto_1
    sget-object v2, Lm5/z0;->A:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_5
    iget-object p1, p0, Lm5/w1;->f:Lm5/w1;

    iget-object p1, p1, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/values/b0;->invalidate_nilvalue()V

    goto :goto_2

    :cond_6
    move-object v1, p0

    :cond_7
    :goto_2
    invoke-virtual {v1}, Lm5/w1;->S()V

    :goto_3
    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    iget-wide v0, p0, Lm5/z0;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lm5/z0;->k:J

    iget-wide v0, p0, Lm5/z0;->l:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lm5/z0;->l:J

    :cond_8
    return-void
.end method

.method public final n0(Ljavax/xml/namespace/QName;Li5/c0;)V
    .locals 2

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/b0;->get_schema_type()Li5/c0;

    move-result-object v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lm5/h;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->V()Lm5/w1;

    move-result-object v0

    invoke-virtual {v0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v0

    invoke-virtual {p0}, Lm5/h;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/b0;->get_element_type(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Li5/c0;

    move-result-object v1

    if-ne v1, p2, :cond_3

    invoke-virtual {p0, p1}, Lm5/h;->m0(Ljavax/xml/namespace/QName;)V

    sget-object p1, Lm5/z0;->B:Ljavax/xml/namespace/QName;

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0, p1}, Lm5/w1;->G0(Ljavax/xml/namespace/QName;)Z

    return-void

    :cond_3
    invoke-interface {p2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-interface {v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/b0;->get_element_type(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Li5/c0;

    move-result-object v0

    if-eq v0, p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lm5/h;->m0(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0, v1}, Lm5/h;->k0(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public final o0(Li5/c0;Z)V
    .locals 3

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/b0;->get_schema_type()Li5/c0;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lm5/h;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/c0;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/values/c0;->a()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p1

    invoke-virtual {p0}, Lm5/w1;->S()V

    invoke-virtual {p0}, Lm5/w1;->T()V

    iput-object p1, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/values/b0;->attach_store(Lorg/apache/xmlbeans/impl/values/a0;)V

    iget p1, p0, Lm5/w1;->e:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lm5/w1;->e:I

    return-void

    :cond_1
    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->V()Lm5/w1;

    move-result-object v0

    invoke-virtual {v0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v0

    invoke-virtual {p0}, Lm5/h;->D()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    iget-object p0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/values/b0;->get_attribute_type(Ljavax/xml/namespace/QName;)Li5/c0;

    move-result-object p0

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t set type of attribute to "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    iget-object v1, v1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/b0;->get_element_type(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Li5/c0;

    move-result-object v1

    if-ne v1, p1, :cond_5

    sget-object p1, Lm5/z0;->B:Ljavax/xml/namespace/QName;

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0, p1}, Lm5/w1;->G0(Ljavax/xml/namespace/QName;)Z

    return-void

    :cond_5
    invoke-interface {p1}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    if-nez v1, :cond_7

    if-nez p2, :cond_6

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t set type of element, type is un-named"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object v2, p0, Lm5/h;->b:Lm5/w1;

    iget-object v2, v2, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/b0;->get_element_type(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Li5/c0;

    move-result-object v0

    if-eq v0, p1, :cond_9

    if-nez p2, :cond_8

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t set type of element, invalid type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-virtual {p0, v1}, Lm5/h;->k0(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public final p(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lm5/h;->g0()V

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0, p1}, Lm5/w1;->X(Ljavax/xml/namespace/QName;)Lm5/w1;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lm5/h;->Y(Lm5/w1;I)V

    invoke-virtual {p0}, Lm5/h;->w()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lm5/h;->c0()Z

    return-object p1
.end method

.method public final p0(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lm5/h;->T(Lm5/h;Z)V

    invoke-virtual {p0}, Lm5/h;->Z()Z

    invoke-virtual {p0, p1}, Lm5/h;->A(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lm5/h;->v0(Z)Z

    return-void
.end method

.method public final q()Lm5/e;
    .locals 3

    invoke-virtual {p0}, Lm5/h;->s()Lm5/w1;

    move-result-object v0

    iget v1, p0, Lm5/h;->q:I

    iget v2, v0, Lm5/w1;->o:I

    add-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    iget-object p0, p0, Lm5/h;->a:Lm5/z0;

    iget-object v1, v0, Lm5/w1;->r:Lm5/e;

    iget v2, v0, Lm5/w1;->p:I

    invoke-static {p0, v0, v1, v2}, Lm5/h;->z0(Lm5/z0;Lm5/w1;Lm5/e;I)Lm5/e;

    move-result-object p0

    iput-object p0, v0, Lm5/w1;->r:Lm5/e;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lm5/w1;->U()V

    iget-object p0, p0, Lm5/h;->a:Lm5/z0;

    iget-object v1, v0, Lm5/w1;->q:Lm5/e;

    iget v2, v0, Lm5/w1;->o:I

    invoke-static {p0, v0, v1, v2}, Lm5/h;->z0(Lm5/z0;Lm5/w1;Lm5/e;I)Lm5/e;

    move-result-object p0

    iput-object p0, v0, Lm5/w1;->q:Lm5/e;

    :goto_0
    return-object p0
.end method

.method public final q0()Z
    .locals 2

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->x0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->s0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->g:Lm5/w1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lm5/w1;->s0()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->g:Lm5/w1;

    invoke-virtual {p0, v0, v1}, Lm5/h;->Y(Lm5/w1;I)V

    goto :goto_1

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget v1, v0, Lm5/w1;->o:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lm5/h;->u(Lm5/w1;I)Lm5/w1;

    move-result-object v0

    iget v1, p0, Lm5/h;->q:I

    invoke-virtual {p0, v0, v1}, Lm5/h;->Y(Lm5/w1;I)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final r(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget v1, p0, Lm5/h;->c:I

    invoke-virtual {v0, v1, p1}, Lm5/w1;->Y(II)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, v0, Lm5/w1;->a:Lm5/z0;

    iget v1, v0, Lm5/z0;->o:I

    iput v1, p0, Lm5/h;->r:I

    iget v0, v0, Lm5/z0;->p:I

    iput v0, p0, Lm5/h;->s:I

    return-object p1
.end method

.method public final r0()Lm5/h;
    .locals 1

    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->J()Lm5/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lm5/h;->W(Lm5/h;)V

    return-object v0
.end method

.method public final s()Lm5/w1;
    .locals 2

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget v1, p0, Lm5/h;->c:I

    invoke-virtual {v0, v1}, Lm5/w1;->b0(I)Lm5/w1;

    move-result-object v1

    iget-object v0, v0, Lm5/w1;->a:Lm5/z0;

    iget v0, v0, Lm5/z0;->u:I

    iput v0, p0, Lm5/h;->q:I

    return-object v1
.end method

.method public final s0()V
    .locals 2

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lm5/h;->Y(Lm5/w1;I)V

    return-void
.end method

.method public final t()Lm5/o0$a;
    .locals 2

    invoke-virtual {p0}, Lm5/h;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lm5/h;->b()I

    move-result v0

    invoke-virtual {p0}, Lm5/h;->q()Lm5/e;

    move-result-object p0

    :goto_0
    iget v1, p0, Lm5/e;->f:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lm5/e;->b:Lm5/e;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->c0()Lm5/o0$a;

    move-result-object p0

    return-object p0
.end method

.method public final t0()Z
    .locals 2

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v1, v0, Lm5/w1;->i:Lm5/w1;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lm5/w1;->s0()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lm5/w1;->i:Lm5/w1;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v0, v1}, Lm5/h;->Y(Lm5/w1;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final u(Lm5/w1;I)Lm5/w1;
    .locals 0

    invoke-virtual {p1, p2}, Lm5/w1;->f0(I)Lm5/w1;

    move-result-object p2

    iget-object p1, p1, Lm5/w1;->a:Lm5/z0;

    iget p1, p1, Lm5/z0;->u:I

    iput p1, p0, Lm5/h;->q:I

    return-object p2
.end method

.method public final u0()Z
    .locals 2

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->D0()Lm5/w1;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lm5/h;->Y(Lm5/w1;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final v(Z)Lm5/w1;
    .locals 2

    iget v0, p0, Lm5/h;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    iget v1, v1, Lm5/w1;->o:I

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v1, v0, Lm5/w1;->f:Lm5/w1;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {v0}, Lm5/w1;->x0()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {p1}, Lm5/z0;->J()Lm5/h;

    move-result-object p1

    invoke-virtual {p1}, Lm5/h;->g()V

    iget-object v0, p1, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p1}, Lm5/h;->Z()Z

    invoke-virtual {p0, p1}, Lm5/h;->R(Lm5/h;)V

    invoke-virtual {p1}, Lm5/h;->h0()V

    return-object v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_1
    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    return-object p0
.end method

.method public final v0(Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lm5/h;->v(Z)Lm5/w1;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lm5/h;->Y(Lm5/w1;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm5/w1;->h0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w0()V
    .locals 3

    invoke-virtual {p0}, Lm5/h;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v1, v0, Lm5/w1;->h:Lm5/w1;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lm5/w1;->V()Lm5/w1;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lm5/h;->Y(Lm5/w1;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v2}, Lm5/h;->Y(Lm5/w1;I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lm5/h;->e0()Z

    invoke-virtual {p0}, Lm5/h;->E()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lm5/h;->Z()Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lm5/h;->t0()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lm5/h;->u0()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm5/w1;->h0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x0()V
    .locals 2

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    :cond_0
    invoke-virtual {v0}, Lm5/w1;->x0()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lm5/w1;->f:Lm5/w1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->J()Lm5/h;

    move-result-object v0

    invoke-virtual {v0}, Lm5/h;->g()V

    iget-object v1, v0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/h;->Z()Z

    invoke-virtual {p0, v0}, Lm5/h;->R(Lm5/h;)V

    invoke-virtual {v0}, Lm5/h;->h0()V

    move-object v0, v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lm5/h;->Y(Lm5/w1;I)V

    return-void
.end method

.method public final y()Z
    .locals 3

    iget v0, p0, Lm5/h;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    if-lt v0, v2, :cond_0

    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    iget v1, v1, Lm5/w1;->o:I

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    iget-object p0, p0, Lm5/w1;->f:Lm5/w1;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public final z(IILjava/lang/Object;)V
    .locals 8

    if-gtz p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->H()V

    iget v0, p0, Lm5/h;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->U()V

    :cond_1
    invoke-virtual {p0}, Lm5/h;->s()Lm5/w1;

    move-result-object v0

    iget v7, p0, Lm5/h;->q:I

    const/4 v6, 0x1

    move-object v1, v0

    move v2, v7

    move-object v3, p3

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lm5/w1;->o0(ILjava/lang/Object;IIZ)V

    invoke-virtual {p0, v0, v7}, Lm5/h;->Y(Lm5/w1;I)V

    iget-object p0, p0, Lm5/h;->a:Lm5/z0;

    iget-wide p1, p0, Lm5/z0;->k:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lm5/z0;->k:J

    return-void
.end method
