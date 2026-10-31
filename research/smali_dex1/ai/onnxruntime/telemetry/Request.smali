.class Lai/onnxruntime/telemetry/Request;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lai/onnxruntime/telemetry/HttpClientRequest;


# instance fields
.field private m_body:[B

.field private m_connection:Ljava/net/HttpURLConnection;

.field private final m_parent:Lai/onnxruntime/telemetry/HttpClient;

.field private m_request_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lai/onnxruntime/telemetry/HttpClient;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lai/onnxruntime/telemetry/HttpClientRequest$Headers;)V
    .registers 7
    .param p1    # Lai/onnxruntime/telemetry/HttpClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lai/onnxruntime/telemetry/HttpClientRequest$Headers;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lai/onnxruntime/telemetry/Request;->m_parent:Lai/onnxruntime/telemetry/HttpClient;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lai/onnxruntime/telemetry/HttpClient;->newUrl(Ljava/lang/String;)Ljava/net/URL;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 15
    .line 16
    iput-object p1, p0, Lai/onnxruntime/telemetry/Request;->m_connection:Ljava/net/HttpURLConnection;

    .line 17
    .line 18
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p4, p0, Lai/onnxruntime/telemetry/Request;->m_body:[B

    .line 22
    .line 23
    array-length p1, p4

    .line 24
    if-lez p1, :cond_25

    .line 25
    .line 26
    iget-object p1, p0, Lai/onnxruntime/telemetry/Request;->m_connection:Ljava/net/HttpURLConnection;

    .line 27
    .line 28
    array-length p2, p4

    .line 29
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lai/onnxruntime/telemetry/Request;->m_connection:Ljava/net/HttpURLConnection;

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 36
    .line 37
    .line 38
    :cond_25
    iput-object p5, p0, Lai/onnxruntime/telemetry/Request;->m_request_id:Ljava/lang/String;

    .line 39
    .line 40
    :goto_27
    invoke-virtual {p6}, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3b

    .line 45
    .line 46
    invoke-virtual {p6}, Lai/onnxruntime/telemetry/HttpClientRequest$Headers;->next()Lai/onnxruntime/telemetry/HttpClientRequest$HeaderEntry;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p2, p0, Lai/onnxruntime/telemetry/Request;->m_connection:Ljava/net/HttpURLConnection;

    .line 51
    .line 52
    iget-object p3, p1, Lai/onnxruntime/telemetry/HttpClientRequest$HeaderEntry;->key:Ljava/lang/String;

    .line 53
    .line 54
    iget-object p1, p1, Lai/onnxruntime/telemetry/HttpClientRequest$HeaderEntry;->value:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p2, p3, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_27

    .line 60
    :cond_3b
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    new-array v2, v0, [B

    .line 5
    .line 6
    :try_start_5
    iget-object v3, p0, Lai/onnxruntime/telemetry/Request;->m_body:[B

    .line 7
    .line 8
    array-length v3, v3

    .line 9
    if-lez v3, :cond_19

    .line 10
    .line 11
    iget-object v3, p0, Lai/onnxruntime/telemetry/Request;->m_connection:Ljava/net/HttpURLConnection;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lai/onnxruntime/telemetry/Request;->m_body:[B

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 20
    .line 21
    .line 22
    goto :goto_19

    .line 23
    :catchall_16
    move-exception v0

    .line 24
    goto/16 :goto_cf

    .line 25
    .line 26
    :cond_19
    :goto_19
    iget-object v3, p0, Lai/onnxruntime/telemetry/Request;->m_connection:Ljava/net/HttpURLConnection;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 29
    .line 30
    .line 31
    move-result v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_d5
    .catchall {:try_start_5 .. :try_end_1f} :catchall_16

    .line 32
    :try_start_1f
    iget-object v4, p0, Lai/onnxruntime/telemetry/Request;->m_connection:Ljava/net/HttpURLConnection;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    new-instance v5, Ljava/util/Vector;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    :cond_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_6a

    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Ljava/util/Map$Entry;

    .line 62
    .line 63
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    if-eqz v7, :cond_32

    .line 68
    .line 69
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    check-cast v7, Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    :goto_4e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_32

    .line 84
    .line 85
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    check-cast v8, Ljava/lang/String;

    .line 90
    .line 91
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    check-cast v9, Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v5, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_4e

    .line 104
    :catch_67
    move v0, v3

    .line 105
    goto/16 :goto_d5

    .line 106
    .line 107
    :cond_6a
    invoke-virtual {v5, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, [Ljava/lang/String;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_70} :catch_67
    .catchall {:try_start_1f .. :try_end_70} :catchall_16

    .line 112
    .line 113
    const/16 v1, 0x12c

    .line 114
    .line 115
    if-lt v3, v1, :cond_83

    .line 116
    .line 117
    :try_start_74
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 118
    .line 119
    iget-object v5, p0, Lai/onnxruntime/telemetry/Request;->m_connection:Ljava/net/HttpURLConnection;

    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 126
    .line 127
    .line 128
    goto :goto_8e

    .line 129
    :catch_80
    move v0, v3

    .line 130
    move-object v1, v4

    .line 131
    goto :goto_d5

    .line 132
    :cond_83
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 133
    .line 134
    iget-object v5, p0, Lai/onnxruntime/telemetry/Request;->m_connection:Ljava/net/HttpURLConnection;

    .line 135
    .line 136
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 141
    .line 142
    .line 143
    :goto_8e
    const/16 v5, 0x400

    .line 144
    .line 145
    new-array v6, v5, [B

    .line 146
    .line 147
    new-instance v7, Ljava/util/Vector;

    .line 148
    .line 149
    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 150
    .line 151
    .line 152
    move v8, v0

    .line 153
    :cond_98
    :goto_98
    invoke-virtual {v1, v6, v0, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    if-gez v9, :cond_c4

    .line 158
    .line 159
    new-array v2, v8, [B

    .line 160
    .line 161
    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    move v5, v0

    .line 166
    :cond_a5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_be

    .line 171
    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    check-cast v6, [B

    .line 177
    .line 178
    array-length v7, v6

    .line 179
    move v8, v0

    .line 180
    :goto_b3
    if-ge v8, v7, :cond_a5

    .line 181
    .line 182
    aget-byte v9, v6, v8

    .line 183
    .line 184
    aput-byte v9, v2, v5
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_b9} :catch_80
    .catchall {:try_start_74 .. :try_end_b9} :catchall_16

    .line 185
    .line 186
    add-int/lit8 v5, v5, 0x1

    .line 187
    .line 188
    add-int/lit8 v8, v8, 0x1

    .line 189
    .line 190
    goto :goto_b3

    .line 191
    :cond_be
    iget-object v0, p0, Lai/onnxruntime/telemetry/Request;->m_connection:Ljava/net/HttpURLConnection;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 194
    .line 195
    .line 196
    goto :goto_dc

    .line 197
    :cond_c4
    if-lez v9, :cond_98

    .line 198
    .line 199
    :try_start_c6
    invoke-static {v6, v0, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    invoke-virtual {v7, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cd} :catch_80
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_16

    .line 204
    .line 205
    .line 206
    add-int/2addr v8, v9

    .line 207
    goto :goto_98

    .line 208
    :goto_cf
    iget-object v1, p0, Lai/onnxruntime/telemetry/Request;->m_connection:Ljava/net/HttpURLConnection;

    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 211
    .line 212
    .line 213
    throw v0

    .line 214
    :catch_d5
    :goto_d5
    iget-object v3, p0, Lai/onnxruntime/telemetry/Request;->m_connection:Ljava/net/HttpURLConnection;

    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 217
    .line 218
    .line 219
    move v3, v0

    .line 220
    move-object v4, v1

    .line 221
    :goto_dc
    iget-object v0, p0, Lai/onnxruntime/telemetry/Request;->m_parent:Lai/onnxruntime/telemetry/HttpClient;

    .line 222
    .line 223
    iget-object v1, p0, Lai/onnxruntime/telemetry/Request;->m_request_id:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v0, v1, v3, v4, v2}, Lai/onnxruntime/telemetry/HttpClient;->dispatchCallback(Ljava/lang/String;I[Ljava/lang/Object;[B)V

    .line 226
    .line 227
    .line 228
    return-void
.end method
