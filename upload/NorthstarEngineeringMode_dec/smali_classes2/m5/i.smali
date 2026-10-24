.class public final synthetic Lm5/i;
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

    iput p1, p0, Lm5/i;->a:I

    iput-object p2, p0, Lm5/i;->b:Lm5/y;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lm5/i;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object p0, p0, Lm5/i;->b:Lm5/y;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->M()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v1, v0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/h;->x()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->i0()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v1, Lm5/z0;->s:Lm5/z0$c;

    iget-object v1, v1, Lm5/z0$c;->a:Li5/j;

    const-string v2, ""

    invoke-virtual {v1, v0, p0, v2}, Li5/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v1, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    :goto_0
    return-object v1

    :pswitch_0
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->E()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Li5/p0$a;->c:Li5/p0$a;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->s0()V

    invoke-virtual {p0}, Lm5/y;->W0()Li5/p0$a;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_1
    new-instance v0, Lm5/y;

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-direct {v0, p0}, Lm5/y;-><init>(Lm5/h;)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->E()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-static {p0}, Lm5/z0;->L(Lm5/h;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->E()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v1, v2}, Lm5/h;->T(Lm5/h;Z)V

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-static {p0, v3}, Lm5/z0;->s(Lm5/h;Z)Lm5/z0$d;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->D()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-static {p0}, Lm5/z0;->M(Lm5/h;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->a:Lm5/z0;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
