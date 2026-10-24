.class public final Lorg/apache/logging/log4j/core/pattern/SequenceNumberPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "SequenceNumberPatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "SequenceNumberPatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "sn",
        "sequenceNumber"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/logging/log4j/core/pattern/SequenceNumberPatternConverter;

.field private static final SEQUENCE:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/SequenceNumberPatternConverter;->SEQUENCE:Ljava/util/concurrent/atomic/AtomicLong;

    .line 38
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/SequenceNumberPatternConverter;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/SequenceNumberPatternConverter;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/SequenceNumberPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/SequenceNumberPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 45
    const-string v0, "Sequence Number"

    const-string v1, "sn"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/SequenceNumberPatternConverter;
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

    .line 55
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/SequenceNumberPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/SequenceNumberPatternConverter;

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 2
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

    .line 63
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/SequenceNumberPatternConverter;->SEQUENCE:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    return-void
.end method
