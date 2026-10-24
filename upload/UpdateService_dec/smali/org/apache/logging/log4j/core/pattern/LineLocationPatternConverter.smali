.class public final Lorg/apache/logging/log4j/core/pattern/LineLocationPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "LineLocationPatternConverter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/impl/LocationAware;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "LineLocationPatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "L",
        "line"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/logging/log4j/core/pattern/LineLocationPatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/LineLocationPatternConverter;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/LineLocationPatternConverter;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/LineLocationPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/LineLocationPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 39
    const-string v0, "Line"

    const-string v1, "line"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/LineLocationPatternConverter;
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

    .line 50
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/LineLocationPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/LineLocationPatternConverter;

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "output"
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getSource()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 60
    .local v0, "element":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    return-void
.end method

.method public requiresLocation()Z
    .locals 1

    .line 67
    const/4 v0, 0x1

    return v0
.end method
