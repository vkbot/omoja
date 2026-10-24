.class public interface abstract Lorg/apache/logging/log4j/core/Appender;
.super Ljava/lang/Object;
.source "Appender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/LifeCycle;


# static fields
.field public static final ELEMENT_TYPE:Ljava/lang/String; = "appender"

.field public static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/Appender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/core/Appender;

    sput-object v0, Lorg/apache/logging/log4j/core/Appender;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/Appender;

    return-void
.end method


# virtual methods
.method public abstract append(Lorg/apache/logging/log4j/core/LogEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation
.end method

.method public abstract getHandler()Lorg/apache/logging/log4j/core/ErrorHandler;
.end method

.method public abstract getLayout()Lorg/apache/logging/log4j/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract ignoreExceptions()Z
.end method

.method public abstract setHandler(Lorg/apache/logging/log4j/core/ErrorHandler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation
.end method
