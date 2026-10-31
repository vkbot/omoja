.class public final Le1/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public static a(La6/a;)Lcom/example/navistart/cores/HUDMassageObj;
    .registers 7

    .line 1
    iget v0, p0, La6/a;->b:I

    .line 2
    .line 3
    iget v1, p0, La6/a;->c:I

    .line 4
    .line 5
    iget-boolean v2, p0, La6/a;->a:Z

    .line 6
    .line 7
    const-string v3, " "

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v2, :cond_63

    .line 11
    .line 12
    if-lez v0, :cond_63

    .line 13
    .line 14
    new-instance v2, Lcom/example/navistart/cores/HUDMassageObj;

    .line 15
    .line 16
    invoke-direct {v2}, Lcom/example/navistart/cores/HUDMassageObj;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    iput-object v5, v2, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 22
    .line 23
    sget-object v5, Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;->ARAD:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 24
    .line 25
    iput-object v5, v2, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 26
    .line 27
    sget-object v5, Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;->HUDSPEED:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 28
    .line 29
    iput-object v5, v2, Lcom/example/navistart/cores/HUDMassageObj;->aradarSenderType:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 30
    .line 31
    const/16 v5, 0xe

    .line 32
    .line 33
    iput v5, v2, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 34
    .line 35
    iput v0, v2, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 36
    .line 37
    if-lez v1, :cond_28

    .line 38
    .line 39
    mul-int/lit16 v4, v1, 0x3e8

    .line 40
    .line 41
    :cond_28
    iput v4, v2, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 42
    .line 43
    iget-object v0, p0, La6/a;->e:Ljava/io/Serializable;

    .line 44
    .line 45
    check-cast v0, Ljava/lang/String;

    .line 46
    .line 47
    iget-object p0, p0, La6/a;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Ljava/lang/String;

    .line 50
    .line 51
    if-lez v1, :cond_4e

    .line 52
    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x4

    .line 62
    new-array v0, v0, [B

    .line 63
    .line 64
    fill-array-data v0, :array_82

    .line 65
    .line 66
    .line 67
    const/16 v3, 0x8

    .line 68
    .line 69
    new-array v3, v3, [B

    .line 70
    .line 71
    fill-array-data v3, :array_88

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v3, p0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    goto :goto_5d

    .line 79
    :cond_4e
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_56

    .line 84
    .line 85
    move-object v3, p0

    .line 86
    goto :goto_5d

    .line 87
    :cond_56
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-nez p0, :cond_5d

    .line 92
    .line 93
    move-object v3, v0

    .line 94
    :cond_5d
    :goto_5d
    iput-object v3, v2, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Lcom/example/navistart/cores/HUDMassageObj;->setspeedlimit(I)V

    .line 97
    .line 98
    .line 99
    return-object v2

    .line 100
    :cond_63
    new-instance p0, Lcom/example/navistart/cores/HUDMassageObj;

    .line 101
    .line 102
    invoke-direct {p0}, Lcom/example/navistart/cores/HUDMassageObj;-><init>()V

    .line 103
    .line 104
    .line 105
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 108
    .line 109
    sget-object v0, Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;->ARAD:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 110
    .line 111
    iput-object v0, p0, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 112
    .line 113
    sget-object v0, Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;->HUDSPEED:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 114
    .line 115
    iput-object v0, p0, Lcom/example/navistart/cores/HUDMassageObj;->aradarSenderType:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 116
    .line 117
    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 119
    .line 120
    iput v4, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 121
    .line 122
    iput v4, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 123
    .line 124
    iput-object v3, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p0, v4}, Lcom/example/navistart/cores/HUDMassageObj;->setspeedlimit(I)V

    .line 127
    .line 128
    .line 129
    return-object p0

    .line 130
    nop

    .line 131
    :array_82
    .array-data 1
        -0x47t
        -0x17t
        0x22t
        0x39t
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_88
    .array-data 1
        -0x2et
        -0x7ct
        0xdt
        0x51t
        0x46t
        -0x79t
        -0x19t
        0x4ft
    .end array-data
.end method
