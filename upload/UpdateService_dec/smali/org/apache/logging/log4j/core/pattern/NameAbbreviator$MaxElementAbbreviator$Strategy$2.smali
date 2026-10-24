.class final enum Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy$2;
.super Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;
.source "NameAbbreviator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "minCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "minCount"
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;-><init>(Ljava/lang/String;IILorg/apache/logging/log4j/core/pattern/NameAbbreviator$1;)V

    return-void
.end method


# virtual methods
.method abbreviate(ILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "count"    # I
    .param p2, "original"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "count",
            "original",
            "destination"
        }
    .end annotation

    .line 203
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 205
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 206
    const/16 v2, 0x2e

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 207
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 208
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    return-void

    .line 205
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 212
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3, p2, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 213
    return-void
.end method
