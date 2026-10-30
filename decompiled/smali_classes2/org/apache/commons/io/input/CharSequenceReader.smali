.class public Lorg/apache/commons/io/input/CharSequenceReader;
.super Ljava/io/Reader;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x33aef9076e3a9d04L


# instance fields
.field private final charSequence:Ljava/lang/CharSequence;

.field private final end:Ljava/lang/Integer;

.field private idx:I

.field private mark:I

.field private final start:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/CharSequenceReader;-><init>(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 1

    const v0, 0x7fffffff

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/CharSequenceReader;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2
    .line 3
    .line 4
    if-ltz p2, :cond_2

    .line 5
    .line 6
    if-lt p3, p2, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, ""

    .line 12
    .line 13
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    .line 14
    .line 15
    iput p2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->start:I

    .line 16
    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->end:Ljava/lang/Integer;

    .line 22
    .line 23
    iput p2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 24
    .line 25
    iput p2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const-string p1, "End index is less than start "

    .line 29
    .line 30
    const-string v0, ": "

    .line 31
    .line 32
    invoke-static {p2, p1, v0, p3}, Lai/onnxruntime/a;->g(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_2
    const-string p1, "Start index is less than zero: "

    .line 42
    .line 43
    invoke-static {p2, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    throw p1
.end method

.method private end()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->end:Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const v1, 0x7fffffff

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method private start()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->start:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->start:I

    .line 2
    .line 3
    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 4
    .line 5
    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    .line 6
    .line 7
    return-void
.end method

.method public mark(I)V
    .locals 0

    .line 1
    iget p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    .line 4
    .line 5
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public read()I
    .locals 3

    .line 137
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 5

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([CII)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 9
    .line 10
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x1

    .line 15
    if-lt v1, v2, :cond_1

    .line 16
    .line 17
    return v3

    .line 18
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    .line 19
    .line 20
    instance-of v2, v1, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 29
    .line 30
    sub-int/2addr v0, v1

    .line 31
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    .line 36
    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    .line 39
    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 40
    .line 41
    add-int v2, v1, p3

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 44
    .line 45
    .line 46
    iget p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 47
    .line 48
    add-int/2addr p1, p3

    .line 49
    iput p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 50
    .line 51
    return p3

    .line 52
    :cond_2
    instance-of v2, v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 61
    .line 62
    sub-int/2addr v0, v1

    .line 63
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    .line 68
    .line 69
    check-cast v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 72
    .line 73
    add-int v2, v1, p3

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2, p1, p2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 76
    .line 77
    .line 78
    iget p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 79
    .line 80
    add-int/2addr p1, p3

    .line 81
    iput p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 82
    .line 83
    return p3

    .line 84
    :cond_3
    instance-of v1, v1, Ljava/lang/StringBuffer;

    .line 85
    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 93
    .line 94
    sub-int/2addr v0, v1

    .line 95
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    .line 100
    .line 101
    check-cast v0, Ljava/lang/StringBuffer;

    .line 102
    .line 103
    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 104
    .line 105
    add-int v2, v1, p3

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2, p1, p2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 108
    .line 109
    .line 110
    iget p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 111
    .line 112
    add-int/2addr p1, p3

    .line 113
    iput p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 114
    .line 115
    return p3

    .line 116
    :cond_4
    move v1, v0

    .line 117
    :goto_0
    if-ge v0, p3, :cond_6

    .line 118
    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->read()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-ne v2, v3, :cond_5

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    add-int v4, p2, v0

    .line 127
    .line 128
    int-to-char v2, v2

    .line 129
    aput-char v2, p1, v4

    .line 130
    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 132
    .line 133
    add-int/lit8 v0, v0, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_6
    :goto_1
    return v1
.end method

.method public ready()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    .line 2
    .line 3
    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 4
    .line 5
    return-void
.end method

.method public skip(J)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_1

    .line 6
    .line 7
    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 8
    .line 9
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-lt v2, v3, :cond_0

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-long v0, v0

    .line 21
    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 22
    .line 23
    int-to-long v2, v2

    .line 24
    add-long/2addr v2, p1

    .line 25
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    long-to-int p1, p1

    .line 30
    iget p2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 31
    .line 32
    sub-int p2, p1, p2

    .line 33
    .line 34
    iput p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 35
    .line 36
    int-to-long p1, p2

    .line 37
    return-wide p1

    .line 38
    :cond_1
    const-string v0, "Number of characters to skip is less than zero: "

    .line 39
    .line 40
    invoke-static {p1, p2, v0}, Lai/onnxruntime/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-wide/16 p1, 0x0

    .line 48
    .line 49
    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->start()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
