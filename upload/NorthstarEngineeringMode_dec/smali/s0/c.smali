.class public final Ls0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/c;
.implements Ld/g$a;


# instance fields
.field public a:Ld/g;

.field public final b:Landroid/os/Handler;

.field public final c:Ld/l;


# direct methods
.method public constructor <init>(Ld/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ls0/c;->b:Landroid/os/Handler;

    iget-object v0, p1, Ld/m;->a:Ld/l;

    iput-object v0, p0, Ls0/c;->c:Ld/l;

    iget-object p1, p1, Ld/m;->b:Ld/h;

    invoke-virtual {p1}, Ld/h;->c()Ld/g;

    move-result-object p1

    iput-object p1, p0, Ls0/c;->a:Ld/g;

    return-void
.end method

.method public static d(Ls0/c;)V
    .locals 5

    iget-object v0, p0, Ls0/c;->c:Ld/l;

    iget-object v1, v0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    invoke-virtual {v0}, Ld/l;->a()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "enabled="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", btBusy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", btDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ls0/c;->a:Ld/g;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "c"

    invoke-static {v4, v3}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iget-object p0, p0, Ls0/c;->a:Ld/g;

    if-nez p0, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ld/l;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ld/g;)V
    .locals 0

    invoke-virtual {p0, p1}, Ls0/c;->e(Ld/g;)V

    return-void
.end method

.method public final e(Ld/g;)V
    .locals 9

    invoke-virtual {p1}, Ld/g;->h()Z

    move-result v0

    iget-object v1, p0, Ls0/c;->b:Landroid/os/Handler;

    iget-object v2, p1, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    iget-object v4, p0, Ls0/c;->c:Ld/l;

    const-string v5, "c"

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is busy"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ls0/c;->a:Ld/g;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Ls0/c;->a:Ld/g;

    invoke-virtual {p1, p0}, Ld/g;->k(Ld/g$a;)V

    :cond_0
    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v3, v4, Ld/l;->e:Z

    iget-object p0, v4, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ls0/c;->a:Ld/g;

    invoke-virtual {p1, v0}, Ld/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v7, 0x1388

    if-eqz p1, :cond_2

    iget-object p1, p0, Ls0/c;->a:Ld/g;

    invoke-virtual {p1, p0}, Ld/g;->l(Ld/g$a;)Z

    iput-object v6, p0, Ls0/c;->a:Ld/g;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not busy"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance p1, Ls0/b;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Ls0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object p1, v4, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "no device busy"

    invoke-static {v5, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance p1, Lf/c;

    invoke-direct {p1, v3, p0}, Lf/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final f(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onScanningStateChanged = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Ls0/c;->c:Ld/l;

    invoke-virtual {p1}, Ld/l;->b()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ls0/c;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Landroidx/constraintlayout/helper/widget/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final i(Ld/g;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bondState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    if-eq p2, v0, :cond_0

    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ls0/c;->e(Ld/g;)V

    :cond_1
    return-void
.end method

.method public final l(Ld/g;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ConnectionSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ld/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "c"

    invoke-static {v0, p2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ls0/c;->e(Ld/g;)V

    return-void
.end method
