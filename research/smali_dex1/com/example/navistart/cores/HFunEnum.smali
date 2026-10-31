.class public final enum Lcom/example/navistart/cores/HFunEnum;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/example/navistart/cores/HFunEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/example/navistart/cores/HFunEnum;

.field public static final enum ID_ENERGY_RECYCLE_HIGH:Lcom/example/navistart/cores/HFunEnum;

.field public static final enum ID_ENERGY_RECYCLE_LOW:Lcom/example/navistart/cores/HFunEnum;

.field public static final enum ID_ENERGY_RECYCLE_MEDIUM:Lcom/example/navistart/cores/HFunEnum;

.field public static final enum ID_SOC_MANAGER_FORCED:Lcom/example/navistart/cores/HFunEnum;

.field public static final enum ID_SOC_MANAGER_INITIAL:Lcom/example/navistart/cores/HFunEnum;

.field public static final enum ID_SOC_MANAGER_SMART:Lcom/example/navistart/cores/HFunEnum;

.field public static final enum ID_VCU_DISCHARGE_SWITCH:Lcom/example/navistart/cores/HFunEnum;

.field public static final enum ID_VCU_ELECTRONIC_LOCKING_UNLOCKS:Lcom/example/navistart/cores/HFunEnum;


# direct methods
.method private static synthetic $values()[Lcom/example/navistart/cores/HFunEnum;
    .registers 8

    .line 1
    sget-object v0, Lcom/example/navistart/cores/HFunEnum;->ID_ENERGY_RECYCLE_LOW:Lcom/example/navistart/cores/HFunEnum;

    .line 2
    .line 3
    sget-object v1, Lcom/example/navistart/cores/HFunEnum;->ID_ENERGY_RECYCLE_MEDIUM:Lcom/example/navistart/cores/HFunEnum;

    .line 4
    .line 5
    sget-object v2, Lcom/example/navistart/cores/HFunEnum;->ID_ENERGY_RECYCLE_HIGH:Lcom/example/navistart/cores/HFunEnum;

    .line 6
    .line 7
    sget-object v3, Lcom/example/navistart/cores/HFunEnum;->ID_SOC_MANAGER_INITIAL:Lcom/example/navistart/cores/HFunEnum;

    .line 8
    .line 9
    sget-object v4, Lcom/example/navistart/cores/HFunEnum;->ID_SOC_MANAGER_SMART:Lcom/example/navistart/cores/HFunEnum;

    .line 10
    .line 11
    sget-object v5, Lcom/example/navistart/cores/HFunEnum;->ID_SOC_MANAGER_FORCED:Lcom/example/navistart/cores/HFunEnum;

    .line 12
    .line 13
    sget-object v6, Lcom/example/navistart/cores/HFunEnum;->ID_VCU_DISCHARGE_SWITCH:Lcom/example/navistart/cores/HFunEnum;

    .line 14
    .line 15
    sget-object v7, Lcom/example/navistart/cores/HFunEnum;->ID_VCU_ELECTRONIC_LOCKING_UNLOCKS:Lcom/example/navistart/cores/HFunEnum;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Lcom/example/navistart/cores/HFunEnum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/example/navistart/cores/HFunEnum;

    .line 2
    .line 3
    const-string v1, "ID_ENERGY_RECYCLE_LOW"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/example/navistart/cores/HFunEnum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/example/navistart/cores/HFunEnum;->ID_ENERGY_RECYCLE_LOW:Lcom/example/navistart/cores/HFunEnum;

    .line 10
    .line 11
    new-instance v0, Lcom/example/navistart/cores/HFunEnum;

    .line 12
    .line 13
    const-string v1, "ID_ENERGY_RECYCLE_MEDIUM"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/example/navistart/cores/HFunEnum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/example/navistart/cores/HFunEnum;->ID_ENERGY_RECYCLE_MEDIUM:Lcom/example/navistart/cores/HFunEnum;

    .line 20
    .line 21
    new-instance v0, Lcom/example/navistart/cores/HFunEnum;

    .line 22
    .line 23
    const-string v1, "ID_ENERGY_RECYCLE_HIGH"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/example/navistart/cores/HFunEnum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/example/navistart/cores/HFunEnum;->ID_ENERGY_RECYCLE_HIGH:Lcom/example/navistart/cores/HFunEnum;

    .line 30
    .line 31
    new-instance v0, Lcom/example/navistart/cores/HFunEnum;

    .line 32
    .line 33
    const-string v1, "ID_SOC_MANAGER_INITIAL"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/example/navistart/cores/HFunEnum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/example/navistart/cores/HFunEnum;->ID_SOC_MANAGER_INITIAL:Lcom/example/navistart/cores/HFunEnum;

    .line 40
    .line 41
    new-instance v0, Lcom/example/navistart/cores/HFunEnum;

    .line 42
    .line 43
    const-string v1, "ID_SOC_MANAGER_SMART"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/example/navistart/cores/HFunEnum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/example/navistart/cores/HFunEnum;->ID_SOC_MANAGER_SMART:Lcom/example/navistart/cores/HFunEnum;

    .line 50
    .line 51
    new-instance v0, Lcom/example/navistart/cores/HFunEnum;

    .line 52
    .line 53
    const-string v1, "ID_SOC_MANAGER_FORCED"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/example/navistart/cores/HFunEnum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/example/navistart/cores/HFunEnum;->ID_SOC_MANAGER_FORCED:Lcom/example/navistart/cores/HFunEnum;

    .line 60
    .line 61
    new-instance v0, Lcom/example/navistart/cores/HFunEnum;

    .line 62
    .line 63
    const-string v1, "ID_VCU_DISCHARGE_SWITCH"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/example/navistart/cores/HFunEnum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/example/navistart/cores/HFunEnum;->ID_VCU_DISCHARGE_SWITCH:Lcom/example/navistart/cores/HFunEnum;

    .line 70
    .line 71
    new-instance v0, Lcom/example/navistart/cores/HFunEnum;

    .line 72
    .line 73
    const-string v1, "ID_VCU_ELECTRONIC_LOCKING_UNLOCKS"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lcom/example/navistart/cores/HFunEnum;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/example/navistart/cores/HFunEnum;->ID_VCU_ELECTRONIC_LOCKING_UNLOCKS:Lcom/example/navistart/cores/HFunEnum;

    .line 80
    .line 81
    invoke-static {}, Lcom/example/navistart/cores/HFunEnum;->$values()[Lcom/example/navistart/cores/HFunEnum;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/example/navistart/cores/HFunEnum;->$VALUES:[Lcom/example/navistart/cores/HFunEnum;

    .line 86
    .line 87
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/navistart/cores/HFunEnum;
    .registers 2

    .line 1
    const-class v0, Lcom/example/navistart/cores/HFunEnum;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/example/navistart/cores/HFunEnum;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/example/navistart/cores/HFunEnum;
    .registers 1

    .line 1
    sget-object v0, Lcom/example/navistart/cores/HFunEnum;->$VALUES:[Lcom/example/navistart/cores/HFunEnum;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/example/navistart/cores/HFunEnum;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/example/navistart/cores/HFunEnum;

    .line 8
    .line 9
    return-object v0
.end method
