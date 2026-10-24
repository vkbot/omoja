.class abstract Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;
.super Ljava/lang/Object;
.source "AsyncLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/async/AsyncLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "TranslatorType"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/logging/log4j/core/async/AsyncLogger;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/async/AsyncLogger;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/logging/log4j/core/async/AsyncLogger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;->this$0:Lorg/apache/logging/log4j/core/async/AsyncLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract log(Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "location",
            "level",
            "marker",
            "message",
            "thrown"
        }
    .end annotation
.end method

.method abstract log(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "thrown"
        }
    .end annotation
.end method
