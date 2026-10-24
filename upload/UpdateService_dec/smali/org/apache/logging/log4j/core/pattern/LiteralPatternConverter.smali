.class public final Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "LiteralPatternConverter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/pattern/ArrayPatternConverter;


# instance fields
.field private final config:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final literal:Ljava/lang/String;

.field private final substitute:Z


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "literal"    # Ljava/lang/String;
    .param p3, "convertBackslashes"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "config",
            "literal",
            "convertBackslashes"
        }
    .end annotation

    .line 49
    const-string v0, "Literal"

    const-string v1, "literal"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    if-eqz p3, :cond_0

    invoke-static {p2}, Lorg/apache/logging/log4j/core/util/OptionConverter;->convertSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->literal:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 52
    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->containsSubstitutionSequence(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->substitute:Z

    .line 53
    return-void
.end method

.method static containsSubstitutionSequence(Ljava/lang/String;)Z
    .locals 1
    .param p0, "literal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "literal"
        }
    .end annotation

    .line 56
    if-eqz p0, :cond_0

    const-string v0, "${"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "obj",
            "output"
        }
    .end annotation

    .line 72
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->substitute:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->literal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->literal:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    return-void
.end method

.method public varargs format(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "output"    # Ljava/lang/StringBuilder;
    .param p2, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "output",
            "objects"
        }
    .end annotation

    .line 80
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->substitute:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->literal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->literal:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    return-void
.end method

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

    .line 64
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->substitute:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->literal:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->literal:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    return-void
.end method

.method public getLiteral()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->literal:Ljava/lang/String;

    return-object v0
.end method

.method public isVariable()Z
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteralPatternConverter[literal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->literal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", substitute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->substitute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
