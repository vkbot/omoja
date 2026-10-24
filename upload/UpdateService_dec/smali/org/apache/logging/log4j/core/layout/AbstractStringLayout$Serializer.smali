.class public interface abstract Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
.super Ljava/lang/Object;
.source "AbstractStringLayout.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Serializer"
.end annotation


# virtual methods
.method public abstract toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "builder"    # Ljava/lang/StringBuilder;
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

    .line 99
    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    return-object p2
.end method
