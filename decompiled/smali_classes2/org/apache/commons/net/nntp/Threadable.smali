.class public interface abstract Lorg/apache/commons/net/nntp/Threadable;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/net/nntp/Threadable<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract isDummy()Z
.end method

.method public abstract makeDummy()Lorg/apache/commons/net/nntp/Threadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract messageThreadId()Ljava/lang/String;
.end method

.method public abstract messageThreadReferences()[Ljava/lang/String;
.end method

.method public abstract setChild(Lorg/apache/commons/net/nntp/Threadable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract setNext(Lorg/apache/commons/net/nntp/Threadable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract simplifiedSubject()Ljava/lang/String;
.end method

.method public abstract subjectIsReply()Z
.end method
