.class Lorg/apache/logging/log4j/core/async/AsyncLogger$1;
.super Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;
.source "AsyncLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/async/AsyncLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 148
    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger$1;->this$0:Lorg/apache/logging/log4j/core/async/AsyncLogger;

    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;-><init>(Lorg/apache/logging/log4j/core/async/AsyncLogger;)V

    return-void
.end method


# virtual methods
.method log(Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/StackTraceElement;
    .param p3, "level"    # Lorg/apache/logging/log4j/Level;
    .param p4, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
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

    .line 152
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger$1;->this$0:Lorg/apache/logging/log4j/core/async/AsyncLogger;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->access$000(Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 153
    return-void
.end method

.method log(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "thrown"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger$1;->this$0:Lorg/apache/logging/log4j/core/async/AsyncLogger;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->access$100(Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 158
    return-void
.end method
