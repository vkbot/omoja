.class public Lorg/apache/commons/io/input/TaggedInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private final tag:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public handleIOException(Ljava/io/IOException;)V
    .registers 4

    .line 1
    new-instance v0, Lorg/apache/commons/io/TaggedIOException;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lorg/apache/commons/io/TaggedIOException;-><init>(Ljava/io/IOException;Ljava/io/Serializable;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public isCauseOf(Ljava/lang/Throwable;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/apache/commons/io/TaggedIOException;->isTaggedWith(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public throwIfCauseOf(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/apache/commons/io/TaggedIOException;->throwCauseIfTaggedWith(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
