.class public final Lorg/apache/logging/log4j/core/util/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field private static final ESC_CODES:[I

.field private static final HC:[C

.field private static final _qbufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/JsonUtils;->HC:[C

    .line 34
    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 36
    .local v0, "table":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 38
    const/4 v2, -0x1

    aput v2, v0, v1

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x22

    aput v1, v0, v1

    .line 44
    const/16 v1, 0x5c

    aput v1, v0, v1

    .line 46
    const/16 v1, 0x8

    const/16 v2, 0x62

    aput v2, v0, v1

    .line 47
    const/16 v1, 0x9

    const/16 v2, 0x74

    aput v2, v0, v1

    .line 48
    const/16 v1, 0xc

    const/16 v2, 0x66

    aput v2, v0, v1

    .line 49
    const/16 v1, 0xa

    const/16 v2, 0x6e

    aput v2, v0, v1

    .line 50
    const/16 v1, 0xd

    const/16 v2, 0x72

    aput v2, v0, v1

    .line 51
    sput-object v0, Lorg/apache/logging/log4j/core/util/JsonUtils;->ESC_CODES:[I

    .line 57
    .end local v0    # "table":[I
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/util/JsonUtils;->_qbufLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _appendNamed(I[C)I
    .locals 2
    .param p0, "esc"    # I
    .param p1, "qbuf"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "esc",
            "qbuf"
        }
    .end annotation

    .line 114
    int-to-char v0, p0

    const/4 v1, 0x1

    aput-char v0, p1, v1

    .line 115
    const/4 v0, 0x2

    return v0
.end method

.method private static _appendNumeric(I[C)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "qbuf"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "value",
            "qbuf"
        }
    .end annotation

    .line 106
    const/4 v0, 0x1

    const/16 v1, 0x75

    aput-char v1, p1, v0

    .line 108
    sget-object v0, Lorg/apache/logging/log4j/core/util/JsonUtils;->HC:[C

    shr-int/lit8 v1, p0, 0x4

    aget-char v1, v0, v1

    const/4 v2, 0x4

    aput-char v1, p1, v2

    .line 109
    and-int/lit8 v1, p0, 0xf

    aget-char v0, v0, v1

    const/4 v1, 0x5

    aput-char v0, p1, v1

    .line 110
    const/4 v0, 0x6

    return v0
.end method

.method private static getQBuf()[C
    .locals 3

    .line 60
    sget-object v0, Lorg/apache/logging/log4j/core/util/JsonUtils;->_qbufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 61
    .local v0, "_qbuf":[C
    if-nez v0, :cond_0

    .line 62
    const/4 v1, 0x6

    new-array v0, v1, [C

    .line 63
    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    .line 64
    const/4 v1, 0x2

    const/16 v2, 0x30

    aput-char v2, v0, v1

    .line 65
    const/4 v1, 0x3

    aput-char v2, v0, v1

    .line 67
    sget-object v1, Lorg/apache/logging/log4j/core/util/JsonUtils;->_qbufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 69
    :cond_0
    return-object v0
.end method

.method public static quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .line 76
    invoke-static {}, Lorg/apache/logging/log4j/core/util/JsonUtils;->getQBuf()[C

    move-result-object v0

    .line 77
    .local v0, "qbuf":[C
    sget-object v1, Lorg/apache/logging/log4j/core/util/JsonUtils;->ESC_CODES:[I

    array-length v1, v1

    .line 78
    .local v1, "escCodeCount":I
    const/4 v2, 0x0

    .line 79
    .local v2, "inPtr":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 82
    .local v3, "inputLen":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 85
    :goto_1
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 86
    .local v4, "c":C
    if-ge v4, v1, :cond_1

    sget-object v5, Lorg/apache/logging/log4j/core/util/JsonUtils;->ESC_CODES:[I

    aget v5, v5, v4

    if-eqz v5, :cond_1

    .line 87
    nop

    .line 95
    .end local v4    # "c":C
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "inPtr":I
    .local v4, "inPtr":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 96
    .local v2, "d":C
    sget-object v5, Lorg/apache/logging/log4j/core/util/JsonUtils;->ESC_CODES:[I

    aget v5, v5, v2

    .line 97
    .local v5, "escCode":I
    if-gez v5, :cond_0

    .line 98
    invoke-static {v2, v0}, Lorg/apache/logging/log4j/core/util/JsonUtils;->_appendNumeric(I[C)I

    move-result v6

    goto :goto_2

    .line 99
    :cond_0
    invoke-static {v5, v0}, Lorg/apache/logging/log4j/core/util/JsonUtils;->_appendNamed(I[C)I

    move-result v6

    :goto_2
    nop

    .line 101
    .local v6, "length":I
    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 102
    .end local v2    # "d":C
    .end local v5    # "escCode":I
    .end local v6    # "length":I
    move v2, v4

    goto :goto_0

    .line 89
    .local v2, "inPtr":I
    .local v4, "c":C
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_2

    .line 91
    goto :goto_3

    .line 93
    .end local v4    # "c":C
    :cond_2
    goto :goto_1

    .line 103
    :cond_3
    :goto_3
    return-void
.end method
