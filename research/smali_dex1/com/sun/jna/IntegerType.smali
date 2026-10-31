.class public abstract Lcom/sun/jna/IntegerType;
.super Ljava/lang/Number;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/sun/jna/NativeMapped;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private number:Ljava/lang/Number;

.field private size:I

.field private unsigned:Z

.field private value:J


# direct methods
.method public constructor <init>(I)V
    .registers 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 14
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sun/jna/IntegerType;-><init>(IJZ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 5

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/jna/IntegerType;-><init>(IJZ)V

    return-void
.end method

.method public constructor <init>(IJZ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/sun/jna/IntegerType;->size:I

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/sun/jna/IntegerType;->unsigned:Z

    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/IntegerType;->setValue(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sun/jna/IntegerType;-><init>(IJZ)V

    return-void
.end method

.method public static final compare(JJ)I
    .registers 4

    .line 26
    cmp-long p0, p0, p2

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    if-gez p0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public static compare(Lcom/sun/jna/IntegerType;J)I
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 27
    :cond_4
    invoke-virtual {p0}, Lcom/sun/jna/IntegerType;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/sun/jna/IntegerType;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static compare(Lcom/sun/jna/IntegerType;Lcom/sun/jna/IntegerType;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/jna/IntegerType;",
            ">(TT;TT;)I"
        }
    .end annotation

    .line 1
    if-ne p0, p1, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    if-nez p0, :cond_8

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_8
    if-nez p1, :cond_c

    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :cond_c
    invoke-virtual {p0}, Lcom/sun/jna/IntegerType;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p1}, Lcom/sun/jna/IntegerType;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    invoke-static {v0, v1, p0, p1}, Lcom/sun/jna/IntegerType;->compare(JJ)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method


# virtual methods
.method public doubleValue()D
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/sun/jna/IntegerType;->number:Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/sun/jna/IntegerType;

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    iget-object v0, p0, Lcom/sun/jna/IntegerType;->number:Ljava/lang/Number;

    .line 6
    .line 7
    check-cast p1, Lcom/sun/jna/IntegerType;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/sun/jna/IntegerType;->number:Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_12

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public floatValue()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/sun/jna/IntegerType;->number:Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;
    .registers 4

    .line 1
    if-nez p1, :cond_5

    .line 2
    .line 3
    const-wide/16 p1, 0x0

    .line 4
    .line 5
    goto :goto_b

    .line 6
    :cond_5
    check-cast p1, Ljava/lang/Number;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    :goto_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/sun/jna/Klass;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/sun/jna/IntegerType;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/sun/jna/IntegerType;->setValue(J)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/sun/jna/IntegerType;->number:Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public intValue()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/sun/jna/IntegerType;->value:J

    .line 2
    .line 3
    long-to-int v0, v0

    .line 4
    return v0
.end method

.method public longValue()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/sun/jna/IntegerType;->value:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public nativeType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/jna/IntegerType;->number:Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setValue(J)V
    .registers 10

    .line 1
    iput-wide p1, p0, Lcom/sun/jna/IntegerType;->value:J

    .line 2
    .line 3
    iget v0, p0, Lcom/sun/jna/IntegerType;->size:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-eq v0, v1, :cond_4a

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_36

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_21

    .line 15
    .line 16
    if-ne v0, v2, :cond_19

    .line 17
    .line 18
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/sun/jna/IntegerType;->number:Ljava/lang/Number;

    .line 23
    .line 24
    move-wide v3, p1

    .line 25
    goto :goto_5c

    .line 26
    :cond_19
    const-string p1, "Unsupported size: "

    .line 27
    .line 28
    iget p2, p0, Lcom/sun/jna/IntegerType;->size:I

    .line 29
    .line 30
    invoke-static {p2, p1}, Landroidx/navigation/b;->b(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    iget-boolean v0, p0, Lcom/sun/jna/IntegerType;->unsigned:Z

    .line 35
    .line 36
    if-eqz v0, :cond_2d

    .line 37
    .line 38
    const-wide v0, 0xffffffffL

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    and-long/2addr v0, p1

    .line 44
    iput-wide v0, p0, Lcom/sun/jna/IntegerType;->value:J

    .line 45
    .line 46
    :cond_2d
    long-to-int v0, p1

    .line 47
    int-to-long v3, v0

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/sun/jna/IntegerType;->number:Ljava/lang/Number;

    .line 53
    .line 54
    goto :goto_5c

    .line 55
    :cond_36
    iget-boolean v0, p0, Lcom/sun/jna/IntegerType;->unsigned:Z

    .line 56
    .line 57
    if-eqz v0, :cond_40

    .line 58
    .line 59
    const-wide/32 v0, 0xffff

    .line 60
    .line 61
    .line 62
    and-long/2addr v0, p1

    .line 63
    iput-wide v0, p0, Lcom/sun/jna/IntegerType;->value:J

    .line 64
    .line 65
    :cond_40
    long-to-int v0, p1

    .line 66
    int-to-short v0, v0

    .line 67
    int-to-long v3, v0

    .line 68
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/sun/jna/IntegerType;->number:Ljava/lang/Number;

    .line 73
    .line 74
    goto :goto_5c

    .line 75
    :cond_4a
    iget-boolean v0, p0, Lcom/sun/jna/IntegerType;->unsigned:Z

    .line 76
    .line 77
    if-eqz v0, :cond_53

    .line 78
    .line 79
    const-wide/16 v0, 0xff

    .line 80
    .line 81
    and-long/2addr v0, p1

    .line 82
    iput-wide v0, p0, Lcom/sun/jna/IntegerType;->value:J

    .line 83
    .line 84
    :cond_53
    long-to-int v0, p1

    .line 85
    int-to-byte v0, v0

    .line 86
    int-to-long v3, v0

    .line 87
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/sun/jna/IntegerType;->number:Ljava/lang/Number;

    .line 92
    .line 93
    :goto_5c
    iget v0, p0, Lcom/sun/jna/IntegerType;->size:I

    .line 94
    .line 95
    if-ge v0, v2, :cond_a8

    .line 96
    .line 97
    mul-int/2addr v0, v2

    .line 98
    const-wide/16 v1, 0x1

    .line 99
    .line 100
    shl-long v5, v1, v0

    .line 101
    .line 102
    sub-long/2addr v5, v1

    .line 103
    not-long v0, v5

    .line 104
    const-wide/16 v5, 0x0

    .line 105
    .line 106
    cmp-long v2, p1, v5

    .line 107
    .line 108
    if-gez v2, :cond_71

    .line 109
    .line 110
    cmp-long v3, v3, p1

    .line 111
    .line 112
    if-nez v3, :cond_7a

    .line 113
    .line 114
    :cond_71
    if-ltz v2, :cond_a8

    .line 115
    .line 116
    and-long v2, v0, p1

    .line 117
    .line 118
    cmp-long v2, v2, v5

    .line 119
    .line 120
    if-nez v2, :cond_7a

    .line 121
    .line 122
    goto :goto_a8

    .line 123
    :cond_7a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget p2, p0, Lcom/sun/jna/IntegerType;->size:I

    .line 130
    .line 131
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v3, "Argument value 0x"

    .line 138
    .line 139
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p1, " exceeds native capacity ("

    .line 146
    .line 147
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p1, " bytes) mask=0x"

    .line 154
    .line 155
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v2

    .line 169
    :cond_a8
    :goto_a8
    return-void
.end method

.method public toNative()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/sun/jna/IntegerType;->number:Ljava/lang/Number;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/sun/jna/IntegerType;->number:Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
