.class final enum Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat$1;
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

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$1;)V

    return-void
.end method

.method private escapeChar(C)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 134
    const/16 v0, 0xa

    if-eq p1, v0, :cond_7

    const/16 v0, 0xd

    if-eq p1, v0, :cond_6

    const/16 v0, 0x22

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x26

    if-eq p1, v0, :cond_1

    const/16 v0, 0x27

    if-eq p1, v0, :cond_0

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_0
    const-string v0, "&apos;"

    return-object v0

    .line 140
    :cond_1
    const-string v0, "&amp;"

    return-object v0

    .line 144
    :cond_2
    const-string v0, "&gt;"

    return-object v0

    .line 142
    :cond_3
    const-string v0, "&lt;"

    return-object v0

    .line 150
    :cond_4
    const-string v0, "&#x2F;"

    return-object v0

    .line 146
    :cond_5
    const-string v0, "&quot;"

    return-object v0

    .line 136
    :cond_6
    const-string v0, "\\r"

    return-object v0

    .line 138
    :cond_7
    const-string v0, "\\n"

    return-object v0
.end method


# virtual methods
.method escape(Ljava/lang/StringBuilder;I)V
    .locals 7
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

    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 108
    .local v0, "origLength":I
    move v1, v0

    .line 110
    .local v1, "firstSpecialChar":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-lt v2, p2, :cond_1

    .line 111
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 112
    .local v3, "c":C
    invoke-direct {p0, v3}, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat$1;->escapeChar(C)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "escaped":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 114
    move v1, v2

    .line 115
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 116
    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 110
    .end local v3    # "c":C
    .end local v4    # "escaped":Ljava/lang/String;
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 121
    .end local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "i":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .local v3, "j":I
    :goto_2
    if-lt v2, v1, :cond_3

    .line 122
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 123
    .local v4, "c":C
    invoke-direct {p0, v4}, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat$1;->escapeChar(C)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "escaped":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 125
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_3

    .line 127
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {p1, v6, v3, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v3, v6

    .line 121
    .end local v4    # "c":C
    .end local v5    # "escaped":Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 131
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_3
    return-void
.end method
