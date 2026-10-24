.class public final synthetic Lm5/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm5/i0;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lm5/o0$a;

    iget p0, p0, Lm5/i0;->a:I

    const/4 v0, 0x0

    if-gez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result v1

    const-string v2, "Not impl"

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    if-nez p0, :cond_1

    invoke-static {p1}, Lm5/o0;->K(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto/16 :goto_2

    :cond_1
    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v0

    iget-object v1, v0, Lm5/z0;->x:Lm5/z0$m;

    invoke-virtual {v1, p0, p1}, Lm5/z0$m;->a(ILm5/o0$a;)I

    move-result v1

    iget-object v2, v0, Lm5/z0;->y:Lm5/z0$m;

    invoke-virtual {v2, p0, p1}, Lm5/z0$m;->a(ILm5/o0$a;)I

    move-result v2

    iget-object v3, v0, Lm5/z0;->y:Lm5/z0$m;

    iget v4, v3, Lm5/z0$m;->e:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_2

    add-int/lit8 v4, v4, -0x28

    if-lez v4, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    iget-object v7, v0, Lm5/z0;->x:Lm5/z0$m;

    iget v8, v7, Lm5/z0$m;->e:I

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v1, v8

    if-lez v8, :cond_3

    add-int/lit8 v8, v8, -0x28

    if-lez v8, :cond_3

    move v5, v6

    :cond_3
    const-wide/16 v8, -0x1

    if-gt v1, v2, :cond_5

    if-nez v5, :cond_4

    invoke-virtual {v7, p0, p1}, Lm5/z0$m;->b(ILm5/o0$a;)Lm5/o0$a;

    move-result-object p0

    goto :goto_1

    :cond_4
    iput-wide v8, v3, Lm5/z0$m;->a:J

    invoke-virtual {v3, p0, p1}, Lm5/z0$m;->b(ILm5/o0$a;)Lm5/o0$a;

    move-result-object p0

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    invoke-virtual {v3, p0, p1}, Lm5/z0$m;->b(ILm5/o0$a;)Lm5/o0$a;

    move-result-object p0

    goto :goto_1

    :cond_6
    iput-wide v8, v7, Lm5/z0$m;->a:J

    invoke-virtual {v7, p0, p1}, Lm5/z0$m;->b(ILm5/o0$a;)Lm5/o0$a;

    move-result-object p0

    :goto_1
    if-ne v1, v2, :cond_7

    iget-object p1, v0, Lm5/z0;->x:Lm5/z0$m;

    iget-object v1, v0, Lm5/z0;->y:Lm5/z0$m;

    iput-object v1, v0, Lm5/z0;->x:Lm5/z0$m;

    iput-object p1, v0, Lm5/z0;->y:Lm5/z0$m;

    :cond_7
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Node;

    goto :goto_2

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    :pswitch_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
