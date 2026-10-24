.class Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator;
.super Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;
.source "NameAbbreviator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaxElementAbbreviator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;
    }
.end annotation


# instance fields
.field private final count:I

.field private final strategy:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;


# direct methods
.method public constructor <init>(ILorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "strategy"    # Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "count",
            "strategy"
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;-><init>()V

    .line 242
    iget v0, p2, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;->minCount:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator;->count:I

    .line 243
    iput-object p2, p0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator;->strategy:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;

    .line 244
    return-void
.end method


# virtual methods
.method public abbreviate(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 2
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

    .line 254
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator;->strategy:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;

    iget v1, p0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator;->count:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;->abbreviate(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 255
    return-void
.end method
