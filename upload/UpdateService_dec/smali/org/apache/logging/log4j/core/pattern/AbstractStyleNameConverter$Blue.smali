.class public final Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Blue;
.super Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;
.source "AbstractStyleNameConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Blue"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "blue"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "blue"
    }
.end annotation


# static fields
.field protected static final NAME:Ljava/lang/String; = "blue"


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

    .line 102
    .local p1, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    const-string v0, "blue"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static newInstance(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Blue;
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

    .line 114
    const-class v0, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Blue;

    const-string v1, "blue"

    invoke-static {v0, v1, p0, p1}, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Blue;->newInstance(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Blue;

    return-object v0
.end method
