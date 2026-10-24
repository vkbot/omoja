.class public Lorg/apache/mina/core/write/WriteTimeoutException;
.super Lorg/apache/mina/core/write/WriteException;
.source "WriteTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = 0x3638353037313431L


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 44
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 64
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;

    .line 113
    invoke-direct {p0, p1}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "message"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 104
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method
