.class public abstract Landroidx/appcompat/app/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lj/c;

.field public static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj/c;

    invoke-direct {v0}, Lj/c;-><init>()V

    sput-object v0, Landroidx/appcompat/app/o;->b:Lj/c;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/app/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public static d(Landroidx/appcompat/app/o;)V
    .locals 3

    sget-object v0, Landroidx/appcompat/app/o;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/app/o;->b:Lj/c;

    invoke-virtual {v1}, Lj/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/o;

    if-eq v2, p0, :cond_1

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract e(I)Z
.end method

.method public abstract f(I)V
.end method

.method public abstract g(Ljava/lang/CharSequence;)V
.end method
