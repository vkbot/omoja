.class public abstract Lorg/apache/commons/net/tftp/TFTPRequestPacket;
.super Lorg/apache/commons/net/tftp/TFTPPacket;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final modeBytes:[[B

.field static final modeStrings:[Ljava/lang/String;


# instance fields
.field private final fileName:Ljava/lang/String;

.field private final mode:I

.field private final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "netascii"

    .line 2
    .line 3
    const-string v1, "octet"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeStrings:[Ljava/lang/String;

    .line 10
    .line 11
    const/16 v0, 0x9

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    fill-array-data v0, :array_0

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x6

    .line 19
    new-array v1, v1, [B

    .line 20
    .line 21
    fill-array-data v1, :array_1

    .line 22
    .line 23
    .line 24
    filled-new-array {v0, v1}, [[B

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeBytes:[[B

    .line 29
    .line 30
    return-void

    .line 31
    :array_0
    .array-data 1
        0x6et
        0x65t
        0x74t
        0x61t
        0x73t
        0x63t
        0x69t
        0x69t
        0x0t
    .end array-data

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    nop

    .line 41
    :array_1
    .array-data 1
        0x6ft
        0x63t
        0x74t
        0x65t
        0x74t
        0x0t
    .end array-data
.end method

.method public constructor <init>(ILjava/net/DatagramPacket;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getPort()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->options:Ljava/util/Map;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    aget-byte v2, p1, v1

    .line 29
    .line 30
    if-ne v0, v2, :cond_b

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getLength()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    const/4 v2, 0x2

    .line 42
    :goto_0
    if-ge v2, p2, :cond_0

    .line 43
    .line 44
    aget-byte v3, p1, v2

    .line 45
    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    int-to-char v3, v3

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iput-object v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->fileName:Ljava/lang/String;

    .line 60
    .line 61
    if-ge v2, p2, :cond_a

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 65
    .line 66
    .line 67
    add-int/2addr v2, v1

    .line 68
    :goto_1
    if-ge v2, p2, :cond_1

    .line 69
    .line 70
    aget-byte v4, p1, v2

    .line 71
    .line 72
    if-eqz v4, :cond_1

    .line 73
    .line 74
    int-to-char v4, v4

    .line 75
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-object v4, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeStrings:[Ljava/lang/String;

    .line 92
    .line 93
    array-length v4, v4

    .line 94
    move v5, v3

    .line 95
    :goto_2
    if-ge v5, v4, :cond_3

    .line 96
    .line 97
    sget-object v6, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeStrings:[Ljava/lang/String;

    .line 98
    .line 99
    aget-object v6, v6, v5

    .line 100
    .line 101
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_2

    .line 106
    .line 107
    move v3, v5

    .line 108
    goto :goto_3

    .line 109
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    :goto_3
    iput v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->mode:I

    .line 113
    .line 114
    if-ge v5, v4, :cond_9

    .line 115
    .line 116
    add-int/2addr v2, v1

    .line 117
    :goto_4
    if-ge v2, p2, :cond_8

    .line 118
    .line 119
    move v0, v2

    .line 120
    :goto_5
    aget-byte v1, p1, v0

    .line 121
    .line 122
    const-string v3, "Invalid option format"

    .line 123
    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    if-ge v0, p2, :cond_4

    .line 127
    .line 128
    add-int/lit8 v0, v0, 0x1

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_4
    new-instance p1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    .line 132
    .line 133
    invoke-direct {p1, v3}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_5
    new-instance v1, Ljava/lang/String;

    .line 138
    .line 139
    sub-int v4, v0, v2

    .line 140
    .line 141
    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 142
    .line 143
    invoke-direct {v1, p1, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 v0, v0, 0x1

    .line 147
    .line 148
    move v2, v0

    .line 149
    :goto_6
    aget-byte v4, p1, v2

    .line 150
    .line 151
    if-eqz v4, :cond_7

    .line 152
    .line 153
    if-ge v2, p2, :cond_6

    .line 154
    .line 155
    add-int/lit8 v2, v2, 0x1

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_6
    new-instance p1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    .line 159
    .line 160
    invoke-direct {p1, v3}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_7
    new-instance v3, Ljava/lang/String;

    .line 165
    .line 166
    sub-int v4, v2, v0

    .line 167
    .line 168
    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 169
    .line 170
    invoke-direct {v3, p1, v0, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->options:Ljava/util/Map;

    .line 174
    .line 175
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    add-int/lit8 v2, v2, 0x1

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_8
    return-void

    .line 182
    :cond_9
    new-instance p1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    .line 183
    .line 184
    const-string p2, "Unrecognized TFTP transfer mode: "

    .line 185
    .line 186
    invoke-static {p2, v0}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-direct {p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p1

    .line 194
    :cond_a
    new-instance p1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    .line 195
    .line 196
    const-string p2, "Bad file name and mode format."

    .line 197
    .line 198
    invoke-direct {p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1

    .line 202
    :cond_b
    new-instance p1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    .line 203
    .line 204
    const-string p2, "TFTP operator code does not match type."

    .line 205
    .line 206
    invoke-direct {p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p1
.end method

.method public constructor <init>(Ljava/net/InetAddress;IILjava/lang/String;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p3, p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 211
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->options:Ljava/util/Map;

    .line 212
    iput-object p4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->fileName:Ljava/lang/String;

    .line 213
    iput p5, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->mode:I

    return-void
.end method

.method private handleOptions([BII)V
    .locals 6

    .line 1
    add-int/2addr p2, p3

    .line 2
    add-int/lit8 p2, p2, 0x2

    .line 3
    .line 4
    iget-object p3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->options:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/Map$Entry;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    aput-byte v1, p1, p2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    .line 41
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    add-int/lit8 p2, p2, 0x1

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-static {v4, v1, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    add-int/2addr v2, p2

    .line 61
    add-int/lit8 p2, v2, 0x1

    .line 62
    .line 63
    aput-byte v1, p1, v2

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-static {v2, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    add-int/2addr p2, v0

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public final getFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->mode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->options:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final newDatagram()Ljava/net/DatagramPacket;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeBytes:[[B

    .line 8
    .line 9
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->mode:I

    .line 10
    .line 11
    aget-object v1, v1, v2

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->options:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v3

    .line 26
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/4 v6, 0x1

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    add-int/2addr v7, v6

    .line 50
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    add-int/2addr v5, v7

    .line 61
    add-int/2addr v5, v6

    .line 62
    add-int/2addr v4, v5

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    add-int v2, v0, v1

    .line 65
    .line 66
    add-int/lit8 v2, v2, 0x3

    .line 67
    .line 68
    add-int/2addr v2, v4

    .line 69
    new-array v5, v2, [B

    .line 70
    .line 71
    aput-byte v3, v5, v3

    .line 72
    .line 73
    iget v7, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->type:I

    .line 74
    .line 75
    int-to-byte v7, v7

    .line 76
    aput-byte v7, v5, v6

    .line 77
    .line 78
    iget-object v6, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->fileName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    const/4 v7, 0x2

    .line 89
    invoke-static {v6, v3, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v6, v0, 0x2

    .line 93
    .line 94
    aput-byte v3, v5, v6

    .line 95
    .line 96
    sget-object v6, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeBytes:[[B

    .line 97
    .line 98
    iget v7, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->mode:I

    .line 99
    .line 100
    aget-object v6, v6, v7

    .line 101
    .line 102
    add-int/lit8 v7, v0, 0x3

    .line 103
    .line 104
    invoke-static {v6, v3, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    .line 106
    .line 107
    if-lez v4, :cond_1

    .line 108
    .line 109
    invoke-direct {p0, v5, v0, v1}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->handleOptions([BII)V

    .line 110
    .line 111
    .line 112
    :cond_1
    new-instance v0, Ljava/net/DatagramPacket;

    .line 113
    .line 114
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    .line 115
    .line 116
    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    .line 117
    .line 118
    invoke-direct {v0, v5, v2, v1, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 119
    .line 120
    .line 121
    return-object v0
.end method

.method public final newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 6

    .line 122
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 123
    sget-object v1, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeBytes:[[B

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->mode:I

    aget-object v2, v1, v2

    array-length v2, v2

    const/4 v3, 0x0

    .line 124
    aput-byte v3, p2, v3

    .line 125
    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->type:I

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, p2, v5

    .line 126
    iget-object v4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->fileName:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v3, p2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v0, 0x2

    .line 127
    aput-byte v3, p2, v4

    .line 128
    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->mode:I

    aget-object v1, v1, v4

    add-int/lit8 v4, v0, 0x3

    invoke-static {v1, v3, p2, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    invoke-direct {p0, p2, v0, v2}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->handleOptions([BII)V

    .line 130
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 131
    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 132
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x3

    .line 133
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    return-object p1
.end method
