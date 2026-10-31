.class final Lkotlin/time/UnboundLocalDateTime;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/UnboundLocalDateTime$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0003\u0018\u0000 !2\u00020\u0001:\u0001!B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJW\u0010\u0014\u001a\u0002H\u0015\"\u0004\u0008\u0000\u0010\u00152\u0006\u0010\u0016\u001a\u00020\u000326\u0010\u0017\u001a2\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u0002H\u00150\u0018H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eJ\u0008\u0010\u001f\u001a\u00020 H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\r\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\""
    }
    d2 = {
        "Lkotlin/time/UnboundLocalDateTime;",
        "",
        "year",
        "",
        "month",
        "day",
        "hour",
        "minute",
        "second",
        "nanosecond",
        "<init>",
        "(IIIIIII)V",
        "getYear",
        "()I",
        "getMonth",
        "getDay",
        "getHour",
        "getMinute",
        "getSecond",
        "getNanosecond",
        "toInstant",
        "T",
        "offsetSeconds",
        "buildInstant",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "epochSeconds",
        "nanosecondOfSecond",
        "(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "toString",
        "",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/time/ExperimentalTime;
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/UnboundLocalDateTime$Companion;


# instance fields
.field private final day:I

.field private final hour:I

.field private final minute:I

.field private final month:I

.field private final nanosecond:I

.field private final second:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lkotlin/time/UnboundLocalDateTime$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/time/UnboundLocalDateTime;->Companion:Lkotlin/time/UnboundLocalDateTime$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    .line 5
    .line 6
    iput p2, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    .line 7
    .line 8
    iput p3, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    .line 9
    .line 10
    iput p4, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    .line 11
    .line 12
    iput p5, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    .line 13
    .line 14
    iput p6, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    .line 15
    .line 16
    iput p7, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getDay()I
    .registers 2

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    .line 2
    .line 3
    return v0
.end method

.method public final getHour()I
    .registers 2

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMinute()I
    .registers 2

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMonth()I
    .registers 2

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNanosecond()I
    .registers 2

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSecond()I
    .registers 2

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    .line 2
    .line 3
    return v0
.end method

.method public final getYear()I
    .registers 2

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    .line 2
    .line 3
    return v0
.end method

.method public final toInstant(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getYear()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    int-to-long v0, v0

    .line 9
    const/16 v2, 0x16d

    .line 10
    .line 11
    int-to-long v2, v2

    .line 12
    mul-long/2addr v2, v0

    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v4

    .line 16
    .line 17
    if-ltz v4, :cond_2c

    .line 18
    .line 19
    const/4 v4, 0x3

    .line 20
    int-to-long v4, v4

    .line 21
    add-long/2addr v4, v0

    .line 22
    const/4 v6, 0x4

    .line 23
    int-to-long v6, v6

    .line 24
    div-long/2addr v4, v6

    .line 25
    const/16 v6, 0x63

    .line 26
    .line 27
    int-to-long v6, v6

    .line 28
    add-long/2addr v6, v0

    .line 29
    const/16 v8, 0x64

    .line 30
    .line 31
    int-to-long v8, v8

    .line 32
    div-long/2addr v6, v8

    .line 33
    sub-long/2addr v4, v6

    .line 34
    const/16 v6, 0x18f

    .line 35
    .line 36
    int-to-long v6, v6

    .line 37
    add-long/2addr v0, v6

    .line 38
    const/16 v6, 0x190

    .line 39
    .line 40
    int-to-long v6, v6

    .line 41
    div-long/2addr v0, v6

    .line 42
    add-long/2addr v0, v4

    .line 43
    add-long/2addr v0, v2

    .line 44
    goto :goto_3d

    .line 45
    :cond_2c
    const/4 v4, -0x4

    .line 46
    int-to-long v4, v4

    .line 47
    div-long v4, v0, v4

    .line 48
    .line 49
    const/16 v6, -0x64

    .line 50
    .line 51
    int-to-long v6, v6

    .line 52
    div-long v6, v0, v6

    .line 53
    .line 54
    sub-long/2addr v4, v6

    .line 55
    const/16 v6, -0x190

    .line 56
    .line 57
    int-to-long v6, v6

    .line 58
    div-long/2addr v0, v6

    .line 59
    add-long/2addr v0, v4

    .line 60
    sub-long v0, v2, v0

    .line 61
    .line 62
    :goto_3d
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getMonth()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    mul-int/lit16 v2, v2, 0x16f

    .line 67
    .line 68
    add-int/lit16 v2, v2, -0x16a

    .line 69
    .line 70
    div-int/lit8 v2, v2, 0xc

    .line 71
    .line 72
    int-to-long v2, v2

    .line 73
    add-long/2addr v0, v2

    .line 74
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getDay()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    add-int/lit8 v2, v2, -0x1

    .line 79
    .line 80
    int-to-long v2, v2

    .line 81
    add-long/2addr v0, v2

    .line 82
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getMonth()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/4 v3, 0x2

    .line 87
    if-le v2, v3, :cond_6a

    .line 88
    .line 89
    const-wide/16 v2, -0x1

    .line 90
    .line 91
    add-long/2addr v2, v0

    .line 92
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getYear()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    invoke-static {v4}, Lkotlin/time/InstantKt;->isLeapYear(I)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-nez v4, :cond_69

    .line 101
    .line 102
    const-wide/16 v2, -0x2

    .line 103
    .line 104
    add-long/2addr v0, v2

    .line 105
    goto :goto_6a

    .line 106
    :cond_69
    move-wide v0, v2

    .line 107
    :cond_6a
    :goto_6a
    const v2, 0xafaa8

    .line 108
    .line 109
    .line 110
    int-to-long v2, v2

    .line 111
    sub-long/2addr v0, v2

    .line 112
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getHour()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    mul-int/lit16 v2, v2, 0xe10

    .line 117
    .line 118
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getMinute()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    mul-int/lit8 v3, v3, 0x3c

    .line 123
    .line 124
    add-int/2addr v3, v2

    .line 125
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getSecond()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    add-int/2addr v3, v2

    .line 130
    const v2, 0x15180

    .line 131
    .line 132
    .line 133
    int-to-long v4, v2

    .line 134
    mul-long/2addr v0, v4

    .line 135
    int-to-long v2, v3

    .line 136
    add-long/2addr v0, v2

    .line 137
    int-to-long v2, p1

    .line 138
    sub-long/2addr v0, v2

    .line 139
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getNanosecond()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UnboundLocalDateTime("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x2d

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x20

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x3a

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v2, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const/16 v1, 0x2e

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const/16 v1, 0x29

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method
