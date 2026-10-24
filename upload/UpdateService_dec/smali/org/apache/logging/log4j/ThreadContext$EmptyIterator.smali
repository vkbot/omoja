.class Lorg/apache/logging/log4j/ThreadContext$EmptyIterator;
.super Ljava/lang/Object;
.source "ThreadContext.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/ThreadContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 159
    .local p0, "this":Lorg/apache/logging/log4j/ThreadContext$EmptyIterator;, "Lorg/apache/logging/log4j/ThreadContext$EmptyIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/ThreadContext$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/ThreadContext$1;

    .line 159
    .local p0, "this":Lorg/apache/logging/log4j/ThreadContext$EmptyIterator;, "Lorg/apache/logging/log4j/ThreadContext$EmptyIterator<TE;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/ThreadContext$EmptyIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 163
    .local p0, "this":Lorg/apache/logging/log4j/ThreadContext$EmptyIterator;, "Lorg/apache/logging/log4j/ThreadContext$EmptyIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lorg/apache/logging/log4j/ThreadContext$EmptyIterator;, "Lorg/apache/logging/log4j/ThreadContext$EmptyIterator<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "This is an empty iterator!"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 0

    .line 174
    .local p0, "this":Lorg/apache/logging/log4j/ThreadContext$EmptyIterator;, "Lorg/apache/logging/log4j/ThreadContext$EmptyIterator<TE;>;"
    return-void
.end method
