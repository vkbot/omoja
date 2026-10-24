.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorScheme"
.end annotation


# instance fields
.field private final ansi:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

.field public final commandStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;",
            ">;"
        }
    .end annotation
.end field

.field public final optionParamStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;",
            ">;"
        }
    .end annotation
.end field

.field public final optionStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;",
            ">;"
        }
    .end annotation
.end field

.field public final parameterStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4163
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->AUTO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V
    .locals 1
    .param p1, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ansi"
        }
    .end annotation

    .line 4168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->commandStyles:Ljava/util/List;

    .line 4157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionStyles:Ljava/util/List;

    .line 4158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->parameterStyles:Ljava/util/List;

    .line 4159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionParamStyles:Ljava/util/List;

    .line 4168
    const-string v0, "ansi"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    return-void
.end method

.method static synthetic access$2900(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    .line 4155
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    return-object v0
.end method

.method private varargs addAll(Ljava/util/List;[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .locals 1
    .param p2, "add"    # [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "styles",
            "add"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;",
            ">;[",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;",
            ")",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;"
        }
    .end annotation

    .line 4226
    .local p1, "styles":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4227
    return-object p0
.end method

.method private replace(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "styles",
            "property"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4220
    .local p1, "styles":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;>;"
    if-eqz p2, :cond_0

    .line 4221
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4222
    invoke-static {p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->parse(Ljava/lang/String;)[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->addAll(Ljava/util/List;[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    .line 4224
    :cond_0
    return-void
.end method


# virtual methods
.method public ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .locals 1

    .line 4231
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    return-object v0
.end method

.method public applySystemProperties()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .locals 2

    .line 4213
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->commandStyles:Ljava/util/List;

    const-string v1, "picocli.color.commands"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->replace(Ljava/util/List;Ljava/lang/String;)V

    .line 4214
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionStyles:Ljava/util/List;

    const-string v1, "picocli.color.options"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->replace(Ljava/util/List;Ljava/lang/String;)V

    .line 4215
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->parameterStyles:Ljava/util/List;

    const-string v1, "picocli.color.parameters"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->replace(Ljava/util/List;Ljava/lang/String;)V

    .line 4216
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionParamStyles:Ljava/util/List;

    const-string v1, "picocli.color.optionParams"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->replace(Ljava/util/List;Ljava/lang/String;)V

    .line 4217
    return-object p0
.end method

.method public commandText(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "command"
        }
    .end annotation

    .line 4189
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->commandStyles:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->apply(Ljava/lang/String;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    return-object v0
.end method

.method public varargs commands([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .locals 1
    .param p1, "styles"    # [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "styles"
        }
    .end annotation

    .line 4173
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->commandStyles:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->addAll(Ljava/util/List;[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method public optionParamText(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 2
    .param p1, "optionParam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "optionParam"
        }
    .end annotation

    .line 4201
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionParamStyles:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->apply(Ljava/lang/String;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    return-object v0
.end method

.method public varargs optionParams([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .locals 1
    .param p1, "styles"    # [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "styles"
        }
    .end annotation

    .line 4185
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionParamStyles:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->addAll(Ljava/util/List;[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method public optionText(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 2
    .param p1, "option"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "option"
        }
    .end annotation

    .line 4193
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionStyles:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->apply(Ljava/lang/String;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    return-object v0
.end method

.method public varargs options([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .locals 1
    .param p1, "styles"    # [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "styles"
        }
    .end annotation

    .line 4177
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionStyles:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->addAll(Ljava/util/List;[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method public parameterText(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 2
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parameter"
        }
    .end annotation

    .line 4197
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->parameterStyles:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->apply(Ljava/lang/String;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    return-object v0
.end method

.method public varargs parameters([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .locals 1
    .param p1, "styles"    # [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "styles"
        }
    .end annotation

    .line 4181
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->parameterStyles:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->addAll(Ljava/util/List;[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    move-result-object v0

    return-object v0
.end method
