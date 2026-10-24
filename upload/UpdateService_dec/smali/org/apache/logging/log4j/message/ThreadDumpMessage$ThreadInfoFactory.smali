.class public interface abstract Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;
.super Ljava/lang/Object;
.source "ThreadDumpMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/message/ThreadDumpMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThreadInfoFactory"
.end annotation


# virtual methods
.method public abstract createThreadInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/logging/log4j/message/ThreadInformation;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end method
