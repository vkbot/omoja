.class public Lorg/apache/ftpserver/util/RegularExpr;
.super Ljava/lang/Object;
.source "RegularExpr.java"


# instance fields
.field private pattern:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/util/RegularExpr;->pattern:[C

    .line 42
    return-void
.end method

.method private isMatch([CII)Z
    .locals 10
    .param p1, "strName"    # [C
    .param p2, "strIndex"    # I
    .param p3, "patternIndex"    # I

    .line 66
    :goto_0
    iget-object v0, p0, Lorg/apache/ftpserver/util/RegularExpr;->pattern:[C

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt p3, v1, :cond_1

    .line 67
    array-length v0, p1

    if-ne p2, v0, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 70
    :cond_1
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "patternIndex":I
    .local v1, "patternIndex":I
    aget-char p3, v0, p3

    .line 71
    .local p3, "pc":C
    const/16 v4, 0x2a

    if-eq p3, v4, :cond_13

    const/16 v0, 0x3f

    if-eq p3, v0, :cond_11

    const/16 v0, 0x5b

    if-eq p3, v0, :cond_4

    .line 190
    array-length v0, p1

    if-lt p2, v0, :cond_2

    .line 191
    return v2

    .line 195
    :cond_2
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "strIndex":I
    .local v0, "strIndex":I
    aget-char p2, p1, p2

    if-eq p2, p3, :cond_3

    .line 196
    return v2

    .line 195
    :cond_3
    move p2, v0

    move p3, v1

    goto/16 :goto_4

    .line 79
    .end local v0    # "strIndex":I
    .restart local p2    # "strIndex":I
    :cond_4
    array-length v0, p1

    if-lt p2, v0, :cond_5

    .line 80
    return v2

    .line 83
    :cond_5
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "strIndex":I
    .restart local v0    # "strIndex":I
    aget-char v4, p1, p2

    .line 84
    .local v4, "fc":C
    const/4 p2, 0x0

    .line 85
    .local p2, "lastc":C
    const/4 v5, 0x0

    .line 86
    .local v5, "bMatch":Z
    const/4 v6, 0x0

    .line 87
    .local v6, "bNegete":Z
    const/4 v7, 0x1

    .line 93
    .local v7, "bFirst":Z
    :goto_1
    iget-object v8, p0, Lorg/apache/ftpserver/util/RegularExpr;->pattern:[C

    array-length v9, v8

    if-lt v1, v9, :cond_6

    .line 94
    return v2

    .line 96
    :cond_6
    add-int/lit8 v9, v1, 0x1

    .end local v1    # "patternIndex":I
    .local v9, "patternIndex":I
    aget-char p3, v8, v1

    .line 101
    const/16 v1, 0x5d

    if-ne p3, v1, :cond_a

    .line 102
    if-eqz v7, :cond_7

    .line 103
    const/4 v5, 0x1

    .line 144
    :cond_7
    if-eqz v6, :cond_8

    .line 145
    if-eqz v5, :cond_9

    .line 146
    return v2

    .line 149
    :cond_8
    if-nez v5, :cond_9

    .line 150
    return v2

    .line 200
    .end local v4    # "fc":C
    .end local v5    # "bMatch":Z
    .end local v6    # "bNegete":Z
    .end local v7    # "bFirst":Z
    .end local p2    # "lastc":C
    .end local p3    # "pc":C
    :cond_9
    move p2, v0

    move p3, v9

    goto :goto_4

    .line 109
    .restart local v4    # "fc":C
    .restart local v5    # "bMatch":Z
    .restart local v6    # "bNegete":Z
    .restart local v7    # "bFirst":Z
    .restart local p2    # "lastc":C
    .restart local p3    # "pc":C
    :cond_a
    if-eqz v5, :cond_b

    .line 110
    move v1, v9

    goto :goto_1

    .line 115
    :cond_b
    const/16 v1, 0x5e

    if-ne p3, v1, :cond_c

    if-eqz v7, :cond_c

    .line 116
    const/4 v6, 0x1

    .line 117
    move v1, v9

    goto :goto_1

    .line 119
    :cond_c
    const/4 v7, 0x0

    .line 122
    const/16 v1, 0x2d

    if-ne p3, v1, :cond_f

    .line 125
    iget-object v1, p0, Lorg/apache/ftpserver/util/RegularExpr;->pattern:[C

    array-length v8, v1

    if-lt v9, v8, :cond_d

    .line 126
    return v2

    .line 130
    :cond_d
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "patternIndex":I
    .local v8, "patternIndex":I
    aget-char p3, v1, v9

    .line 131
    if-lt v4, p2, :cond_e

    if-gt v4, p3, :cond_e

    move v1, v3

    goto :goto_2

    :cond_e
    move v1, v2

    :goto_2
    move v5, v1

    .line 132
    move p2, p3

    move v1, v8

    goto :goto_1

    .line 138
    .end local v8    # "patternIndex":I
    .restart local v9    # "patternIndex":I
    :cond_f
    move p2, p3

    .line 139
    if-ne p3, v4, :cond_10

    move v1, v3

    goto :goto_3

    :cond_10
    move v1, v2

    :goto_3
    move v5, v1

    move v1, v9

    goto :goto_1

    .line 180
    .end local v0    # "strIndex":I
    .end local v4    # "fc":C
    .end local v5    # "bMatch":Z
    .end local v6    # "bNegete":Z
    .end local v7    # "bFirst":Z
    .end local v9    # "patternIndex":I
    .restart local v1    # "patternIndex":I
    .local p2, "strIndex":I
    :cond_11
    array-length v0, p1

    if-lt p2, v0, :cond_12

    .line 181
    return v2

    .line 183
    :cond_12
    add-int/lit8 p2, p2, 0x1

    .line 184
    move p3, v1

    .line 200
    .end local v1    # "patternIndex":I
    .local p3, "patternIndex":I
    :goto_4
    goto/16 :goto_0

    .line 161
    .restart local v1    # "patternIndex":I
    .local p3, "pc":C
    :cond_13
    array-length v0, v0

    if-lt v1, v0, :cond_14

    .line 162
    return v3

    .line 167
    :cond_14
    :goto_5
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "strIndex":I
    .restart local v0    # "strIndex":I
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/ftpserver/util/RegularExpr;->isMatch([CII)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 168
    return v3

    .line 170
    :cond_15
    array-length p2, p1

    if-lt v0, p2, :cond_16

    .line 173
    return v2

    .line 170
    :cond_16
    move p2, v0

    goto :goto_5
.end method


# virtual methods
.method public isMatch(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lorg/apache/ftpserver/util/RegularExpr;->pattern:[C

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-char v0, v0, v3

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    .line 51
    return v2

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0, v3, v3}, Lorg/apache/ftpserver/util/RegularExpr;->isMatch([CII)Z

    move-result v0

    return v0
.end method
