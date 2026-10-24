.class public abstract Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "EqualsBaseReplacementConverter.java"


# instance fields
.field private final formatters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private final substitution:Ljava/lang/String;

.field private final substitutionFormatters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private final testString:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/pattern/PatternParser;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .param p4, "testString"    # Ljava/lang/String;
    .param p5, "substitution"    # Ljava/lang/String;
    .param p6, "parser"    # Lorg/apache/logging/log4j/core/pattern/PatternParser;
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
            "name",
            "style",
            "formatters",
            "testString",
            "substitution",
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/pattern/PatternParser;",
            ")V"
        }
    .end annotation

    .line 47
    .local p3, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p4, p0, Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;->testString:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;->substitution:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;->formatters:Ljava/util/List;

    .line 53
    const-string v0, "%"

    invoke-virtual {p5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p6, p5}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;->substitutionFormatters:Ljava/util/List;

    .line 54
    return-void
.end method


# virtual methods
.method protected abstract equals(Ljava/lang/String;Ljava/lang/StringBuilder;II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "str",
            "buff",
            "from",
            "len"
        }
    .end annotation
.end method

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

    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 62
    .local v0, "initialSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;->formatters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 63
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;->formatters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 64
    .local v2, "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {v2, p1, p2}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 62
    .end local v2    # "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;->testString:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, p2, v0, v2}, Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;->equals(Ljava/lang/String;Ljava/lang/StringBuilder;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 68
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;->parseSubstitution(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 70
    :cond_1
    return-void
.end method

.method parseSubstitution(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "substitutionBuffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "substitutionBuffer"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;->substitutionFormatters:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;->substitutionFormatters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;->substitutionFormatters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 93
    .local v1, "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {v1, p1, p2}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 91
    .end local v1    # "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 96
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;->substitution:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :goto_1
    return-void
.end method
