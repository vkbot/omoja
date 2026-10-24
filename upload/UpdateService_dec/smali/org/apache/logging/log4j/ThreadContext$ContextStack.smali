.class public interface abstract Lorg/apache/logging/log4j/ThreadContext$ContextStack;
.super Ljava/lang/Object;
.source "ThreadContext.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/ThreadContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContextStack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Collection<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract asList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract copy()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
.end method

.method public abstract getDepth()I
.end method

.method public abstract getImmutableStackOrNull()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
.end method

.method public abstract peek()Ljava/lang/String;
.end method

.method public abstract pop()Ljava/lang/String;
.end method

.method public abstract push(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method

.method public abstract trim(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "depth"
        }
    .end annotation
.end method
