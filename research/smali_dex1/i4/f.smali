.class public final Li4/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:Z

.field public b:J


# virtual methods
.method public final a()J
    .registers 5

    .line 1
    iget-boolean v0, p0, Li4/f;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Li4/f;->b:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    :goto_e
    return-wide v0
.end method

.method public final b()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Li4/f;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    const-string v2, "This stopwatch is already running."

    .line 6
    .line 7
    invoke-static {v0, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-boolean v1, p0, Li4/f;->a:Z

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Li4/f;->b:J

    .line 17
    .line 18
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 9

    .line 1
    iget-boolean v0, p0, Li4/f;->a:Z

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    iget-wide v5, p0, Li4/f;->b:J

    .line 12
    .line 13
    sub-long/2addr v3, v5

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move-wide v3, v1

    .line 16
    :goto_f
    const-wide v5, 0x4e94914f0000L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    div-long v5, v3, v5

    .line 22
    .line 23
    cmp-long v0, v5, v1

    .line 24
    .line 25
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    if-lez v0, :cond_1f

    .line 28
    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    goto :goto_5f

    .line 32
    :cond_1f
    const-wide v6, 0x34630b8a000L

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    div-long v6, v3, v6

    .line 38
    .line 39
    cmp-long v0, v6, v1

    .line 40
    .line 41
    if-lez v0, :cond_2d

    .line 42
    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 44
    .line 45
    goto :goto_5f

    .line 46
    :cond_2d
    const-wide v6, 0xdf8475800L

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    div-long v6, v3, v6

    .line 52
    .line 53
    cmp-long v0, v6, v1

    .line 54
    .line 55
    if-lez v0, :cond_3b

    .line 56
    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 58
    .line 59
    goto :goto_5f

    .line 60
    :cond_3b
    const-wide/32 v6, 0x3b9aca00

    .line 61
    .line 62
    .line 63
    div-long v6, v3, v6

    .line 64
    .line 65
    cmp-long v0, v6, v1

    .line 66
    .line 67
    if-lez v0, :cond_47

    .line 68
    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 70
    .line 71
    goto :goto_5f

    .line 72
    :cond_47
    const-wide/32 v6, 0xf4240

    .line 73
    .line 74
    .line 75
    div-long v6, v3, v6

    .line 76
    .line 77
    cmp-long v0, v6, v1

    .line 78
    .line 79
    if-lez v0, :cond_53

    .line 80
    .line 81
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 82
    .line 83
    goto :goto_5f

    .line 84
    :cond_53
    const-wide/16 v6, 0x3e8

    .line 85
    .line 86
    div-long v6, v3, v6

    .line 87
    .line 88
    cmp-long v0, v6, v1

    .line 89
    .line 90
    if-lez v0, :cond_5e

    .line 91
    .line 92
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 93
    .line 94
    goto :goto_5f

    .line 95
    :cond_5e
    move-object v0, v5

    .line 96
    :goto_5f
    long-to-double v1, v3

    .line 97
    const-wide/16 v3, 0x1

    .line 98
    .line 99
    invoke-virtual {v5, v3, v4, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    long-to-double v3, v3

    .line 104
    div-double/2addr v1, v3

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    sget v4, Li4/d;->a:I

    .line 111
    .line 112
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 113
    .line 114
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const-string v2, "%.4g"

    .line 123
    .line 124
    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v1, " "

    .line 132
    .line 133
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    sget-object v1, Li4/e;->a:[I

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    aget v0, v1, v0

    .line 143
    .line 144
    packed-switch v0, :pswitch_data_b4

    .line 145
    .line 146
    .line 147
    new-instance v0, Ljava/lang/AssertionError;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :pswitch_98
    const-string v0, "d"

    .line 154
    .line 155
    goto :goto_ac

    .line 156
    :pswitch_9b
    const-string v0, "h"

    .line 157
    .line 158
    goto :goto_ac

    .line 159
    :pswitch_9e
    const-string v0, "min"

    .line 160
    .line 161
    goto :goto_ac

    .line 162
    :pswitch_a1
    const-string v0, "s"

    .line 163
    .line 164
    goto :goto_ac

    .line 165
    :pswitch_a4
    const-string v0, "ms"

    .line 166
    .line 167
    goto :goto_ac

    .line 168
    :pswitch_a7
    const-string v0, "\u03bcs"

    .line 169
    .line 170
    goto :goto_ac

    .line 171
    :pswitch_aa
    const-string v0, "ns"

    .line 172
    .line 173
    :goto_ac
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0

    .line 181
    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
    .end packed-switch
.end method
