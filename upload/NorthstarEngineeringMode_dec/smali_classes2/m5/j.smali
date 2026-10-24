.class public final synthetic Lm5/j;
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

    iput p1, p0, Lm5/j;->a:I

    iput-object p2, p0, Lm5/j;->b:Ljava/lang/Object;

    iput-object p3, p0, Lm5/j;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lm5/j;->a:I

    iget-object v1, p0, Lm5/j;->c:Ljava/lang/Object;

    iget-object p0, p0, Lm5/j;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/function/Function;

    check-cast v1, Lm5/o0$a;

    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lm5/y;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object v2, p0, Lm5/h;->b:Lm5/w1;

    iget-object v2, v2, Lm5/w1;->d:Lm5/c;

    :goto_0
    if-eqz v2, :cond_2

    iget v3, v2, Lm5/c;->b:I

    iget v4, p0, Lm5/h;->c:I

    if-ne v3, v4, :cond_1

    iget-object v3, v2, Lm5/c;->e:Ljava/lang/Object;

    if-ne v3, v1, :cond_1

    iget-object p0, v2, Lm5/c;->f:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lm5/c;->c:Lm5/c;

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_1
    instance-of v1, p0, Li5/p0$b;

    if-eqz v1, :cond_3

    move-object v0, p0

    check-cast v0, Li5/p0$b;

    :cond_3
    :goto_2
    return-object v0

    :pswitch_1
    check-cast p0, Lm5/y;

    check-cast v1, Li5/z1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lm5/g1$e;

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-direct {v0, p0, v1}, Lm5/g1$e;-><init>(Lm5/h;Li5/z1;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
