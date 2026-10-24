.class public abstract Lorg/apache/logging/log4j/core/pattern/NamePatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "NamePatternConverter.java"


# instance fields
.field private final abbreviator:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "style",
            "options"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;->getAbbreviator(Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/NamePatternConverter;->abbreviator:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;->getDefaultAbbreviator()Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/NamePatternConverter;->abbreviator:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;

    .line 47
    :goto_0
    return-void
.end method


# virtual methods
.method protected final abbreviate(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "original",
            "destination"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/NamePatternConverter;->abbreviator:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;->abbreviate(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 58
    return-void
.end method
