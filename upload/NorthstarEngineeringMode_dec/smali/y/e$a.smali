.class public final Ly/e$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly/e;


# direct methods
.method public constructor <init>(Ly/e;)V
    .locals 0

    iput-object p1, p0, Ly/e$a;->a:Ly/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Ly/e$a;->a:Ly/e;

    iget-boolean v0, p2, Ly/e;->c:Z

    invoke-static {p1}, Ly/e;->k(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p2, Ly/e;->c:Z

    iget-object p1, p0, Ly/e$a;->a:Ly/e;

    iget-boolean p1, p1, Ly/e;->c:Z

    if-eq v0, p1, :cond_2

    const-string p1, "ConnectivityMonitor"

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ConnectivityMonitor"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "connectivity changed, isConnected: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ly/e$a;->a:Ly/e;

    iget-boolean v0, v0, Ly/e;->c:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Ly/e$a;->a:Ly/e;

    iget-object p1, p0, Ly/e;->b:Ly/c$a;

    iget-boolean p0, p0, Ly/e;->c:Z

    check-cast p1, Lcom/bumptech/glide/h$b;

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/bumptech/glide/h$b;->b:Lcom/bumptech/glide/h;

    monitor-enter p0

    :try_start_0
    iget-object p1, p1, Lcom/bumptech/glide/h$b;->a:Ly/l;

    invoke-virtual {p1}, Ly/l;->b()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    return-void
.end method
