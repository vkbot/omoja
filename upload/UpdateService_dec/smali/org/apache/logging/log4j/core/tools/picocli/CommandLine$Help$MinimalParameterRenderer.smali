.class Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$MinimalParameterRenderer;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MinimalParameterRenderer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public render(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)[[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 7
    .param p1, "param"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;
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
            "param",
            "field",
            "parameterLabelRenderer",
            "scheme"
        }
    .end annotation

    .line 3595
    const/4 v0, 0x1

    new-array v1, v0, [[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual {p4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v3

    iget-object v4, p4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->parameterStyles:Ljava/util/List;

    invoke-interface {p3, p2, v3, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;->renderParameterLabel(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    .line 3596
    invoke-virtual {p4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;->description()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_0

    const-string v6, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;->description()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    :goto_0
    invoke-direct {v3, v5, v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    .line 3595
    return-object v1
.end method
