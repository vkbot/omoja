.class public final Lp4/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lk5/b;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lk5/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp4/c;->a:Lk5/b;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lp4/c;->b:Ljava/lang/Integer;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lp4/b;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lp4/c;->a:Lk5/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lk5/b;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    sget-object v1, Lp4/b;->g:[Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1}, Lp4/b;->a()Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lp4/b;->b(Ljava/util/HashMap;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lp4/b;->a()Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v2, "triggerEvent"

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lp4/b;->b(Ljava/util/HashMap;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    sget-object v3, Lp4/b;->h:Ljava/text/SimpleDateFormat;

    .line 36
    .line 37
    const-string v4, "experimentStartTime"

    .line 38
    .line 39
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    const-string v3, "triggerTimeoutMillis"

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v10

    .line 61
    const-string v3, "timeToLiveMillis"

    .line 62
    .line 63
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v12

    .line 73
    new-instance v5, Lp4/b;

    .line 74
    .line 75
    const-string v3, "experimentId"

    .line 76
    .line 77
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    move-object v6, v3

    .line 82
    check-cast v6, Ljava/lang/String;

    .line 83
    .line 84
    const-string v3, "variantId"

    .line 85
    .line 86
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    move-object v7, v3

    .line 91
    check-cast v7, Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_0

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Ljava/lang/String;

    .line 104
    .line 105
    :goto_0
    move-object v8, p1

    .line 106
    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    move-object p1, v0

    .line 109
    goto/16 :goto_4

    .line 110
    .line 111
    :catch_1
    move-exception v0

    .line 112
    move-object p1, v0

    .line 113
    goto/16 :goto_5

    .line 114
    .line 115
    :cond_0
    const-string p1, ""

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :goto_1
    invoke-direct/range {v5 .. v13}, Lp4/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJ)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    new-instance p1, Ljava/util/ArrayDeque;

    .line 125
    .line 126
    invoke-interface {v0}, Lk5/b;->get()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Lf5/b0;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 136
    .line 137
    invoke-direct {p1, v2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lp4/c;->b:Ljava/lang/Integer;

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    if-nez v2, :cond_1

    .line 144
    .line 145
    invoke-interface {v0}, Lk5/b;->get()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Lf5/b0;

    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iput-object v2, p0, Lp4/c;->b:Ljava/lang/Integer;

    .line 159
    .line 160
    :cond_1
    iget-object v2, p0, Lp4/c;->b:Ljava/lang/Integer;

    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    :goto_2
    if-ge v3, v4, :cond_3

    .line 171
    .line 172
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    add-int/lit8 v3, v3, 0x1

    .line 177
    .line 178
    check-cast v5, Lp4/b;

    .line 179
    .line 180
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-lt v6, v2, :cond_2

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    check-cast v6, Lr4/a;

    .line 191
    .line 192
    iget-object v6, v6, Lr4/a;->a:Ljava/lang/String;

    .line 193
    .line 194
    invoke-interface {v0}, Lk5/b;->get()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    check-cast v6, Lf5/b0;

    .line 199
    .line 200
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_2
    new-instance v6, Lr4/a;

    .line 205
    .line 206
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 207
    .line 208
    .line 209
    iget-object v7, v5, Lp4/b;->d:Ljava/util/Date;

    .line 210
    .line 211
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 212
    .line 213
    .line 214
    iget-object v7, v5, Lp4/b;->a:Ljava/lang/String;

    .line 215
    .line 216
    iput-object v7, v6, Lr4/a;->a:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v5, v5, Lp4/b;->c:Ljava/lang/String;

    .line 219
    .line 220
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 221
    .line 222
    .line 223
    invoke-interface {v0}, Lk5/b;->get()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    check-cast v5, Lf5/b0;

    .line 228
    .line 229
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v6}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_3
    return-void

    .line 237
    :goto_4
    new-instance v0, Lp4/a;

    .line 238
    .line 239
    const-string v1, "Could not process experiment: one of the durations could not be converted into a long."

    .line 240
    .line 241
    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    .line 243
    .line 244
    throw v0

    .line 245
    :goto_5
    new-instance v0, Lp4/a;

    .line 246
    .line 247
    const-string v1, "Could not process experiment: parsing experiment start time failed."

    .line 248
    .line 249
    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    .line 251
    .line 252
    throw v0

    .line 253
    :cond_4
    new-instance p1, Lp4/a;

    .line 254
    .line 255
    const-string v0, "The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies."

    .line 256
    .line 257
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw p1
.end method
