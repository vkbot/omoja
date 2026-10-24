.class public final Lorg/apache/logging/log4j/core/pattern/ThreadNamePatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "ThreadNamePatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "ThreadPatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "t",
        "tn",
        "thread",
        "threadName"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/logging/log4j/core/pattern/ThreadNamePatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/ThreadNamePatternConverter;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/ThreadNamePatternConverter;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/ThreadNamePatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/ThreadNamePatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 40
    const-string v0, "Thread"

    const-string v1, "thread"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/ThreadNamePatternConverter;
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

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/ThreadNamePatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/ThreadNamePatternConverter;

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

    .line 59
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    return-void
.end method
