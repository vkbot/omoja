.class public final Lcom/mega/engineeringmode/function/tbox/b$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/tbox/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mega/engineeringmode/function/tbox/b$e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ln0/a;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/atomic/AtomicBoolean;Ln0/a;Lcom/mega/engineeringmode/function/tbox/b$e;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ln0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mega/engineeringmode/function/tbox/b$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b$h;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/b$h;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/mega/engineeringmode/function/tbox/b$h;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/mega/engineeringmode/function/tbox/b$h;->d:Ln0/a;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/b$h;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method
