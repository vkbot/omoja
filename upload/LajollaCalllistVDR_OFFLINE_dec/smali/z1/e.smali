.class public final Lz1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Ll/d;


# direct methods
.method public constructor <init>(Ll/d;)V
    .locals 0

    iput-object p1, p0, Lz1/e;->a:Ll/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lz1/e;->a:Ll/d;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, La/a;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Ll/d;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Ll/d;->c:Ljava/lang/Object;

    invoke-static {p0}, La/a;->i(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
