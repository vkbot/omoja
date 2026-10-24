.class final enum Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat$3;
.super Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;
.source "EncodingPatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$1;)V

    return-void
.end method


# virtual methods
.method escape(Ljava/lang/StringBuilder;I)V
    .locals 9
    .param p1, "toAppendTo"    # Ljava/lang/StringBuilder;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "toAppendTo",
            "start"
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 176
    .local v0, "origLength":I
    move v1, v0

    .line 178
    .local v1, "firstSpecialChar":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    const/16 v4, 0xd

    if-lt v2, p2, :cond_2

    .line 179
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 180
    .local v5, "c":C
    if-eq v5, v4, :cond_0

    if-ne v5, v3, :cond_1

    .line 181
    :cond_0
    move v1, v2

    .line 182
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    .end local v5    # "c":C
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 186
    .end local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "i":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .local v5, "j":I
    :goto_1
    if-lt v2, v1, :cond_5

    .line 187
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 188
    .local v6, "c":C
    const/16 v7, 0x5c

    if-eq v6, v3, :cond_4

    if-eq v6, v4, :cond_3

    .line 198
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    .line 190
    :cond_3
    add-int/lit8 v5, v5, -0x1

    const/16 v8, 0x72

    invoke-virtual {p1, v5, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 191
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 192
    goto :goto_2

    .line 194
    :cond_4
    add-int/lit8 v5, v5, -0x1

    const/16 v8, 0x6e

    invoke-virtual {p1, v5, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 195
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 196
    nop

    .line 186
    .end local v6    # "c":C
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 201
    .end local v2    # "i":I
    .end local v5    # "j":I
    :cond_5
    return-void
.end method
