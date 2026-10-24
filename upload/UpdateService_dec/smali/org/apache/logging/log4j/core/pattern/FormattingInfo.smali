.class public final Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
.super Ljava/lang/Object;
.source "FormattingInfo.java"


# static fields
.field private static final DEFAULT:Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

.field public static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

.field private static final SPACES:[C

.field private static final ZEROS:[C


# instance fields
.field private final leftAlign:Z

.field private final leftTruncate:Z

.field private final maxLength:I

.field private final minLength:I

.field private final zeroPad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    const/16 v0, 0x8

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->SPACES:[C

    .line 35
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->ZEROS:[C

    .line 40
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x1

    invoke-direct {v0, v1, v1, v2, v3}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;-><init>(ZIIZ)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->DEFAULT:Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    .line 70
    new-array v0, v1, [Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    return-void

    nop

    :array_0
    .array-data 2
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.method public constructor <init>(ZIIZ)V
    .locals 6
    .param p1, "leftAlign"    # Z
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "leftTruncate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "leftAlign",
            "minLength",
            "maxLength",
            "leftTruncate"
        }
    .end annotation

    .line 85
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;-><init>(ZIIZZ)V

    .line 86
    return-void
.end method

.method public constructor <init>(ZIIZZ)V
    .locals 0
    .param p1, "leftAlign"    # Z
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "leftTruncate"    # Z
    .param p5, "zeroPad"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "leftAlign",
            "minLength",
            "maxLength",
            "leftTruncate",
            "zeroPad"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->leftAlign:Z

    .line 104
    iput p2, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->minLength:I

    .line 105
    iput p3, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->maxLength:I

    .line 106
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->leftTruncate:Z

    .line 107
    iput-boolean p5, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->zeroPad:Z

    .line 108
    return-void
.end method

.method public static getDefault()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .locals 1

    .line 116
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->DEFAULT:Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    return-object v0
.end method


# virtual methods
.method public format(ILjava/lang/StringBuilder;)V
    .locals 4
    .param p1, "fieldStart"    # I
    .param p2, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldStart",
            "buffer"
        }
    .end annotation

    .line 173
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, p1

    .line 175
    .local v0, "rawLength":I
    iget v1, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->maxLength:I

    if-le v0, v1, :cond_1

    .line 176
    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->leftTruncate:Z

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->maxLength:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, p1, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 179
    :cond_0
    add-int/2addr v1, p1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 181
    :cond_1
    iget v1, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->minLength:I

    if-ge v0, v1, :cond_6

    .line 182
    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->leftAlign:Z

    if-eqz v2, :cond_3

    .line 183
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 184
    .local v1, "fieldEnd":I
    iget v2, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->minLength:I

    add-int/2addr v2, p1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 186
    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 187
    const/16 v3, 0x20

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "fieldEnd":I
    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 190
    :cond_3
    sub-int/2addr v1, v0

    .line 192
    .local v1, "padLength":I
    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->zeroPad:Z

    if-eqz v2, :cond_4

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->ZEROS:[C

    goto :goto_1

    :cond_4
    sget-object v2, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->SPACES:[C

    .line 194
    .local v2, "paddingArray":[C
    :goto_1
    array-length v3, v2

    if-le v1, v3, :cond_5

    .line 195
    invoke-virtual {p2, p1, v2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    .line 194
    array-length v3, v2

    sub-int/2addr v1, v3

    goto :goto_1

    .line 198
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {p2, p1, v2, v3, v1}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    .line 201
    .end local v1    # "padLength":I
    .end local v2    # "paddingArray":[C
    :cond_6
    :goto_2
    return-void
.end method

.method public getMaxLength()I
    .locals 1

    .line 161
    iget v0, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->maxLength:I

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .line 152
    iget v0, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->minLength:I

    return v0
.end method

.method public isLeftAligned()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->leftAlign:Z

    return v0
.end method

.method public isLeftTruncate()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->leftTruncate:Z

    return v0
.end method

.method public isZeroPad()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->zeroPad:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, "[leftAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->leftAlign:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, ", maxLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget v1, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->maxLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, ", minLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget v1, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->minLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, ", leftTruncate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->leftTruncate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, ", zeroPad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->zeroPad:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 222
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
