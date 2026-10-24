.class public interface abstract Lorg/apache/logging/log4j/core/Layout;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/layout/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/layout/Encoder<",
        "Lorg/apache/logging/log4j/core/LogEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final ELEMENT_TYPE:Ljava/lang/String; = "layout"


# virtual methods
.method public abstract getContentFormat()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getFooter()[B
.end method

.method public abstract getHeader()[B
.end method

.method public abstract toByteArray(Lorg/apache/logging/log4j/core/LogEvent;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation
.end method

.method public abstract toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ")TT;"
        }
    .end annotation
.end method
