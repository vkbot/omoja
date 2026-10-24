.class public interface abstract Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer2;
.super Ljava/lang/Object;
.source "AbstractStringLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Serializer2"
.end annotation


# virtual methods
.method public abstract toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "builder"
        }
    .end annotation
.end method
