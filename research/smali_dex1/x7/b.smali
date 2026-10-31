.class public abstract Lx7/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln9/a;


# static fields
.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "rx2.buffer-size"

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sput v0, Lx7/b;->b:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lx7/d;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lx7/b;->d(Lx7/d;)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_6
    const-string v0, "s is null"

    .line 8
    .line 9
    invoke-static {p1, v0}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ln8/d;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ln8/d;-><init>(Lx7/d;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lx7/b;->d(Lx7/d;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final b(Lb8/c;)Lh8/a0;
    .registers 4

    .line 1
    const-string v0, "mapper is null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "maxConcurrency"

    .line 7
    .line 8
    const v1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Ld8/b;->b(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lh8/a0;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lh8/a0;-><init>(Lx7/b;Lb8/c;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final c()Lh8/p0;
    .registers 5

    .line 1
    const-string v0, "bufferSize"

    .line 2
    .line 3
    sget v1, Lx7/b;->b:I

    .line 4
    .line 5
    invoke-static {v1, v0}, Ld8/b;->b(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lh8/m0;

    .line 14
    .line 15
    invoke-direct {v2, v0, v1}, Lh8/m0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lh8/p0;

    .line 19
    .line 20
    invoke-direct {v3, v2, p0, v0, v1}, Lh8/p0;-><init>(Lh8/m0;Lx7/b;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 21
    .line 22
    .line 23
    return-object v3
.end method

.method public final d(Lx7/d;)V
    .registers 4

    .line 1
    const-string v0, "s is null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_5
    invoke-virtual {p0, p1}, Lx7/b;->e(Lx7/d;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_8} :catch_1b
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_9
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    .line 18
    .line 19
    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :catch_1b
    move-exception p1

    .line 29
    throw p1
.end method

.method public abstract e(Lx7/d;)V
.end method
