.class public final Lorg/apache/commons/net/tftp/TFTPErrorPacket;
.super Lorg/apache/commons/net/tftp/TFTPPacket;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final ACCESS_VIOLATION:I = 0x2

.field public static final FILE_EXISTS:I = 0x6

.field public static final FILE_NOT_FOUND:I = 0x1

.field public static final ILLEGAL_OPERATION:I = 0x4

.field public static final INVALID_OPTIONS_VALUE:I = 0x8

.field public static final NO_SUCH_USER:I = 0x7

.field public static final OUT_OF_SPACE:I = 0x3

.field public static final UNDEFINED:I = 0x0

.field public static final UNKNOWN_TID:I = 0x5


# instance fields
.field private final error:I

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x5

    .line 10
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v3, 0x1

    .line 26
    aget-byte v3, v0, v3

    .line 27
    .line 28
    if-ne v1, v3, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    aget-byte v1, v0, v1

    .line 32
    .line 33
    and-int/lit16 v1, v1, 0xff

    .line 34
    .line 35
    shl-int/lit8 v1, v1, 0x8

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    aget-byte v3, v0, v3

    .line 39
    .line 40
    and-int/lit16 v3, v3, 0xff

    .line 41
    .line 42
    or-int/2addr v1, v3

    .line 43
    iput v1, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->error:I

    .line 44
    .line 45
    if-lt p1, v2, :cond_1

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x4

    .line 53
    :goto_0
    if-ge v2, p1, :cond_0

    .line 54
    .line 55
    aget-byte v3, v0, v2

    .line 56
    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    int-to-char v3, v3

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->message:Ljava/lang/String;

    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    new-instance p1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    .line 74
    .line 75
    const-string v0, "Bad error packet. No message."

    .line 76
    .line 77
    invoke-direct {p1, v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_2
    new-instance p1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    .line 82
    .line 83
    const-string v0, "TFTP operator code does not match type."

    .line 84
    .line 85
    invoke-direct {p1, v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method

.method public constructor <init>(Ljava/net/InetAddress;IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 89
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 90
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->error:I

    .line 91
    iput-object p4, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->error:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public newDatagram()Ljava/net/DatagramPacket;
    .locals 7

    .line 68
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x5

    .line 69
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 70
    aput-byte v3, v2, v3

    .line 71
    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->type:I

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    .line 72
    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->error:I

    const v5, 0xffff

    and-int/2addr v5, v4

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x2

    aput-byte v5, v2, v6

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x3

    .line 73
    aput-byte v4, v2, v5

    .line 74
    iget-object v4, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->message:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v5

    .line 75
    aput-byte v3, v2, v0

    .line 76
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v3, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->message:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    aput-byte v1, p2, v1

    .line 9
    .line 10
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->type:I

    .line 11
    .line 12
    int-to-byte v2, v2

    .line 13
    const/4 v3, 0x1

    .line 14
    aput-byte v2, p2, v3

    .line 15
    .line 16
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->error:I

    .line 17
    .line 18
    const v3, 0xffff

    .line 19
    .line 20
    .line 21
    and-int/2addr v3, v2

    .line 22
    shr-int/lit8 v3, v3, 0x8

    .line 23
    .line 24
    int-to-byte v3, v3

    .line 25
    const/4 v4, 0x2

    .line 26
    aput-byte v3, p2, v4

    .line 27
    .line 28
    and-int/lit16 v2, v2, 0xff

    .line 29
    .line 30
    int-to-byte v2, v2

    .line 31
    const/4 v3, 0x3

    .line 32
    aput-byte v2, p2, v3

    .line 33
    .line 34
    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->message:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x4

    .line 45
    invoke-static {v2, v1, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    add-int/2addr v0, v3

    .line 49
    aput-byte v1, p2, v0

    .line 50
    .line 51
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 65
    .line 66
    .line 67
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lorg/apache/commons/net/tftp/TFTPPacket;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " ERR "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->error:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->message:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
