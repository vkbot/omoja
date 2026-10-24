.class public abstract Landroidx/room/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDatabase:Landroidx/room/q;

.field private final mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mStmt:Ls0/g;


# direct methods
.method public constructor <init>(Landroidx/room/q;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/y;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Landroidx/room/y;->mDatabase:Landroidx/room/q;

    return-void
.end method


# virtual methods
.method public acquire()Ls0/g;
    .locals 3

    invoke-virtual {p0}, Landroidx/room/y;->assertNotMainThread()V

    iget-object v0, p0, Landroidx/room/y;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/room/y;->mStmt:Ls0/g;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/room/y;->createQuery()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/y;->mDatabase:Landroidx/room/q;

    invoke-virtual {v1, v0}, Landroidx/room/q;->compileStatement(Ljava/lang/String;)Ls0/g;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/y;->mStmt:Ls0/g;

    :cond_0
    iget-object v0, p0, Landroidx/room/y;->mStmt:Ls0/g;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/room/y;->createQuery()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/y;->mDatabase:Landroidx/room/q;

    invoke-virtual {v1, v0}, Landroidx/room/q;->compileStatement(Ljava/lang/String;)Ls0/g;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public assertNotMainThread()V
    .locals 1

    iget-object v0, p0, Landroidx/room/y;->mDatabase:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotMainThread()V

    return-void
.end method

.method public abstract createQuery()Ljava/lang/String;
.end method

.method public release(Ls0/g;)V
    .locals 1

    iget-object v0, p0, Landroidx/room/y;->mStmt:Ls0/g;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/room/y;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
