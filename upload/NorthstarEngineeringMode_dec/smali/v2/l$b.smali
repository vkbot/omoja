.class public final Lv2/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv2/l;


# direct methods
.method public constructor <init>(Lv2/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/l$b;->a:Lv2/l;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "l"

    const-string/jumbo v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lv2/l$b;->a:Lv2/l;

    sget v0, Lv2/h$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.mega.sdk.linkmanager.ILinkMgrProxy"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lv2/h;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Lv2/h;

    goto :goto_0

    :cond_1
    new-instance v0, Lv2/h$a$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lv2/h$a$a;->a:Landroid/os/IBinder;

    move-object p2, v0

    :goto_0
    iput-object p2, p1, Lv2/l;->c:Lv2/h;

    iget-object p1, p0, Lv2/l$b;->a:Lv2/l;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lv2/l;->b:Z

    iget-object p0, p0, Lv2/l$b;->a:Lv2/l;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lv2/l;->b(Lv2/l;Z)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "l"

    const-string/jumbo v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lv2/l$b;->a:Lv2/l;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lv2/l;->b:Z

    iget-object p1, p0, Lv2/l$b;->a:Lv2/l;

    iget-object p1, p1, Lv2/l;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lv2/l$b;->a:Lv2/l;

    iget-object p1, p1, Lv2/l;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_0
    iget-object p1, p0, Lv2/l$b;->a:Lv2/l;

    iget-object p1, p1, Lv2/l;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lv2/l$b;->a:Lv2/l;

    iget-object p1, p1, Lv2/l;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_1
    iget-object p0, p0, Lv2/l$b;->a:Lv2/l;

    invoke-static {p0, v0}, Lv2/l;->b(Lv2/l;Z)V

    return-void
.end method
