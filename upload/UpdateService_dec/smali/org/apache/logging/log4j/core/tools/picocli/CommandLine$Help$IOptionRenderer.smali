.class public interface abstract Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOptionRenderer"
.end annotation


# virtual methods
.method public abstract render(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)[[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "option",
            "field",
            "parameterLabelRenderer",
            "scheme"
        }
    .end annotation
.end method
