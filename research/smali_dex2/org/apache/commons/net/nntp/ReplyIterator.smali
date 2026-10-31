.class final Lorg/apache/commons/net/nntp/ReplyIterator;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private line:Ljava/lang/String;

.field private final reader:Ljava/io/BufferedReader;

.field private savedException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/io/BufferedReader;)V
    .registers 3

    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/BufferedReader;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_b

    .line 5
    .line 6
    new-instance p2, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    .line 9
    .line 10
    .line 11
    move-object p1, p2

    .line 12
    :cond_b
    iput-object p1, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->reader:Ljava/io/BufferedReader;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->line:Ljava/lang/String;

    .line 19
    .line 20
    if-nez p2, :cond_18

    .line 21
    .line 22
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 23
    .line 24
    .line 25
    :cond_18
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->savedException:Ljava/lang/Exception;

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->line:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_c
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/ReplyIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->savedException:Ljava/lang/Exception;

    .line 2
    .line 3
    if-nez v0, :cond_28

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->line:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_23

    .line 8
    .line 9
    :try_start_8
    iget-object v1, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->reader:Ljava/io/BufferedReader;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->line:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v1, :cond_1a

    .line 18
    .line 19
    iget-object v1, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->reader:Ljava/io/BufferedReader;

    .line 20
    .line 21
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_17} :catch_18

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :catch_18
    move-exception v1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    return-object v0

    .line 28
    :goto_1b
    iput-object v1, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->savedException:Ljava/lang/Exception;

    .line 29
    .line 30
    iget-object v1, p0, Lorg/apache/commons/net/nntp/ReplyIterator;->reader:Ljava/io/BufferedReader;

    .line 31
    .line 32
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_23
    invoke-static {}, Ln0/b;->x()V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    return-object v0

    .line 41
    :cond_28
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1
.end method

.method public remove()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method
