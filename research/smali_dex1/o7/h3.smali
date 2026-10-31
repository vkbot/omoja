.class public final Lo7/h3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final d:Ljava/util/logging/Logger;

.field public static final e:Lo7/u2;

.field public static final f:Lo7/u2;


# instance fields
.field public final a:Lo7/u2;

.field public final b:Lo7/u2;

.field public final c:Ljava/net/InetSocketAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-class v0, Lo7/h3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lo7/h3;->d:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, Lo7/u2;

    .line 14
    .line 15
    const/16 v1, 0x11

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lo7/u2;-><init>(I)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lo7/h3;->e:Lo7/u2;

    .line 21
    .line 22
    new-instance v0, Lo7/u2;

    .line 23
    .line 24
    const/16 v1, 0x12

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lo7/u2;-><init>(I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lo7/h3;->f:Lo7/u2;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    const-string v0, "GRPC_PROXY_EXP"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lo7/h3;->f:Lo7/u2;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lo7/h3;->a:Lo7/u2;

    .line 16
    .line 17
    sget-object v1, Lo7/h3;->e:Lo7/u2;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lo7/h3;->b:Lo7/u2;

    .line 23
    .line 24
    if-eqz v0, :cond_3f

    .line 25
    .line 26
    const-string v1, ":"

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    array-length v1, v0

    .line 34
    const/4 v2, 0x1

    .line 35
    if-le v1, v2, :cond_2b

    .line 36
    .line 37
    aget-object v1, v0, v2

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    goto :goto_2d

    .line 44
    :cond_2b
    const/16 v1, 0x50

    .line 45
    .line 46
    :goto_2d
    sget-object v2, Lo7/h3;->d:Ljava/util/logging/Logger;

    .line 47
    .line 48
    const-string v3, "Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM."

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    aget-object v0, v0, v3

    .line 57
    .line 58
    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lo7/h3;->c:Ljava/net/InetSocketAddress;

    .line 62
    .line 63
    return-void

    .line 64
    :cond_3f
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lo7/h3;->c:Ljava/net/InetSocketAddress;

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final a(Ljava/net/InetSocketAddress;)Ln7/u;
    .registers 13

    .line 1
    const/4 v1, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 3
    .line 4
    goto :goto_54

    .line 5
    :cond_4
    iget-object v0, p0, Lo7/h3;->c:Ljava/net/InetSocketAddress;

    .line 6
    .line 7
    if-eqz v0, :cond_e

    .line 8
    .line 9
    new-instance v2, Ln7/u;

    .line 10
    .line 11
    invoke-direct {v2, v0, p1, v1, v1}, Ln7/u;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v2

    .line 15
    :cond_e
    sget-object v2, Lo7/h3;->d:Ljava/util/logging/Logger;

    .line 16
    .line 17
    :try_start_10
    invoke-static {p1}, Lo7/y0;->d(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d3

    .line 21
    :try_start_14
    new-instance v3, Ljava/net/URI;

    .line 22
    .line 23
    const-string v4, "https"

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    invoke-direct/range {v3 .. v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/net/URISyntaxException; {:try_start_14 .. :try_end_23} :catch_c9

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lo7/h3;->a:Lo7/u2;

    .line 37
    .line 38
    invoke-virtual {v0}, Lo7/u2;->r()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/net/ProxySelector;

    .line 43
    .line 44
    if-nez v0, :cond_35

    .line 45
    .line 46
    sget-object p1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 47
    .line 48
    const-string v0, "proxy selector is null, so continuing without proxy lookup"

    .line 49
    .line 50
    invoke-virtual {v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_35
    invoke-virtual {v0, v3}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v4, 0x1

    .line 63
    if-le v3, v4, :cond_45

    .line 64
    .line 65
    const-string v3, "More than 1 proxy detected, gRPC will select the first one"

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_45
    const/4 v3, 0x0

    .line 71
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/net/Proxy;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 82
    .line 83
    if-ne v3, v4, :cond_55

    .line 84
    .line 85
    :goto_54
    return-object v1

    .line 86
    :cond_55
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 91
    .line 92
    invoke-static {v0}, Lo7/y0;->d(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    const-string v6, "https"

    .line 105
    .line 106
    iget-object v7, p0, Lo7/h3;->b:Lo7/u2;

    .line 107
    .line 108
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    :try_start_6e
    new-instance v7, Ljava/net/URL;

    .line 112
    .line 113
    const-string v8, ""

    .line 114
    .line 115
    invoke-direct {v7, v6, v3, v5, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_75
    .catch Ljava/net/MalformedURLException; {:try_start_6e .. :try_end_75} :catch_77

    .line 116
    .line 117
    .line 118
    move-object v9, v7

    .line 119
    goto :goto_83

    .line 120
    :catch_77
    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 121
    .line 122
    const-string v8, "failed to create URL for Authenticator: {0} {1}"

    .line 123
    .line 124
    filled-new-array {v6, v3}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-virtual {v2, v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    move-object v9, v1

    .line 132
    :goto_83
    sget-object v10, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 133
    .line 134
    const-string v7, ""

    .line 135
    .line 136
    const/4 v8, 0x0

    .line 137
    invoke-static/range {v3 .. v10}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_a4

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-direct {v4, v3, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 162
    .line 163
    .line 164
    move-object v0, v4

    .line 165
    :cond_a4
    sget v3, Ln7/u;->f:I

    .line 166
    .line 167
    if-nez v2, :cond_af

    .line 168
    .line 169
    new-instance v2, Ln7/u;

    .line 170
    .line 171
    invoke-direct {v2, v0, p1, v1, v1}, Ln7/u;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :goto_ad
    move-object v1, v2

    .line 175
    goto :goto_dc

    .line 176
    :cond_af
    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getPassword()[C

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    if-nez v4, :cond_ba

    .line 185
    .line 186
    goto :goto_c3

    .line 187
    :cond_ba
    new-instance v1, Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getPassword()[C

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 194
    .line 195
    .line 196
    :goto_c3
    new-instance v2, Ln7/u;

    .line 197
    .line 198
    invoke-direct {v2, v0, p1, v3, v1}, Ln7/u;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto :goto_ad

    .line 202
    :catch_c9
    move-exception v0

    .line 203
    move-object p1, v0

    .line 204
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 205
    .line 206
    const-string v3, "Failed to construct URI for proxy lookup, proceeding without proxy"

    .line 207
    .line 208
    invoke-virtual {v2, v0, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .line 210
    .line 211
    goto :goto_dc

    .line 212
    :catchall_d3
    move-exception v0

    .line 213
    move-object p1, v0

    .line 214
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 215
    .line 216
    const-string v3, "Failed to get host for proxy lookup, proceeding without proxy"

    .line 217
    .line 218
    invoke-virtual {v2, v0, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    :goto_dc
    return-object v1
.end method
