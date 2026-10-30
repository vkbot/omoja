.class public Lorg/apache/commons/net/ntp/NtpV3Impl;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/net/ntp/NtpV3Packet;


# static fields
.field private static final LI_INDEX:I = 0x0

.field private static final LI_SHIFT:I = 0x6

.field private static final MODE_INDEX:I = 0x0

.field private static final MODE_SHIFT:I = 0x0

.field private static final ORIGINATE_TIMESTAMP_INDEX:I = 0x18

.field private static final POLL_INDEX:I = 0x2

.field private static final PRECISION_INDEX:I = 0x3

.field private static final RECEIVE_TIMESTAMP_INDEX:I = 0x20

.field private static final REFERENCE_ID_INDEX:I = 0xc

.field private static final REFERENCE_TIMESTAMP_INDEX:I = 0x10

.field private static final ROOT_DELAY_INDEX:I = 0x4

.field private static final ROOT_DISPERSION_INDEX:I = 0x8

.field private static final STRATUM_INDEX:I = 0x1

.field private static final TRANSMIT_TIMESTAMP_INDEX:I = 0x28

.field private static final VERSION_INDEX:I = 0x0

.field private static final VERSION_SHIFT:I = 0x3


# instance fields
.field private final buf:[B

.field private volatile dp:Ljava/net/DatagramPacket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x30

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 9
    .line 10
    return-void
.end method

.method private getInt(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 2
    .line 3
    aget-byte v0, v0, p1

    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    shl-int/lit8 v0, v0, 0x18

    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 12
    .line 13
    add-int/lit8 v2, p1, 0x1

    .line 14
    .line 15
    aget-byte v1, v1, v2

    .line 16
    .line 17
    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    shl-int/lit8 v1, v1, 0x10

    .line 22
    .line 23
    or-int/2addr v0, v1

    .line 24
    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 25
    .line 26
    add-int/lit8 v2, p1, 0x2

    .line 27
    .line 28
    aget-byte v1, v1, v2

    .line 29
    .line 30
    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    shl-int/lit8 v1, v1, 0x8

    .line 35
    .line 36
    or-int/2addr v0, v1

    .line 37
    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x3

    .line 40
    .line 41
    aget-byte p1, v1, p1

    .line 42
    .line 43
    invoke-static {p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    or-int/2addr p1, v0

    .line 48
    return p1
.end method

.method private getLong(I)J
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 2
    .line 3
    aget-byte v0, v0, p1

    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const/16 v2, 0x38

    .line 10
    .line 11
    shl-long/2addr v0, v2

    .line 12
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 13
    .line 14
    add-int/lit8 v3, p1, 0x1

    .line 15
    .line 16
    aget-byte v2, v2, v3

    .line 17
    .line 18
    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    const/16 v4, 0x30

    .line 23
    .line 24
    shl-long/2addr v2, v4

    .line 25
    or-long/2addr v0, v2

    .line 26
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 27
    .line 28
    add-int/lit8 v3, p1, 0x2

    .line 29
    .line 30
    aget-byte v2, v2, v3

    .line 31
    .line 32
    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    const/16 v4, 0x28

    .line 37
    .line 38
    shl-long/2addr v2, v4

    .line 39
    or-long/2addr v0, v2

    .line 40
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 41
    .line 42
    add-int/lit8 v3, p1, 0x3

    .line 43
    .line 44
    aget-byte v2, v2, v3

    .line 45
    .line 46
    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    const/16 v4, 0x20

    .line 51
    .line 52
    shl-long/2addr v2, v4

    .line 53
    or-long/2addr v0, v2

    .line 54
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 55
    .line 56
    add-int/lit8 v3, p1, 0x4

    .line 57
    .line 58
    aget-byte v2, v2, v3

    .line 59
    .line 60
    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    const/16 v4, 0x18

    .line 65
    .line 66
    shl-long/2addr v2, v4

    .line 67
    or-long/2addr v0, v2

    .line 68
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 69
    .line 70
    add-int/lit8 v3, p1, 0x5

    .line 71
    .line 72
    aget-byte v2, v2, v3

    .line 73
    .line 74
    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    const/16 v4, 0x10

    .line 79
    .line 80
    shl-long/2addr v2, v4

    .line 81
    or-long/2addr v0, v2

    .line 82
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 83
    .line 84
    add-int/lit8 v3, p1, 0x6

    .line 85
    .line 86
    aget-byte v2, v2, v3

    .line 87
    .line 88
    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    const/16 v4, 0x8

    .line 93
    .line 94
    shl-long/2addr v2, v4

    .line 95
    or-long/2addr v0, v2

    .line 96
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 97
    .line 98
    add-int/lit8 p1, p1, 0x7

    .line 99
    .line 100
    aget-byte p1, v2, p1

    .line 101
    .line 102
    invoke-static {p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ul(B)J

    .line 103
    .line 104
    .line 105
    move-result-wide v2

    .line 106
    or-long/2addr v0, v2

    .line 107
    return-wide v0
.end method

.method private getTimestamp(I)Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/commons/net/ntp/TimeStamp;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getLong(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/ntp/TimeStamp;-><init>(J)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private idAsHex()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getReferenceId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private idAsIPAddress()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 7
    .line 8
    const/16 v2, 0xc

    .line 9
    .line 10
    aget-byte v1, v1, v2

    .line 11
    .line 12
    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "."

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 25
    .line 26
    const/16 v3, 0xd

    .line 27
    .line 28
    aget-byte v2, v2, v3

    .line 29
    .line 30
    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 41
    .line 42
    const/16 v3, 0xe

    .line 43
    .line 44
    aget-byte v2, v2, v3

    .line 45
    .line 46
    invoke-static {v2}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 57
    .line 58
    const/16 v2, 0xf

    .line 59
    .line 60
    aget-byte v1, v1, v2

    .line 61
    .line 62
    invoke-static {v1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0
.end method

.method private idAsString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    const/4 v2, 0x3

    .line 8
    if-gt v1, v2, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 11
    .line 12
    add-int/lit8 v3, v1, 0xc

    .line 13
    .line 14
    aget-byte v2, v2, v3

    .line 15
    .line 16
    int-to-char v2, v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method private setInt(II)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    :goto_0
    if-ltz v0, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 5
    .line 6
    add-int v2, p1, v0

    .line 7
    .line 8
    and-int/lit16 v3, p2, 0xff

    .line 9
    .line 10
    int-to-byte v3, v3

    .line 11
    aput-byte v3, v1, v2

    .line 12
    .line 13
    ushr-int/lit8 p2, p2, 0x8

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method private setTimestamp(ILorg/apache/commons/net/ntp/TimeStamp;)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :goto_0
    const/4 p2, 0x7

    .line 11
    :goto_1
    if-ltz p2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 14
    .line 15
    add-int v3, p1, p2

    .line 16
    .line 17
    const-wide/16 v4, 0xff

    .line 18
    .line 19
    and-long/2addr v4, v0

    .line 20
    long-to-int v4, v4

    .line 21
    int-to-byte v4, v4

    .line 22
    aput-byte v4, v2, v3

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    ushr-long/2addr v0, v2

    .line 27
    add-int/lit8 p2, p2, -0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    return-void
.end method

.method public static final ui(B)I
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0xff

    .line 2
    .line 3
    return p0
.end method

.method public static final ul(B)J
    .locals 2

    .line 1
    and-int/lit16 p0, p0, 0xff

    .line 2
    .line 3
    int-to-long v0, p0

    .line 4
    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    check-cast p1, Lorg/apache/commons/net/ntp/NtpV3Impl;

    .line 19
    .line 20
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 21
    .line 22
    iget-object p1, p1, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 23
    .line 24
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public declared-synchronized getDatagramPacket()Ljava/net/DatagramPacket;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->dp:Ljava/net/DatagramPacket;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/net/DatagramPacket;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->dp:Ljava/net/DatagramPacket;

    .line 15
    .line 16
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->dp:Ljava/net/DatagramPacket;

    .line 17
    .line 18
    const/16 v1, 0x7b

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->dp:Ljava/net/DatagramPacket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-object v0

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v0
.end method

.method public getLeapIndicator()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v0, v0, v1

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    shr-int/lit8 v0, v0, 0x6

    .line 11
    .line 12
    and-int/lit8 v0, v0, 0x3

    .line 13
    .line 14
    return v0
.end method

.method public getMode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v0, v0, v1

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    and-int/lit8 v0, v0, 0x7

    .line 11
    .line 12
    return v0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpUtils;->getModeName(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getOriginateTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getTimestamp(I)Lorg/apache/commons/net/ntp/TimeStamp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPoll()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget-byte v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public getPrecision()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    aget-byte v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public getReceiveTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getTimestamp(I)Lorg/apache/commons/net/ntp/TimeStamp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getReferenceId()I
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getReferenceIdString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getStratum()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x4

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    if-ne v0, v3, :cond_2

    .line 14
    .line 15
    :cond_0
    if-eqz v1, :cond_4

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-ne v0, v3, :cond_2

    .line 22
    .line 23
    invoke-direct {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->idAsHex()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_2
    const/4 v0, 0x2

    .line 29
    if-lt v1, v0, :cond_3

    .line 30
    .line 31
    invoke-direct {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->idAsIPAddress()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->idAsHex()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :cond_4
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->idAsString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public getReferenceTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getTimestamp(I)Lorg/apache/commons/net/ntp/TimeStamp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRootDelay()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getInt(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public getRootDelayInMillisDouble()D
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getRootDelay()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-double v0, v0

    .line 6
    const-wide v2, 0x4050624dd2f1a9fcL    # 65.536

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    div-double/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public getRootDispersion()I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRootDispersionInMillis()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getRootDispersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const-wide/16 v2, 0x3e8

    .line 7
    .line 8
    mul-long/2addr v0, v2

    .line 9
    const-wide/32 v2, 0x10000

    .line 10
    .line 11
    .line 12
    div-long/2addr v0, v2

    .line 13
    return-wide v0
.end method

.method public getRootDispersionInMillisDouble()D
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getRootDispersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-double v0, v0

    .line 6
    const-wide v2, 0x4050624dd2f1a9fcL    # 65.536

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    div-double/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public getStratum()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-byte v0, v0, v1

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getTransmitTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 1

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getTimestamp(I)Lorg/apache/commons/net/ntp/TimeStamp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "NTP"

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v0, v0, v1

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->ui(B)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    shr-int/lit8 v0, v0, 0x3

    .line 11
    .line 12
    and-int/lit8 v0, v0, 0x7

    .line 13
    .line 14
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setDatagramPacket(Ljava/net/DatagramPacket;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    if-lt v0, v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 21
    .line 22
    array-length v3, v2

    .line 23
    if-le v1, v3, :cond_0

    .line 24
    .line 25
    array-length v1, v2

    .line 26
    :cond_0
    const/4 v3, 0x0

    .line 27
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getDatagramPacket()Ljava/net/DatagramPacket;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-lez p1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/16 p1, 0x7b

    .line 49
    .line 50
    :goto_0
    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-static {}, Ll9/i;->a()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public setLeapIndicator(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v2, v0, v1

    .line 5
    .line 6
    and-int/lit8 v2, v2, 0x3f

    .line 7
    .line 8
    and-int/lit8 p1, p1, 0x3

    .line 9
    .line 10
    shl-int/lit8 p1, p1, 0x6

    .line 11
    .line 12
    or-int/2addr p1, v2

    .line 13
    int-to-byte p1, p1

    .line 14
    aput-byte p1, v0, v1

    .line 15
    .line 16
    return-void
.end method

.method public setMode(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v2, v0, v1

    .line 5
    .line 6
    and-int/lit16 v2, v2, 0xf8

    .line 7
    .line 8
    and-int/lit8 p1, p1, 0x7

    .line 9
    .line 10
    or-int/2addr p1, v2

    .line 11
    int-to-byte p1, p1

    .line 12
    aput-byte p1, v0, v1

    .line 13
    .line 14
    return-void
.end method

.method public setOriginateTimeStamp(Lorg/apache/commons/net/ntp/TimeStamp;)V
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setTimestamp(ILorg/apache/commons/net/ntp/TimeStamp;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPoll(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 2
    .line 3
    and-int/lit16 p1, p1, 0xff

    .line 4
    .line 5
    int-to-byte p1, p1

    .line 6
    const/4 v1, 0x2

    .line 7
    aput-byte p1, v0, v1

    .line 8
    .line 9
    return-void
.end method

.method public setPrecision(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 2
    .line 3
    and-int/lit16 p1, p1, 0xff

    .line 4
    .line 5
    int-to-byte p1, p1

    .line 6
    const/4 v1, 0x3

    .line 7
    aput-byte p1, v0, v1

    .line 8
    .line 9
    return-void
.end method

.method public setReceiveTimeStamp(Lorg/apache/commons/net/ntp/TimeStamp;)V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setTimestamp(ILorg/apache/commons/net/ntp/TimeStamp;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setReferenceId(I)V
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setInt(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setReferenceTime(Lorg/apache/commons/net/ntp/TimeStamp;)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setTimestamp(ILorg/apache/commons/net/ntp/TimeStamp;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRootDelay(I)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setInt(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setRootDispersion(I)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setInt(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStratum(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 2
    .line 3
    and-int/lit16 p1, p1, 0xff

    .line 4
    .line 5
    int-to-byte p1, p1

    .line 6
    const/4 v1, 0x1

    .line 7
    aput-byte p1, v0, v1

    .line 8
    .line 9
    return-void
.end method

.method public setTransmitTime(Lorg/apache/commons/net/ntp/TimeStamp;)V
    .locals 1

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;->setTimestamp(ILorg/apache/commons/net/ntp/TimeStamp;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVersion(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/NtpV3Impl;->buf:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v2, v0, v1

    .line 5
    .line 6
    and-int/lit16 v2, v2, 0xc7

    .line 7
    .line 8
    and-int/lit8 p1, p1, 0x7

    .line 9
    .line 10
    shl-int/lit8 p1, p1, 0x3

    .line 11
    .line 12
    or-int/2addr p1, v2

    .line 13
    int-to-byte p1, p1

    .line 14
    aput-byte p1, v0, v1

    .line 15
    .line 16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[version:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getVersion()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", mode:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getMode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", poll:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getPoll()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ", precision:"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getPrecision()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", delay:"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getRootDelay()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", dispersion(ms):"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getRootDispersionInMillisDouble()D

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ", id:"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getReferenceIdString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ", xmitTime:"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/NtpV3Impl;->getTransmitTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lorg/apache/commons/net/ntp/TimeStamp;->toDateString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, " ]"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0
.end method
