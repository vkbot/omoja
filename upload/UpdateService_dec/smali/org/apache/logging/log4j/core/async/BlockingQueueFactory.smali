.class public interface abstract Lorg/apache/logging/log4j/core/async/BlockingQueueFactory;
.super Ljava/lang/Object;
.source "BlockingQueueFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ELEMENT_TYPE:Ljava/lang/String; = "BlockingQueueFactory"


# virtual methods
.method public abstract create(I)Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;"
        }
    .end annotation
.end method
