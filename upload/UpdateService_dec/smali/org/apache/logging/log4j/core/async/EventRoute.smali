.class public abstract enum Lorg/apache/logging/log4j/core/async/EventRoute;
.super Ljava/lang/Enum;
.source "EventRoute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/async/EventRoute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/async/EventRoute;

.field public static final enum DISCARD:Lorg/apache/logging/log4j/core/async/EventRoute;

.field public static final enum ENQUEUE:Lorg/apache/logging/log4j/core/async/EventRoute;

.field public static final enum SYNCHRONOUS:Lorg/apache/logging/log4j/core/async/EventRoute;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 38
    new-instance v0, Lorg/apache/logging/log4j/core/async/EventRoute$1;

    const-string v1, "ENQUEUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/async/EventRoute$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/async/EventRoute;->ENQUEUE:Lorg/apache/logging/log4j/core/async/EventRoute;

    .line 59
    new-instance v0, Lorg/apache/logging/log4j/core/async/EventRoute$2;

    const-string v1, "SYNCHRONOUS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/async/EventRoute$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/async/EventRoute;->SYNCHRONOUS:Lorg/apache/logging/log4j/core/async/EventRoute;

    .line 78
    new-instance v0, Lorg/apache/logging/log4j/core/async/EventRoute$3;

    const-string v1, "DISCARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/logging/log4j/core/async/EventRoute$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/async/EventRoute;->DISCARD:Lorg/apache/logging/log4j/core/async/EventRoute;

    .line 34
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/logging/log4j/core/async/EventRoute;

    sget-object v5, Lorg/apache/logging/log4j/core/async/EventRoute;->ENQUEUE:Lorg/apache/logging/log4j/core/async/EventRoute;

    aput-object v5, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/async/EventRoute;->SYNCHRONOUS:Lorg/apache/logging/log4j/core/async/EventRoute;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/apache/logging/log4j/core/async/EventRoute;->$VALUES:[Lorg/apache/logging/log4j/core/async/EventRoute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/async/EventRoute$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/async/EventRoute$1;

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/async/EventRoute;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/async/EventRoute;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 34
    const-class v0, Lorg/apache/logging/log4j/core/async/EventRoute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/async/EventRoute;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/async/EventRoute;
    .locals 1

    .line 34
    sget-object v0, Lorg/apache/logging/log4j/core/async/EventRoute;->$VALUES:[Lorg/apache/logging/log4j/core/async/EventRoute;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/async/EventRoute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/async/EventRoute;

    return-object v0
.end method


# virtual methods
.method public abstract logMessage(Lorg/apache/logging/log4j/core/appender/AsyncAppender;Lorg/apache/logging/log4j/core/LogEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "asyncAppender",
            "coreEvent"
        }
    .end annotation
.end method

.method public abstract logMessage(Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
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
            "asyncLogger",
            "fqcn",
            "level",
            "marker",
            "message",
            "thrown"
        }
    .end annotation
.end method

.method public abstract logMessage(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;Lorg/apache/logging/log4j/core/LogEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "asyncLoggerConfig",
            "event"
        }
    .end annotation
.end method
