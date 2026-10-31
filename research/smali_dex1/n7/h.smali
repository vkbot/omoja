.class public final Ln7/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln7/u0;
.implements Ln7/r0;


# static fields
.field public static final c:Ln7/h;

.field public static final d:[B


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln7/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ln7/h;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ln7/h;->c:Ln7/h;

    .line 8
    .line 9
    const/16 v0, 0x10

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    fill-array-data v0, :array_12

    .line 14
    .line 15
    .line 16
    sput-object v0, Ln7/h;->d:[B

    .line 17
    .line 18
    return-void

    .line 19
    :array_12
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 55
    iput p1, p0, Ln7/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSession;)V
    .registers 7

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Ln7/h;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_12

    .line 16
    .line 17
    aget-object v0, v0, v1

    .line 18
    .line 19
    :cond_12
    :try_start_12
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_35

    .line 24
    .line 25
    aget-object p1, v0, v1
    :try_end_1a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_12 .. :try_end_1a} :catch_1b

    .line 26
    .line 27
    goto :goto_35

    .line 28
    :catch_1b
    move-exception v0

    .line 29
    sget-object v1, Ln7/x;->d:Ljava/util/logging/Logger;

    .line 30
    .line 31
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 32
    .line 33
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v4, "Peer cert not available for peerHost="

    .line 40
    .line 41
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Ln7/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_c

    .line 4
    .line 5
    .line 6
    const-string v0, "gzip"

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_8
    const-string v0, "identity"

    .line 10
    .line 11
    return-object v0

    .line 12
    nop

    .line 13
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 107
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public b(Ljava/lang/Object;)[B
    .registers 12

    .line 1
    iget v0, p0, Ln7/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_6a

    .line 4
    .line 5
    .line 6
    check-cast p1, Ln7/f1;

    .line 7
    .line 8
    iget-object p1, p1, Ln7/f1;->a:Ln7/e1;

    .line 9
    .line 10
    iget-object p1, p1, Ln7/e1;->c:[B

    .line 11
    .line 12
    return-object p1

    .line 13
    :pswitch_c
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    sget-object v0, Li4/b;->b:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x0

    .line 22
    move v1, v0

    .line 23
    :goto_16
    array-length v2, p1

    .line 24
    if-ge v1, v2, :cond_69

    .line 25
    .line 26
    aget-byte v2, p1, v1

    .line 27
    .line 28
    const/16 v3, 0x7e

    .line 29
    .line 30
    const/16 v4, 0x20

    .line 31
    .line 32
    const/16 v5, 0x25

    .line 33
    .line 34
    if-lt v2, v4, :cond_2b

    .line 35
    .line 36
    if-ge v2, v3, :cond_2b

    .line 37
    .line 38
    if-ne v2, v5, :cond_28

    .line 39
    .line 40
    goto :goto_2b

    .line 41
    :cond_28
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_16

    .line 44
    :cond_2b
    :goto_2b
    array-length v2, p1

    .line 45
    sub-int/2addr v2, v1

    .line 46
    mul-int/lit8 v2, v2, 0x3

    .line 47
    .line 48
    add-int/2addr v2, v1

    .line 49
    new-array v2, v2, [B

    .line 50
    .line 51
    if-eqz v1, :cond_37

    .line 52
    .line 53
    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    :cond_37
    move v0, v1

    .line 57
    :goto_38
    array-length v6, p1

    .line 58
    if-ge v1, v6, :cond_65

    .line 59
    .line 60
    aget-byte v6, p1, v1

    .line 61
    .line 62
    if-lt v6, v4, :cond_4a

    .line 63
    .line 64
    if-ge v6, v3, :cond_4a

    .line 65
    .line 66
    if-ne v6, v5, :cond_44

    .line 67
    .line 68
    goto :goto_4a

    .line 69
    :cond_44
    add-int/lit8 v7, v0, 0x1

    .line 70
    .line 71
    aput-byte v6, v2, v0

    .line 72
    .line 73
    move v0, v7

    .line 74
    goto :goto_62

    .line 75
    :cond_4a
    :goto_4a
    aput-byte v5, v2, v0

    .line 76
    .line 77
    add-int/lit8 v7, v0, 0x1

    .line 78
    .line 79
    shr-int/lit8 v8, v6, 0x4

    .line 80
    .line 81
    and-int/lit8 v8, v8, 0xf

    .line 82
    .line 83
    sget-object v9, Ln7/h;->d:[B

    .line 84
    .line 85
    aget-byte v8, v9, v8

    .line 86
    .line 87
    aput-byte v8, v2, v7

    .line 88
    .line 89
    add-int/lit8 v7, v0, 0x2

    .line 90
    .line 91
    and-int/lit8 v6, v6, 0xf

    .line 92
    .line 93
    aget-byte v6, v9, v6

    .line 94
    .line 95
    aput-byte v6, v2, v7

    .line 96
    .line 97
    add-int/lit8 v0, v0, 0x3

    .line 98
    .line 99
    :goto_62
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    goto :goto_38

    .line 102
    :cond_65
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    :cond_69
    return-object p1

    .line 107
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;)I
    .registers 4

    .line 1
    iget v0, p0, Ln7/h;->b:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    packed-switch v0, :pswitch_data_2a

    .line 5
    .line 6
    .line 7
    check-cast p1, Ln7/a1;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    return v1

    .line 13
    :pswitch_c
    check-cast p1, Ln7/n0;

    .line 14
    .line 15
    check-cast p1, Lp7/i;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-class p1, Lp7/i;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :try_start_19
    const-string v0, "android.app.Application"

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_22

    .line 30
    .line 31
    .line 32
    const/16 p1, 0x8

    .line 33
    .line 34
    goto :goto_23

    .line 35
    :catch_22
    const/4 p1, 0x3

    .line 36
    :goto_23
    return p1

    .line 37
    :pswitch_24
    check-cast p1, Ln7/k0;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :pswitch_data_2a
    .packed-switch 0x6
        :pswitch_24
        :pswitch_c
    .end packed-switch
.end method

.method public j(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    return-object p1
.end method

.method public k([B)Ljava/lang/Object;
    .registers 10

    .line 1
    iget v0, p0, Ln7/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_ba

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/16 v1, 0x30

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v3, :cond_13

    .line 12
    .line 13
    aget-byte v0, p1, v2

    .line 14
    .line 15
    if-ne v0, v1, :cond_13

    .line 16
    .line 17
    sget-object p1, Ln7/f1;->e:Ln7/f1;

    .line 18
    .line 19
    goto :goto_55

    .line 20
    :cond_13
    array-length v0, p1

    .line 21
    const/16 v4, 0x39

    .line 22
    .line 23
    if-eq v0, v3, :cond_29

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    if-eq v0, v5, :cond_1c

    .line 27
    .line 28
    goto :goto_42

    .line 29
    :cond_1c
    aget-byte v0, p1, v2

    .line 30
    .line 31
    if-lt v0, v1, :cond_42

    .line 32
    .line 33
    if-le v0, v4, :cond_23

    .line 34
    .line 35
    goto :goto_42

    .line 36
    :cond_23
    sub-int/2addr v0, v1

    .line 37
    mul-int/lit8 v2, v0, 0xa

    .line 38
    .line 39
    move v0, v2

    .line 40
    move v2, v3

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v0, v2

    .line 43
    :goto_2a
    aget-byte v2, p1, v2

    .line 44
    .line 45
    if-lt v2, v1, :cond_42

    .line 46
    .line 47
    if-le v2, v4, :cond_31

    .line 48
    .line 49
    goto :goto_42

    .line 50
    :cond_31
    sub-int/2addr v2, v1

    .line 51
    add-int/2addr v2, v0

    .line 52
    sget-object v0, Ln7/f1;->d:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-ge v2, v1, :cond_42

    .line 59
    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ln7/f1;

    .line 65
    .line 66
    goto :goto_55

    .line 67
    :cond_42
    :goto_42
    sget-object v0, Ln7/f1;->g:Ln7/f1;

    .line 68
    .line 69
    new-instance v1, Ljava/lang/String;

    .line 70
    .line 71
    sget-object v2, Li4/b;->a:Ljava/nio/charset/Charset;

    .line 72
    .line 73
    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 74
    .line 75
    .line 76
    const-string p1, "Unknown code "

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :goto_55
    return-object p1

    .line 87
    :pswitch_56
    const/4 v0, 0x0

    .line 88
    move v1, v0

    .line 89
    :goto_58
    array-length v2, p1

    .line 90
    if-ge v1, v2, :cond_b3

    .line 91
    .line 92
    aget-byte v2, p1, v1

    .line 93
    .line 94
    const/16 v3, 0x20

    .line 95
    .line 96
    const/16 v4, 0x25

    .line 97
    .line 98
    if-lt v2, v3, :cond_72

    .line 99
    .line 100
    const/16 v3, 0x7e

    .line 101
    .line 102
    if-ge v2, v3, :cond_72

    .line 103
    .line 104
    if-ne v2, v4, :cond_6f

    .line 105
    .line 106
    add-int/lit8 v2, v1, 0x2

    .line 107
    .line 108
    array-length v3, p1

    .line 109
    if-ge v2, v3, :cond_6f

    .line 110
    .line 111
    goto :goto_72

    .line 112
    :cond_6f
    add-int/lit8 v1, v1, 0x1

    .line 113
    .line 114
    goto :goto_58

    .line 115
    :cond_72
    :goto_72
    array-length v1, p1

    .line 116
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    move v2, v0

    .line 121
    :goto_78
    array-length v3, p1

    .line 122
    if-ge v2, v3, :cond_a3

    .line 123
    .line 124
    aget-byte v3, p1, v2

    .line 125
    .line 126
    if-ne v3, v4, :cond_9b

    .line 127
    .line 128
    add-int/lit8 v3, v2, 0x2

    .line 129
    .line 130
    array-length v5, p1

    .line 131
    if-ge v3, v5, :cond_9b

    .line 132
    .line 133
    :try_start_84
    new-instance v3, Ljava/lang/String;

    .line 134
    .line 135
    add-int/lit8 v5, v2, 0x1

    .line 136
    .line 137
    sget-object v6, Li4/b;->a:Ljava/nio/charset/Charset;

    .line 138
    .line 139
    const/4 v7, 0x2

    .line 140
    invoke-direct {v3, p1, v5, v7, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 141
    .line 142
    .line 143
    const/16 v5, 0x10

    .line 144
    .line 145
    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    int-to-byte v3, v3

    .line 150
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_98
    .catch Ljava/lang/NumberFormatException; {:try_start_84 .. :try_end_98} :catch_9b

    .line 151
    .line 152
    .line 153
    add-int/lit8 v2, v2, 0x3

    .line 154
    .line 155
    goto :goto_78

    .line 156
    :catch_9b
    :cond_9b
    aget-byte v3, p1, v2

    .line 157
    .line 158
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 159
    .line 160
    .line 161
    add-int/lit8 v2, v2, 0x1

    .line 162
    .line 163
    goto :goto_78

    .line 164
    :cond_a3
    new-instance p1, Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    sget-object v3, Li4/b;->b:Ljava/nio/charset/Charset;

    .line 175
    .line 176
    invoke-direct {p1, v2, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 177
    .line 178
    .line 179
    goto :goto_b9

    .line 180
    :cond_b3
    new-instance v1, Ljava/lang/String;

    .line 181
    .line 182
    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BI)V

    .line 183
    .line 184
    .line 185
    move-object p1, v1

    .line 186
    :goto_b9
    return-object p1

    .line 187
    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_56
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Ln7/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_e

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    const-string v0, "internal:health-check-consumer-listener"

    .line 12
    .line 13
    return-object v0

    .line 14
    nop

    .line 15
    :pswitch_data_e
    .packed-switch 0x5
        :pswitch_a
    .end packed-switch
.end method
