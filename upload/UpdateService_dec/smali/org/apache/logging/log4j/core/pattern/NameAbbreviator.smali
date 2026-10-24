.class public abstract Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;
.super Ljava/lang/Object;
.source "NameAbbreviator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviator;,
        Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;,
        Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator;,
        Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$NOPAbbreviator;
    }
.end annotation


# static fields
.field private static final DEFAULT:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$NOPAbbreviator;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$NOPAbbreviator;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbbreviator(Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;
    .locals 13
    .param p0, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "trimmed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;

    return-object v1

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_1

    .line 64
    const/4 v1, 0x1

    .line 65
    .local v1, "isNegativeNumber":Z
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "number":Ljava/lang/String;
    goto :goto_0

    .line 67
    .end local v1    # "isNegativeNumber":Z
    .end local v2    # "number":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 68
    .restart local v1    # "isNegativeNumber":Z
    move-object v2, v0

    .line 71
    .restart local v2    # "number":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 73
    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_2

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v5, :cond_2

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 82
    new-instance v4, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v1, :cond_3

    sget-object v6, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;->DROP:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;

    goto :goto_2

    :cond_3
    sget-object v6, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;->RETAIN:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;

    :goto_2
    invoke-direct {v4, v5, v6}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator;-><init>(ILorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;)V

    return-object v4

    .line 86
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v4, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;>;"
    const/4 v7, 0x0

    .line 91
    .local v7, "pos":I
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_9

    if-ltz v7, :cond_9

    .line 92
    move v8, v7

    .line 94
    .local v8, "ellipsisPos":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2a

    if-ne v9, v10, :cond_5

    .line 95
    const v9, 0x7fffffff

    .line 96
    .local v9, "charCount":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 97
    .end local v9    # "charCount":I
    :cond_5
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_6

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-gt v9, v5, :cond_6

    .line 98
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v6

    .line 99
    .restart local v9    # "charCount":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 101
    .end local v9    # "charCount":I
    :cond_6
    const/4 v9, 0x0

    .line 104
    .restart local v9    # "charCount":I
    :goto_4
    const/4 v10, 0x0

    .line 106
    .local v10, "ellipsis":C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x2e

    if-ge v8, v11, :cond_7

    .line 107
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 109
    if-ne v10, v12, :cond_7

    .line 110
    const/4 v10, 0x0

    .line 114
    :cond_7
    new-instance v11, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    invoke-direct {v11, v9, v10}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;-><init>(IC)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {v0, v12, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 117
    const/4 v11, -0x1

    if-ne v7, v11, :cond_8

    .line 118
    goto :goto_5

    .line 121
    :cond_8
    nop

    .end local v8    # "ellipsisPos":I
    add-int/lit8 v7, v7, 0x1

    .line 122
    goto :goto_3

    .line 124
    .end local v9    # "charCount":I
    .end local v10    # "ellipsis":C
    :cond_9
    :goto_5
    new-instance v5, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviator;

    invoke-direct {v5, v4}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviator;-><init>(Ljava/util/List;)V

    return-object v5

    .line 130
    .end local v0    # "trimmed":Ljava/lang/String;
    .end local v1    # "isNegativeNumber":Z
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$PatternAbbreviatorFragment;>;"
    .end local v7    # "pos":I
    :cond_a
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;

    return-object v0
.end method

.method public static getDefaultAbbreviator()Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;
    .locals 1

    .line 139
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator;

    return-object v0
.end method


# virtual methods
.method public abstract abbreviate(Ljava/lang/String;Ljava/lang/StringBuilder;)V
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
.end method
