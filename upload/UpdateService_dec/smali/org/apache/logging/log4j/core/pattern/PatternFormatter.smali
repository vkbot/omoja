.class public Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
.super Ljava/lang/Object;
.source "PatternFormatter.java"


# static fields
.field public static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;


# instance fields
.field private final converter:Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

.field private final field:Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

.field private final skipFormattingInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;Lorg/apache/logging/log4j/core/pattern/FormattingInfo;)V
    .locals 1
    .param p1, "converter"    # Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
    .param p2, "field"    # Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "converter",
            "field"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->converter:Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    .line 38
    iput-object p2, p0, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->field:Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    .line 39
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getDefault()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    move-result-object v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->skipFormattingInfo:Z

    .line 40
    return-void
.end method

.method private formatWithInfo(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "buf"
        }
    .end annotation

    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 51
    .local v0, "startField":I
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->converter:Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    invoke-virtual {v1, p1, p2}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 52
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->field:Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    invoke-virtual {v1, v0, p2}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->format(ILjava/lang/StringBuilder;)V

    .line 53
    return-void
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "buf"
        }
    .end annotation

    .line 43
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->skipFormattingInfo:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->converter:Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->formatWithInfo(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 48
    :goto_0
    return-void
.end method

.method public getConverter()Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->converter:Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    return-object v0
.end method

.method public getFormattingInfo()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->field:Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    return-object v0
.end method

.method public handlesThrowable()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->converter:Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;->handlesThrowable()Z

    move-result v0

    return v0
.end method

.method public requiresLocation()Z
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->converter:Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    instance-of v1, v0, Lorg/apache/logging/log4j/core/impl/LocationAware;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/logging/log4j/core/impl/LocationAware;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/impl/LocationAware;->requiresLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "[converter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->converter:Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->field:Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
