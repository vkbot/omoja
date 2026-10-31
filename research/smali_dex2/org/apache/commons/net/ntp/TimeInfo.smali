.class public Lorg/apache/commons/net/ntp/TimeInfo;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delayMillis:Ljava/lang/Long;

.field private detailsComputed:Z

.field private final message:Lorg/apache/commons/net/ntp/NtpV3Packet;

.field private offsetMillis:Ljava/lang/Long;

.field private final returnTimeMillis:J


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;J)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 27
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/ntp/NtpV3Packet;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 26
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/ntp/NtpV3Packet;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_11

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/apache/commons/net/ntp/TimeInfo;->returnTimeMillis:J

    .line 7
    .line 8
    iput-object p1, p0, Lorg/apache/commons/net/ntp/TimeInfo;->message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/apache/commons/net/ntp/TimeInfo;->comments:Ljava/util/List;

    .line 11
    .line 12
    if-eqz p5, :cond_10

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/TimeInfo;->computeDetails()V

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void

    .line 18
    :cond_11
    const-string p1, "message cannot be null"

    .line 19
    .line 20
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    throw p1
.end method

.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JZ)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    .line 25
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public addComment(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->comments:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->comments:Ljava/util/List;

    .line 11
    .line 12
    :cond_b
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->comments:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public computeDetails()V
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->detailsComputed:Z

    .line 4
    .line 5
    if-eqz v1, :cond_8

    .line 6
    .line 7
    goto/16 :goto_101

    .line 8
    .line 9
    :cond_8
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->detailsComputed:Z

    .line 11
    .line 12
    iget-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->comments:Ljava/util/List;

    .line 13
    .line 14
    if-nez v1, :cond_16

    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->comments:Ljava/util/List;

    .line 22
    .line 23
    :cond_16
    iget-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 24
    .line 25
    invoke-interface {v1}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getOriginateTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    iget-object v4, v0, Lorg/apache/commons/net/ntp/TimeInfo;->message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 34
    .line 35
    invoke-interface {v4}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getReceiveTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    iget-object v7, v0, Lorg/apache/commons/net/ntp/TimeInfo;->message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 44
    .line 45
    invoke-interface {v7}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getTransmitTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v7}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v8

    .line 53
    invoke-virtual {v1}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v10

    .line 57
    const-wide/16 v12, 0x0

    .line 58
    .line 59
    cmp-long v1, v10, v12

    .line 60
    .line 61
    if-nez v1, :cond_5f

    .line 62
    .line 63
    invoke-virtual {v7}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    cmp-long v1, v1, v12

    .line 68
    .line 69
    if-eqz v1, :cond_57

    .line 70
    .line 71
    iget-wide v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->returnTimeMillis:J

    .line 72
    .line 73
    sub-long/2addr v8, v1

    .line 74
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iput-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->offsetMillis:Ljava/lang/Long;

    .line 79
    .line 80
    iget-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->comments:Ljava/util/List;

    .line 81
    .line 82
    const-string v2, "Error: zero orig time -- cannot compute delay"

    .line 83
    .line 84
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_57
    iget-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->comments:Ljava/util/List;

    .line 89
    .line 90
    const-string v2, "Error: zero orig time -- cannot compute delay/offset"

    .line 91
    .line 92
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_5f
    invoke-virtual {v4}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    .line 97
    .line 98
    .line 99
    move-result-wide v10

    .line 100
    cmp-long v1, v10, v12

    .line 101
    .line 102
    const-string v10, "Error: OrigTime > DestRcvTime"

    .line 103
    .line 104
    if-eqz v1, :cond_c6

    .line 105
    .line 106
    invoke-virtual {v7}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    .line 107
    .line 108
    .line 109
    move-result-wide v14

    .line 110
    cmp-long v1, v14, v12

    .line 111
    .line 112
    if-nez v1, :cond_72

    .line 113
    .line 114
    goto :goto_c6

    .line 115
    :cond_72
    iget-wide v14, v0, Lorg/apache/commons/net/ntp/TimeInfo;->returnTimeMillis:J

    .line 116
    .line 117
    sub-long/2addr v14, v2

    .line 118
    cmp-long v1, v8, v5

    .line 119
    .line 120
    if-gez v1, :cond_81

    .line 121
    .line 122
    iget-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->comments:Ljava/util/List;

    .line 123
    .line 124
    const-string v4, "Error: xmitTime < rcvTime"

    .line 125
    .line 126
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_a5

    .line 130
    :cond_81
    sub-long v16, v8, v5

    .line 131
    .line 132
    cmp-long v1, v16, v14

    .line 133
    .line 134
    if-gtz v1, :cond_8a

    .line 135
    .line 136
    sub-long v12, v14, v16

    .line 137
    .line 138
    goto :goto_a6

    .line 139
    :cond_8a
    sub-long v16, v16, v14

    .line 140
    .line 141
    const-wide/16 v18, 0x1

    .line 142
    .line 143
    cmp-long v1, v16, v18

    .line 144
    .line 145
    if-nez v1, :cond_9e

    .line 146
    .line 147
    cmp-long v1, v14, v12

    .line 148
    .line 149
    if-eqz v1, :cond_a5

    .line 150
    .line 151
    iget-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->comments:Ljava/util/List;

    .line 152
    .line 153
    const-string v4, "Info: processing time > total network time by 1 ms -> assume zero delay"

    .line 154
    .line 155
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_a6

    .line 159
    :cond_9e
    iget-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->comments:Ljava/util/List;

    .line 160
    .line 161
    const-string v4, "Warning: processing time > total network time"

    .line 162
    .line 163
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    :cond_a5
    :goto_a5
    move-wide v12, v14

    .line 167
    :goto_a6
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iput-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->delayMillis:Ljava/lang/Long;

    .line 172
    .line 173
    iget-wide v11, v0, Lorg/apache/commons/net/ntp/TimeInfo;->returnTimeMillis:J

    .line 174
    .line 175
    cmp-long v1, v2, v11

    .line 176
    .line 177
    if-lez v1, :cond_b7

    .line 178
    .line 179
    iget-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->comments:Ljava/util/List;

    .line 180
    .line 181
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    :cond_b7
    sub-long/2addr v5, v2

    .line 185
    add-long/2addr v5, v8

    .line 186
    iget-wide v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->returnTimeMillis:J

    .line 187
    .line 188
    sub-long/2addr v5, v1

    .line 189
    const-wide/16 v1, 0x2

    .line 190
    .line 191
    div-long/2addr v5, v1

    .line 192
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iput-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->offsetMillis:Ljava/lang/Long;

    .line 197
    .line 198
    return-void

    .line 199
    :cond_c6
    :goto_c6
    iget-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->comments:Ljava/util/List;

    .line 200
    .line 201
    const-string v11, "Warning: zero rcvNtpTime or xmitNtpTime"

    .line 202
    .line 203
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    iget-wide v14, v0, Lorg/apache/commons/net/ntp/TimeInfo;->returnTimeMillis:J

    .line 207
    .line 208
    cmp-long v1, v2, v14

    .line 209
    .line 210
    if-lez v1, :cond_d9

    .line 211
    .line 212
    iget-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->comments:Ljava/util/List;

    .line 213
    .line 214
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_e0

    .line 218
    :cond_d9
    sub-long/2addr v14, v2

    .line 219
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iput-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->delayMillis:Ljava/lang/Long;

    .line 224
    .line 225
    :goto_e0
    invoke-virtual {v4}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    .line 226
    .line 227
    .line 228
    move-result-wide v10

    .line 229
    cmp-long v1, v10, v12

    .line 230
    .line 231
    if-eqz v1, :cond_f0

    .line 232
    .line 233
    sub-long/2addr v5, v2

    .line 234
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    iput-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->offsetMillis:Ljava/lang/Long;

    .line 239
    .line 240
    return-void

    .line 241
    :cond_f0
    invoke-virtual {v7}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    .line 242
    .line 243
    .line 244
    move-result-wide v1

    .line 245
    cmp-long v1, v1, v12

    .line 246
    .line 247
    if-eqz v1, :cond_101

    .line 248
    .line 249
    iget-wide v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->returnTimeMillis:J

    .line 250
    .line 251
    sub-long/2addr v8, v1

    .line 252
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    iput-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->offsetMillis:Ljava/lang/Long;

    .line 257
    .line 258
    :cond_101
    :goto_101
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_27

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_12

    .line 17
    .line 18
    goto :goto_27

    .line 19
    :cond_12
    check-cast p1, Lorg/apache/commons/net/ntp/TimeInfo;

    .line 20
    .line 21
    iget-wide v2, p0, Lorg/apache/commons/net/ntp/TimeInfo;->returnTimeMillis:J

    .line 22
    .line 23
    iget-wide v4, p1, Lorg/apache/commons/net/ntp/TimeInfo;->returnTimeMillis:J

    .line 24
    .line 25
    cmp-long v2, v2, v4

    .line 26
    .line 27
    if-nez v2, :cond_27

    .line 28
    .line 29
    iget-object v2, p0, Lorg/apache/commons/net/ntp/TimeInfo;->message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 30
    .line 31
    iget-object p1, p1, Lorg/apache/commons/net/ntp/TimeInfo;->message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_27

    .line 38
    .line 39
    return v0

    .line 40
    :cond_27
    :goto_27
    return v1
.end method

.method public getAddress()Ljava/net/InetAddress;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getDatagramPacket()Ljava/net/DatagramPacket;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_a
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getComments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->comments:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDelay()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->delayMillis:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Lorg/apache/commons/net/ntp/NtpV3Packet;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOffset()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->offsetMillis:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReturnTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->returnTimeMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->returnTimeMillis:J

    .line 2
    .line 3
    long-to-int v0, v0

    .line 4
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/net/ntp/TimeInfo;->message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v1, v0

    .line 13
    return v1
.end method
