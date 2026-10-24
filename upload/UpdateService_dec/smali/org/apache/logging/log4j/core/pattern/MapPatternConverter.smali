.class public final Lorg/apache/logging/log4j/core/pattern/MapPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "MapPatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "MapPatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "K",
        "map",
        "MAP"
    }
.end annotation


# static fields
.field private static final JAVA_UNQUOTED:Ljava/lang/String;


# instance fields
.field private final format:[Ljava/lang/String;

.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA_UNQUOTED:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/MapPatternConverter;->JAVA_UNQUOTED:Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "options"    # [Ljava/lang/String;
    .param p2, "format"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "options",
            "format"
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAP{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "MAP"

    :goto_0
    const-string v2, "map"

    invoke-direct {p0, v1, v2}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    aget-object v0, p1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/MapPatternConverter;->key:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lorg/apache/logging/log4j/core/pattern/MapPatternConverter;->format:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/MapPatternConverter;
    .locals 4
    .param p0, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 69
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/MapPatternConverter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/MapPatternConverter;->JAVA_UNQUOTED:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/pattern/MapPatternConverter;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static newInstance([Ljava/lang/String;Lorg/apache/logging/log4j/message/MapMessage$MapFormat;)Lorg/apache/logging/log4j/core/pattern/MapPatternConverter;
    .locals 4
    .param p0, "options"    # [Ljava/lang/String;
    .param p1, "format"    # Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "options",
            "format"
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/MapPatternConverter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/MapPatternConverter;->JAVA_UNQUOTED:Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/pattern/MapPatternConverter;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

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

    .line 90
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/logging/log4j/message/MapMessage;

    if-eqz v0, :cond_2

    .line 91
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/MapMessage;

    .line 97
    .local v0, "msg":Lorg/apache/logging/log4j/message/MapMessage;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/MapPatternConverter;->key:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/MapPatternConverter;->format:[Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lorg/apache/logging/log4j/message/MapMessage;->formatTo([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/message/MapMessage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .end local v1    # "val":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 93
    .end local v0    # "msg":Lorg/apache/logging/log4j/message/MapMessage;
    :cond_2
    return-void
.end method
