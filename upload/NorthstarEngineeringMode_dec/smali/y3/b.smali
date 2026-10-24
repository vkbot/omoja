.class public final Ly3/b;
.super Lv3/s0;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final x:Ly3/b;

.field public static final y:Lv3/w;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ly3/b;

    invoke-direct {v0}, Lv3/s0;-><init>()V

    sput-object v0, Ly3/b;->x:Ly3/b;

    sget-object v0, Ly3/l;->x:Ly3/l;

    sget v1, Lx3/u;->a:I

    const/16 v2, 0x40

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v2, 0xc

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v4, v2}, Lb1/a;->y(Ljava/lang/String;IIII)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Expected positive parallelism level, but got "

    const/4 v3, 0x1

    if-lt v1, v3, :cond_3

    sget v4, Ly3/k;->d:I

    if-lt v1, v4, :cond_1

    goto :goto_1

    :cond_1
    if-lt v1, v3, :cond_2

    new-instance v2, Lx3/h;

    invoke-direct {v2, v0, v1}, Lx3/h;-><init>(Ly3/l;I)V

    move-object v0, v2

    :goto_1
    sput-object v0, Ly3/b;->y:Lv3/w;

    return-void

    :cond_2
    invoke-static {v2, v1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2, v1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be invoked on Dispatchers.IO"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lh3/g;->c:Lh3/g;

    invoke-virtual {p0, v0, p1}, Ly3/b;->l(Lh3/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l(Lh3/f;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Ly3/b;->y:Lv3/w;

    invoke-virtual {p0, p1, p2}, Lv3/w;->l(Lh3/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.IO"

    return-object p0
.end method
