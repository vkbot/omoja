.class final enum Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy$1;
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

    .line 180
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

    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 187
    const/16 v2, 0x2e

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 188
    .local v2, "nextStart":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 189
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    return-void

    .line 192
    :cond_0
    add-int/lit8 v0, v2, 0x1

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    .end local v2    # "nextStart":I
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, p2, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 195
    return-void
.end method
