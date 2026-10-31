.class public Lcom/example/navistart/cores/HUDMassageObj;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;,
        Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;
    }
.end annotation


# instance fields
.field public AradarOn:Ljava/lang/Boolean;

.field public NaviOn:Ljava/lang/Boolean;

.field public aradarSenderType:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

.field bi:Ljava/lang/Boolean;

.field public hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

.field private speedlimit:I

.field public v_mCurRoad:Ljava/lang/String;

.field public v_mNextRoad:Ljava/lang/String;

.field public v_mRemainDis:I

.field v_mRemainTime:I

.field public v_mTurnDis:I

.field v_mTurnTime:I

.field public v_mTurnType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/example/navistart/cores/HUDMassageObj;->NaviOn:Ljava/lang/Boolean;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/example/navistart/cores/HUDMassageObj;->bi:Ljava/lang/Boolean;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 14
    .line 15
    iput v0, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 16
    .line 17
    iput v0, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnTime:I

    .line 18
    .line 19
    iput v0, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 20
    .line 21
    iput v0, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainTime:I

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    iput-object v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mCurRoad:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 28
    .line 29
    iput v0, p0, Lcom/example/navistart/cores/HUDMassageObj;->speedlimit:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public copy(Lcom/example/navistart/cores/HUDMassageObj;)Lcom/example/navistart/cores/HUDMassageObj;
    .locals 2

    .line 1
    new-instance v0, Lcom/example/navistart/cores/HUDMassageObj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/example/navistart/cores/HUDMassageObj;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->NaviOn:Ljava/lang/Boolean;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->NaviOn:Ljava/lang/Boolean;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->bi:Ljava/lang/Boolean;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->bi:Ljava/lang/Boolean;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 21
    .line 22
    iget-object v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->aradarSenderType:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->aradarSenderType:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 25
    .line 26
    iget v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 27
    .line 28
    iput v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 29
    .line 30
    iget v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 31
    .line 32
    iput v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 33
    .line 34
    iget v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnTime:I

    .line 35
    .line 36
    iput v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnTime:I

    .line 37
    .line 38
    iget v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 39
    .line 40
    iput v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 41
    .line 42
    iget v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainTime:I

    .line 43
    .line 44
    iput v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainTime:I

    .line 45
    .line 46
    iget-object v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mCurRoad:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mCurRoad:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 53
    .line 54
    iget p1, p1, Lcom/example/navistart/cores/HUDMassageObj;->speedlimit:I

    .line 55
    .line 56
    iput p1, v0, Lcom/example/navistart/cores/HUDMassageObj;->speedlimit:I

    .line 57
    .line 58
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    check-cast p1, Lcom/example/navistart/cores/HUDMassageObj;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->NaviOn:Ljava/lang/Boolean;

    .line 8
    .line 9
    iget-object v2, p1, Lcom/example/navistart/cores/HUDMassageObj;->NaviOn:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 18
    .line 19
    iget-object v2, p1, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->bi:Ljava/lang/Boolean;

    .line 28
    .line 29
    iget-object v2, p1, Lcom/example/navistart/cores/HUDMassageObj;->bi:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 38
    .line 39
    iget-object v2, p1, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->aradarSenderType:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 44
    .line 45
    iget-object v2, p1, Lcom/example/navistart/cores/HUDMassageObj;->aradarSenderType:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 46
    .line 47
    if-ne v1, v2, :cond_1

    .line 48
    .line 49
    iget v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 50
    .line 51
    iget v2, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 52
    .line 53
    if-ne v1, v2, :cond_1

    .line 54
    .line 55
    iget v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 56
    .line 57
    iget v2, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 58
    .line 59
    if-ne v1, v2, :cond_1

    .line 60
    .line 61
    iget v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnTime:I

    .line 62
    .line 63
    iget v2, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnTime:I

    .line 64
    .line 65
    if-ne v1, v2, :cond_1

    .line 66
    .line 67
    iget v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 68
    .line 69
    iget v2, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 70
    .line 71
    if-ne v1, v2, :cond_1

    .line 72
    .line 73
    iget v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainTime:I

    .line 74
    .line 75
    iget v2, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainTime:I

    .line 76
    .line 77
    if-ne v1, v2, :cond_1

    .line 78
    .line 79
    iget v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->speedlimit:I

    .line 80
    .line 81
    iget v2, p1, Lcom/example/navistart/cores/HUDMassageObj;->speedlimit:I

    .line 82
    .line 83
    if-ne v1, v2, :cond_1

    .line 84
    .line 85
    iget-object v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mCurRoad:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v2, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mCurRoad:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    iget-object v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_1

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    :cond_1
    return v0
.end method

.method public getSpeedlimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/example/navistart/cores/HUDMassageObj;->speedlimit:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/example/navistart/cores/HUDMassageObj;->NaviOn:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/example/navistart/cores/HUDMassageObj;->bi:Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/example/navistart/cores/HUDMassageObj;->aradarSenderType:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 10
    .line 11
    iget v5, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 12
    .line 13
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    iget v6, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 18
    .line 19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    iget v7, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnTime:I

    .line 24
    .line 25
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    iget v8, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 30
    .line 31
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    iget v9, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainTime:I

    .line 36
    .line 37
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    iget-object v10, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mCurRoad:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v11, p0, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 44
    .line 45
    iget v12, p0, Lcom/example/navistart/cores/HUDMassageObj;->speedlimit:I

    .line 46
    .line 47
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    filled-new-array/range {v0 .. v12}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    return v0
.end method

.method public setspeedlimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/example/navistart/cores/HUDMassageObj;->speedlimit:I

    .line 2
    .line 3
    return-void
.end method
