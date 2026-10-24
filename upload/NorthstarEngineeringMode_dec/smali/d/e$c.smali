.class public final Ld/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/e$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Ld/e;


# direct methods
.method public constructor <init>(Ld/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/e$c;->a:Ld/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 p3, -0x80000000

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Ld/e$c;->a:Ld/e;

    iget-object p2, p2, Ld/e;->a:Ld/l;

    invoke-virtual {p2, p1}, Ld/l;->c(I)V

    iget-object p2, p0, Ld/e$c;->a:Ld/e;

    iget-object p2, p2, Ld/e;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ld/c;

    invoke-interface {p3, p1}, Ld/c;->h(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ld/e$c;->a:Ld/e;

    iget-object p0, p0, Ld/e;->b:Ld/h;

    const-string/jumbo p2, "onBluetoothStateChanged bluetoothState = "

    monitor-enter p0

    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    const/16 p2, 0xd

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Ld/h;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p1, p0, Ld/h;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    iget-object p2, p0, Ld/h;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/g;

    iget-object p3, p2, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p3

    const/16 v0, 0xc

    if-eq p3, v0, :cond_2

    iget-boolean p3, p2, Ld/g;->f1:Z

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    iput-boolean p3, p2, Ld/g;->f1:Z

    invoke-virtual {p2}, Ld/g;->d()V

    :cond_1
    iget-object p2, p0, Ld/h;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method
