.class public final synthetic Lm5/p;
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

    iput p1, p0, Lm5/p;->a:I

    iput-object p2, p0, Lm5/p;->b:Lm5/y;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x1

    iget v1, p0, Lm5/p;->a:I

    iget-object p0, p0, Lm5/p;->b:Lm5/y;

    packed-switch v1, :pswitch_data_0

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    iget p0, p0, Lm5/h;->c:I

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lm5/w1;->Z(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lm5/y;->B0()Li5/p0$a;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-static {p0}, Lm5/z0;->K(Lm5/h;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->c0()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lm5/y;->T1(I)Z

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget p0, p0, Lm5/h;->p:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget v1, p0, Lm5/y;->x:I

    invoke-virtual {p0}, Lm5/y;->A1()V

    :try_start_0
    iget v2, p0, Lm5/y;->x:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lm5/y;->T1(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v1, p0, Lm5/y;->x:I

    invoke-virtual {p0}, Lm5/y;->e0()Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    iput v1, p0, Lm5/y;->x:I

    invoke-virtual {p0}, Lm5/y;->e0()Z

    throw v0

    :pswitch_5
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->E()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Li5/p0$a;->c:Li5/p0$a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->Z()Z

    invoke-virtual {p0}, Lm5/y;->W0()Li5/p0$a;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_6
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :pswitch_7
    iget v1, p0, Lm5/y;->x:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lm5/y;->T1(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    sget-object v1, Lm5/z0;->z:Le5/g;

    invoke-virtual {p0}, Lm5/h;->y()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p0}, Lm5/h;->r0()Lm5/h;

    move-result-object v1

    invoke-virtual {v1}, Lm5/h;->M()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    :cond_3
    invoke-virtual {v1}, Lm5/h;->e0()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lm5/h;->M()I

    move-result v3

    if-eq v3, v0, :cond_6

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lm5/h;->M()I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {v1, v2}, Lm5/h;->v0(Z)Z

    invoke-virtual {p0, v1}, Lm5/h;->W(Lm5/h;)V

    goto :goto_3

    :cond_6
    :goto_2
    move v0, v2

    :goto_3
    invoke-virtual {v1}, Lm5/h;->h0()V

    move v2, v0

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_9
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
