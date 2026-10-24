.class public final Ld/e$m;
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
    name = "m"
.end annotation


# instance fields
.field public final a:Z

.field public final synthetic b:Ld/e;


# direct methods
.method public constructor <init>(Ld/e;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/e$m;->b:Ld/e;

    iput-boolean p2, p0, Ld/e$m;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iget-object p1, p0, Ld/e$m;->b:Ld/e;

    iget-object p1, p1, Ld/e;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/c;

    iget-boolean p3, p0, Ld/e$m;->a:Z

    invoke-interface {p2, p3}, Ld/c;->f(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld/e$m;->b:Ld/e;

    iget-object p1, p1, Ld/e;->b:Ld/h;

    iget-boolean p0, p0, Ld/e$m;->a:Z

    monitor-enter p1

    if-nez p0, :cond_1

    monitor-exit p1

    goto :goto_2

    :cond_1
    :try_start_0
    iget-object p0, p1, Ld/h;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ltz p0, :cond_3

    iget-object p2, p1, Ld/h;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/g;

    iget-boolean p3, p2, Ld/g;->f1:Z

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    iput-boolean p3, p2, Ld/g;->f1:Z

    invoke-virtual {p2}, Ld/g;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    monitor-exit p1

    :goto_2
    return-void

    :goto_3
    monitor-exit p1

    throw p0
.end method
