.class final Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$1;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->createMinimalParamLabelRenderer()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public renderParameterLabel(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "ansi",
            "styles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;",
            ">;)",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;"
        }
    .end annotation

    .line 3421
    .local p3, "styles":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;>;"
    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParamLabelRenderer;->access$2800(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 3422
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p2, v0, p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->apply(Ljava/lang/String;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v1

    return-object v1
.end method

.method public separator()Ljava/lang/String;
    .locals 1

    .line 3425
    const-string v0, ""

    return-object v0
.end method
