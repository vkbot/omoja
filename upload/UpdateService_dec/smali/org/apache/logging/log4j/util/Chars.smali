.class public final Lorg/apache/logging/log4j/util/Chars;
.super Ljava/lang/Object;
.source "Chars.java"


# static fields
.field public static final CR:C = '\r'

.field public static final DQUOTE:C = '\"'

.field public static final EQ:C = '='

.field public static final LF:C = '\n'

.field public static final NUL:C = '\u0000'

.field public static final QUOTE:C = '\''

.field public static final SPACE:C = ' '

.field public static final TAB:C = '\t'


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method private static getLowerCaseAlphaDigit(I)C
    .locals 1
    .param p0, "digit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "digit"
        }
    .end annotation

    .line 83
    add-int/lit8 v0, p0, 0x61

    add-int/lit8 v0, v0, -0xa

    int-to-char v0, v0

    return v0
.end method

.method public static getLowerCaseHex(I)C
    .locals 1
    .param p0, "digit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "digit"
        }
    .end annotation

    .line 68
    if-ltz p0, :cond_2

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    invoke-static {p0}, Lorg/apache/logging/log4j/util/Chars;->getNumericalDigit(I)C

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/apache/logging/log4j/util/Chars;->getLowerCaseAlphaDigit(I)C

    move-result v0

    :goto_0
    return v0

    .line 69
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private static getNumericalDigit(I)C
    .locals 1
    .param p0, "digit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "digit"
        }
    .end annotation

    .line 75
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    return v0
.end method

.method private static getUpperCaseAlphaDigit(I)C
    .locals 1
    .param p0, "digit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "digit"
        }
    .end annotation

    .line 79
    add-int/lit8 v0, p0, 0x41

    add-int/lit8 v0, v0, -0xa

    int-to-char v0, v0

    return v0
.end method

.method public static getUpperCaseHex(I)C
    .locals 1
    .param p0, "digit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "digit"
        }
    .end annotation

    .line 55
    if-ltz p0, :cond_2

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    invoke-static {p0}, Lorg/apache/logging/log4j/util/Chars;->getNumericalDigit(I)C

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/apache/logging/log4j/util/Chars;->getUpperCaseAlphaDigit(I)C

    move-result v0

    :goto_0
    return v0

    .line 56
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
