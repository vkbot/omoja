.class public final Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "MdcPatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "MdcPatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "X",
        "mdc",
        "MDC"
    }
.end annotation


# static fields
.field private static final WRITE_KEY_VALUES_INTO:Lorg/apache/logging/log4j/util/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/util/TriConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final full:Z

.field private final key:Ljava/lang/String;

.field private final keys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/-$$Lambda$MdcPatternConverter$JQt6_h-c0_SQxR3EampQ0RnAEH4;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/-$$Lambda$MdcPatternConverter$JQt6_h-c0_SQxR3EampQ0RnAEH4;

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->WRITE_KEY_VALUES_INTO:Lorg/apache/logging/log4j/util/TriConsumer;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MDC{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "MDC"

    :goto_0
    const-string v2, "mdc"

    invoke-direct {p0, v1, v2}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    array-length v2, p1

    if-lez v2, :cond_3

    .line 53
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->full:Z

    .line 54
    aget-object v2, p1, v0

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    .line 55
    aget-object v0, p1, v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->keys:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->keys:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 57
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    .end local v0    # "i":I
    :cond_1
    iput-object v1, p0, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->key:Ljava/lang/String;

    goto :goto_2

    .line 61
    :cond_2
    iput-object v1, p0, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->keys:[Ljava/lang/String;

    .line 62
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->key:Ljava/lang/String;

    goto :goto_2

    .line 65
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->full:Z

    .line 66
    iput-object v1, p0, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->key:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->keys:[Ljava/lang/String;

    .line 69
    :goto_2
    return-void
.end method

.method private static appendFully(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "contextData"    # Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .param p1, "toAppendTo"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contextData",
            "toAppendTo"
        }
    .end annotation

    .line 117
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 119
    .local v0, "start":I
    sget-object v1, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->WRITE_KEY_VALUES_INTO:Lorg/apache/logging/log4j/util/TriConsumer;

    invoke-interface {p0, v1, p1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->forEach(Lorg/apache/logging/log4j/util/TriConsumer;Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 121
    .local v1, "end":I
    const/16 v2, 0x7d

    if-le v1, v0, :cond_0

    .line 122
    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 123
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :goto_0
    return-void
.end method

.method private static appendSelectedKeys([Ljava/lang/String;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "contextData"    # Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "keys",
            "contextData",
            "sb"
        }
    .end annotation

    .line 131
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 132
    .local v0, "start":I
    const/16 v1, 0x7b

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 134
    aget-object v2, p0, v1

    .line 135
    .local v2, "theKey":Ljava/lang/String;
    invoke-interface {p1, v2}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 136
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 137
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 138
    const-string v4, ", "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {p2, v3}, Lorg/apache/logging/log4j/util/StringBuilders;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 133
    .end local v2    # "theKey":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value",
            "sb"
        }
    .end annotation

    .line 82
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-static {p2, p1}, Lorg/apache/logging/log4j/util/StringBuilders;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 84
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;
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

    .line 78
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 3
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

    .line 92
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    .line 95
    .local v0, "contextData":Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->full:Z

    const-string v2, "{}"

    if-eqz v1, :cond_2

    .line 96
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {v0, p2}, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->appendFully(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 97
    :cond_1
    :goto_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    return-void

    .line 101
    :cond_2
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->keys:[Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 102
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 106
    :cond_3
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->keys:[Ljava/lang/String;

    invoke-static {v1, v0, p2}, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->appendSelectedKeys([Ljava/lang/String;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 103
    :cond_4
    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    return-void

    .line 107
    :cond_5
    if-eqz v0, :cond_6

    .line 109
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_6

    .line 111
    invoke-static {p2, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 114
    .end local v1    # "value":Ljava/lang/Object;
    :cond_6
    :goto_2
    return-void
.end method
