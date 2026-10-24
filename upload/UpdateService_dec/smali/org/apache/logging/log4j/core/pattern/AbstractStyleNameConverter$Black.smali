.class public final Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Black;
.super Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;
.source "AbstractStyleNameConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Black"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "black"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "black"
    }
.end annotation


# static fields
.field protected static final NAME:Ljava/lang/String; = "black"


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "styling"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "formatters",
            "styling"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    .local p1, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    const-string v0, "black"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static newInstance(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Black;
    .locals 2
    .param p0, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p1, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "config",
            "options"
        }
    .end annotation

    .line 81
    const-class v0, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Black;

    const-string v1, "black"

    invoke-static {v0, v1, p0, p1}, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Black;->newInstance(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Black;

    return-object v0
.end method
