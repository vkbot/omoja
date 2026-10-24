.class public final Lorg/apache/logging/log4j/core/pattern/ThreadPriorityPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "ThreadPriorityPatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "ThreadPriorityPatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "tp",
        "threadPriority"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/logging/log4j/core/pattern/ThreadPriorityPatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/ThreadPriorityPatternConverter;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/ThreadPriorityPatternConverter;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/ThreadPriorityPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/ThreadPriorityPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 42
    const-string v0, "ThreadPriority"

    const-string v1, "threadPriority"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/ThreadPriorityPatternConverter;
    .locals 1
    .param p0, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 53
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/ThreadPriorityPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/ThreadPriorityPatternConverter;

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "toAppendTo"
        }
    .end annotation

    .line 61
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadPriority()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    return-void
.end method
