.class public interface abstract Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IParameterRenderer"
.end annotation


# virtual methods
.method public abstract render(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)[[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "field",
            "parameterLabelRenderer",
            "scheme"
        }
    .end annotation
.end method
