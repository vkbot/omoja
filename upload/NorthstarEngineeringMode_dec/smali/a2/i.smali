.class public final La2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/d;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/os/Handler;

.field public c:La2/a;

.field public d:La2/i$a;


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, La2/i;->b:Landroid/os/Handler;

    iget-object v1, p0, La2/i;->d:La2/i$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    iget-object p0, p0, La2/i;->c:La2/a;

    invoke-virtual {p0}, La2/a;->b()V

    goto :goto_0

    :cond_0
    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    iget-object p0, p0, La2/i;->a:Landroid/content/Context;

    instance-of v0, p0, Lcom/mega/engineeringmode/function/sources/SourceActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mega/engineeringmode/function/sources/SourceActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, La2/h;

    invoke-direct {v1, p0, p1}, La2/h;-><init>(Lcom/mega/engineeringmode/function/sources/SourceActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
