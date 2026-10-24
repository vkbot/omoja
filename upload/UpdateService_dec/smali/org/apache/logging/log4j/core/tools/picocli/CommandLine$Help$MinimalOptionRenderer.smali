.class Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$MinimalOptionRenderer;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MinimalOptionRenderer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public render(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)[[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 9
    .param p1, "option"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "parameterLabelRenderer"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;
    .param p4, "scheme"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "option",
            "field",
            "parameterLabelRenderer",
            "scheme"
        }
    .end annotation

    .line 3583
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->names()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p4, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionText(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    .line 3584
    .local v0, "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    invoke-virtual {p4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v2

    iget-object v3, p4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionParamStyles:Ljava/util/List;

    invoke-interface {p3, p2, v2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;->renderParameterLabel(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v2

    .line 3585
    .local v2, "paramLabelText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    .line 3586
    const/4 v3, 0x1

    new-array v4, v3, [[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    aput-object v0, v5, v1

    new-instance v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    .line 3587
    invoke-virtual {p4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->description()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_0

    const-string v8, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->description()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    :goto_0
    invoke-direct {v6, v7, v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    aput-object v6, v5, v3

    aput-object v5, v4, v1

    .line 3586
    return-object v4
.end method
