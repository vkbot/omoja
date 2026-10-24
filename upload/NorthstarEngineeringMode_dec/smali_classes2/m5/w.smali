.class public final synthetic Lm5/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm5/w;->a:I

    iput-object p2, p0, Lm5/w;->b:Ljava/lang/Object;

    iput-object p3, p0, Lm5/w;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lm5/w;->a:I

    iget-object v2, v0, Lm5/w;->c:Ljava/lang/Object;

    iget-object v0, v0, Lm5/w;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Ljava/util/function/Function;

    check-cast v2, Lm5/o0$a;

    invoke-interface {v0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    move-object v1, v0

    check-cast v1, Lm5/y;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_0
    iget-object v0, v1, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->g0()V

    :cond_1
    iget-object v0, v1, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->b()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_8

    iget-object v5, v1, Lm5/y;->c:Lm5/h;

    invoke-virtual {v5, v4}, Lm5/h;->f0(I)V

    iget-object v5, v1, Lm5/y;->c:Lm5/h;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5}, Lm5/h;->b()I

    move-result v6

    const/4 v12, -0x1

    if-lez v6, :cond_6

    invoke-virtual {v5}, Lm5/h;->s()Lm5/w1;

    move-result-object v13

    iget v6, v5, Lm5/h;->q:I

    sub-int v14, v6, v0

    iget-object v6, v13, Lm5/w1;->d:Lm5/c;

    move-object v15, v6

    move v11, v12

    :goto_1
    if-eqz v15, :cond_5

    iget-object v6, v15, Lm5/c;->e:Ljava/lang/Object;

    if-ne v6, v2, :cond_3

    iget-object v8, v15, Lm5/c;->a:Lm5/w1;

    iget v9, v15, Lm5/c;->b:I

    const/16 v16, 0x0

    move-object v6, v13

    move v7, v14

    move v10, v0

    move v3, v11

    move/from16 v11, v16

    invoke-virtual/range {v6 .. v11}, Lm5/w1;->n0(ILm5/w1;IIZ)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eq v3, v12, :cond_2

    iget v6, v15, Lm5/c;->b:I

    sub-int/2addr v6, v14

    if-ge v6, v3, :cond_4

    :cond_2
    iget v3, v15, Lm5/c;->b:I

    sub-int v11, v3, v14

    goto :goto_2

    :cond_3
    move v3, v11

    :cond_4
    move v11, v3

    :goto_2
    iget-object v15, v15, Lm5/c;->c:Lm5/c;

    goto :goto_1

    :cond_5
    move v3, v11

    goto :goto_3

    :cond_6
    move v11, v12

    :goto_3
    if-ltz v11, :cond_7

    move v12, v11

    :cond_7
    invoke-virtual {v5, v12}, Lm5/h;->f0(I)V

    goto :goto_4

    :cond_8
    if-ne v0, v4, :cond_9

    iget-object v0, v1, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0, v4}, Lm5/h;->f0(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Lm5/y;->S1()Li5/p0$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Li5/p0$a;->c:Li5/p0$a;

    if-ne v0, v3, :cond_a

    iget-object v0, v1, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->c0()Z

    goto :goto_0

    :cond_a
    :goto_4
    iget-object v0, v1, Lm5/y;->c:Lm5/h;

    iget-object v3, v0, Lm5/h;->b:Lm5/w1;

    iget-object v3, v3, Lm5/w1;->d:Lm5/c;

    :goto_5
    if-eqz v3, :cond_c

    iget v5, v3, Lm5/c;->b:I

    iget v6, v0, Lm5/h;->c:I

    if-ne v5, v6, :cond_b

    iget-object v5, v3, Lm5/c;->e:Ljava/lang/Object;

    if-ne v5, v2, :cond_b

    iget-object v0, v3, Lm5/c;->f:Ljava/lang/Object;

    goto :goto_6

    :cond_b
    iget-object v3, v3, Lm5/c;->c:Lm5/c;

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_6
    instance-of v3, v0, Li5/p0$b;

    if-eqz v3, :cond_d

    check-cast v0, Li5/p0$b;

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_e

    iget-object v1, v1, Lm5/y;->c:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->d0()V

    move-object v3, v0

    goto :goto_8

    :cond_e
    iget-object v0, v1, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->M()I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, v1, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->c0()Z

    goto/16 :goto_0

    :goto_8
    return-object v3

    :pswitch_1
    check-cast v0, Lm5/y;

    check-cast v2, Lm5/y;

    iget-object v0, v0, Lm5/y;->c:Lm5/h;

    iget-object v1, v2, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0, v1}, Lm5/h;->W(Lm5/h;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
