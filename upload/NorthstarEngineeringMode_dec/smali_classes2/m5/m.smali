.class public final synthetic Lm5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm5/y;

.field public final synthetic c:Li5/z1;


# direct methods
.method public synthetic constructor <init>(Lm5/y;Li5/z1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lm5/m;->a:I

    iput-object p1, p0, Lm5/m;->b:Lm5/y;

    iput-object p2, p0, Lm5/m;->c:Li5/z1;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lm5/m;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lm5/m;->c:Li5/z1;

    iget-object p0, p0, Lm5/m;->b:Lm5/y;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lm5/g1$m;

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-direct {v0, v1, v2, p0}, Lm5/g1$m;-><init>(Ljava/lang/String;Li5/z1;Lm5/h;)V

    :goto_0
    invoke-virtual {v0}, Lm5/g1;->v()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lm5/g1$m;->G()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lm5/g1$m;->A:[C

    iget v0, v0, Lm5/g1$m;->z:I

    invoke-direct {v1, v2, v0, p0}, Ljava/lang/String;-><init>([CII)V

    move-object p0, v1

    :goto_1
    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    sget-object v3, Li5/z1$a;->i1:Li5/z1$a;

    iget-object v4, v2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Li5/z1;

    invoke-direct {v4, v2}, Li5/z1;-><init>(Li5/z1;)V

    invoke-virtual {v4, v3, v0}, Li5/z1;->a(Li5/z1$a;Z)V

    move-object v2, v4

    :cond_2
    new-instance v3, Lm5/p0;

    iget-object v4, p0, Lm5/y;->c:Lm5/h;

    new-instance v5, Lm5/q;

    const/16 v6, 0x9

    invoke-direct {v5, v6, p0}, Lm5/q;-><init>(ILm5/y;)V

    invoke-virtual {p0, v5}, Lm5/y;->f2(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3

    :goto_2
    move p0, v6

    goto :goto_6

    :cond_3
    invoke-virtual {p0}, Lm5/y;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Li5/p0;->C()Li5/p0$a;

    move-result-object v5

    iget v5, v5, Li5/p0$a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v0

    :goto_3
    packed-switch v5, :pswitch_data_1

    goto :goto_3

    :goto_4
    :pswitch_1
    invoke-interface {p0}, Li5/p0;->close()V

    goto :goto_2

    :pswitch_2
    :try_start_1
    invoke-interface {p0}, Li5/p0;->h0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    :goto_5
    add-int/lit8 v9, v8, -0x1

    if-lez v8, :cond_5

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lm5/f;->f(C)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    move v8, v9

    goto :goto_5

    :cond_5
    invoke-interface {p0}, Li5/p0;->C()Li5/p0$a;

    move-result-object v5

    iget v5, v5, Li5/p0$a;->b:I

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_a

    :pswitch_3
    invoke-interface {p0}, Li5/p0;->C()Li5/p0$a;

    move-result-object v5

    iget v5, v5, Li5/p0$a;->b:I

    goto :goto_3

    :pswitch_4
    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {p0}, Li5/p0;->P0()Li5/p0$a;

    move-result-object v5

    iget v5, v5, Li5/p0$a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v6

    goto :goto_3

    :pswitch_5
    invoke-interface {p0}, Li5/p0;->close()V

    xor-int/lit8 p0, v7, 0x1

    :goto_6
    invoke-direct {v3, v4, p0, v2}, Lm5/p0;-><init>(Lm5/h;ZLi5/z1;)V

    iget-object p0, v3, Lm5/p0;->t:Li5/d0;

    iget-object v2, v3, Lm5/p0;->u:Li5/z1;

    invoke-static {p0, v2}, Lm5/z0;->t(Li5/d0;Li5/z1;)Lm5/z0;

    move-result-object p0

    invoke-virtual {p0}, Lm5/z0;->l()V

    :try_start_2
    invoke-virtual {p0}, Lm5/z0;->r()Lm5/h;

    move-result-object v2

    iput-object v2, v3, Lm5/p0;->r:Lm5/h;

    :goto_7
    invoke-virtual {v3}, Lm5/g1;->v()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    :goto_8
    iget-object v2, v3, Lm5/p0;->r:Lm5/h;

    invoke-virtual {v2}, Lm5/h;->H()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v3, Lm5/p0;->r:Lm5/h;

    invoke-virtual {v2, v0}, Lm5/h;->v0(Z)Z

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_8
    iget-object v0, v3, Lm5/p0;->s:Li5/c0;

    if-eqz v0, :cond_9

    iget-object v2, v3, Lm5/p0;->r:Lm5/h;

    invoke-virtual {v2, v0, v6}, Lm5/h;->o0(Li5/c0;Z)V

    :cond_9
    iget-object v0, v3, Lm5/p0;->r:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    iget-object v2, v3, Lm5/p0;->r:Lm5/h;

    invoke-virtual {v2}, Lm5/h;->h0()V

    iput-object v1, v3, Lm5/p0;->r:Lm5/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Lm5/z0;->m()V

    return-object v0

    :goto_9
    invoke-virtual {p0}, Lm5/z0;->m()V

    throw v0

    :goto_a
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz p0, :cond_a

    :try_start_4
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_b
    throw v1

    :pswitch_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lm5/g1$l;

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-direct {v0, p0, v2}, Lm5/g1$l;-><init>(Lm5/h;Li5/z1;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
