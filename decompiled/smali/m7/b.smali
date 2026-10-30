.class public final synthetic Lm7/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:Lcom/woha/wifim/MainWifiManadger;


# direct methods
.method public synthetic constructor <init>(Lcom/woha/wifim/MainWifiManadger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm7/b;->a:Lcom/woha/wifim/MainWifiManadger;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lm7/b;->a:Lcom/woha/wifim/MainWifiManadger;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_6

    .line 10
    .line 11
    iget-object v1, v0, Lcom/woha/wifim/MainWifiManadger;->d:Lm7/f;

    .line 12
    .line 13
    if-eqz v1, :cond_6

    .line 14
    .line 15
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 24
    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 40
    .line 41
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 52
    .line 53
    const/16 v4, 0xe

    .line 54
    .line 55
    new-array v4, v4, [B

    .line 56
    .line 57
    fill-array-data v4, :array_0

    .line 58
    .line 59
    .line 60
    const/16 v5, 0x8

    .line 61
    .line 62
    new-array v5, v5, [B

    .line 63
    .line 64
    fill-array-data v5, :array_1

    .line 65
    .line 66
    .line 67
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_1

    .line 76
    .line 77
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 84
    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    iget v4, v2, Landroid/net/wifi/ScanResult;->level:I

    .line 88
    .line 89
    iget v3, v3, Landroid/net/wifi/ScanResult;->level:I

    .line 90
    .line 91
    if-le v4, v3, :cond_1

    .line 92
    .line 93
    :cond_2
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 94
    .line 95
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    .line 107
    .line 108
    iput-object p1, v0, Lcom/woha/wifim/MainWifiManadger;->c:Ljava/util/ArrayList;

    .line 109
    .line 110
    new-instance v1, Landroidx/constraintlayout/core/utils/a;

    .line 111
    .line 112
    const/16 v2, 0xb

    .line 113
    .line 114
    invoke-direct {v1, v2}, Landroidx/constraintlayout/core/utils/a;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 118
    .line 119
    .line 120
    :try_start_0
    iget-object p1, v0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_4

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :catch_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 133
    .line 134
    :goto_2
    iget-object v1, v0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    goto :goto_3

    .line 147
    :cond_5
    const-string v1, ""

    .line 148
    .line 149
    :goto_3
    iget-object v2, v0, Lcom/woha/wifim/MainWifiManadger;->d:Lm7/f;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/woha/wifim/MainWifiManadger;->c:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v2, v0, p1, v1}, Lm7/f;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_6
    return-void

    .line 157
    :array_0
    .array-data 1
        -0x3ct
        0xat
        -0x50t
        0x3ct
        0x60t
        -0xbt
        -0x5dt
        0x7bt
        -0x28t
        0xct
        -0x53t
        0x3et
        0x6at
        -0x5ct
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    nop

    .line 169
    :array_1
    .array-data 1
        -0x8t
        0x7ft
        -0x22t
        0x57t
        0xet
        -0x66t
        -0x2ct
        0x15t
    .end array-data
.end method
