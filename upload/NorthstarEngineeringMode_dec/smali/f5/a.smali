.class public final Lf5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf5/c;


# instance fields
.field public volatile Z:Ljava/io/PrintStream;

.field public final c:Ljava/util/concurrent/locks/ReentrantLock;

.field public final r:La5/a;

.field public final x:Ljava/io/PrintStream;

.field public volatile y:La5/a;


# direct methods
.method public constructor <init>(La5/a;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lf5/a;->c:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v1, "level"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lf5/a;->y:La5/a;

    iput-object p1, p0, Lf5/a;->r:La5/a;

    const-string/jumbo p1, "stream"

    invoke-static {v0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lf5/a;->Z:Ljava/io/PrintStream;

    iput-object v0, p0, Lf5/a;->x:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public final M0(Lf5/b;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lf5/b;->c:Ljava/time/Instant;

    iget-object v2, p1, Lf5/b;->r:Ljava/time/format/DateTimeFormatter;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/time/Instant;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lf5/b;->Z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lf5/b;->x:La5/a;

    iget-object v2, v2, La5/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lf5/b;->y:Lc5/e;

    invoke-interface {v2}, Lc5/e;->B0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lc5/e;->o()[Ljava/lang/Object;

    move-result-object v2

    iget-object p1, p1, Lf5/b;->b1:Ljava/lang/Throwable;

    if-nez p1, :cond_1

    if-eqz v2, :cond_1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    array-length p1, v2

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v2, p1

    check-cast p1, Ljava/lang/Throwable;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lf5/a;->Z:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lf5/a;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lf5/a;->Z:Ljava/io/PrintStream;

    iget-object v1, p0, Lf5/a;->x:Ljava/io/PrintStream;

    iput-object v1, p0, Lf5/a;->Z:Ljava/io/PrintStream;

    iget-object v1, p0, Lf5/a;->r:La5/a;

    iput-object v1, p0, Lf5/a;->y:La5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lf5/a;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v0, p0, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq v0, p0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lf5/a;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final h1()La5/a;
    .locals 0

    iget-object p0, p0, Lf5/a;->y:La5/a;

    return-object p0
.end method
