.class public La/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    iput v0, p0, La/a;->a:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/a;->a:I

    return-void
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lv1/e;

    const-string v2, "ABM"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_ABS"

    invoke-direct {v1, v2, v4, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_ESP"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_TCU1"

    const/4 v5, 0x3

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_TCU2"

    const/4 v6, 0x4

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_CLM"

    const/4 v7, 0x5

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_EPS"

    const/4 v7, 0x6

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_PEPS"

    const/4 v7, 0x7

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "IHU"

    const/16 v7, 0x8

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_TPMS"

    const/16 v8, 0x9

    invoke-direct {v1, v2, v8, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_CGW"

    const/16 v8, 0xa

    invoke-direct {v1, v2, v8, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_EPB"

    const/16 v8, 0xb

    invoke-direct {v1, v2, v8, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_AVM"

    const/16 v8, 0xc

    invoke-direct {v1, v2, v8, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_BSD"

    const/16 v8, 0xd

    invoke-direct {v1, v2, v8, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_LDW"

    const/16 v8, 0xe

    invoke-direct {v1, v2, v8, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_PLG"

    const/16 v8, 0xf

    invoke-direct {v1, v2, v8, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "INIT_FUEL_CONSUME"

    const/16 v8, 0x10

    invoke-direct {v1, v2, v8, v7}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "FIRST_MAINTAIN"

    const/16 v7, 0x18

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "MAINTAION_MILEAGE"

    const/16 v7, 0x19

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "FUEL_CONSUME_CORRECT"

    const/16 v7, 0x1a

    invoke-direct {v1, v2, v7, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_RADAR"

    const/16 v7, 0x1c

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ENGINE_FUEL_TYPE"

    const/16 v7, 0x1d

    invoke-direct {v1, v2, v7, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_LANGUAGE"

    const/16 v7, 0x20

    invoke-direct {v1, v2, v7, v6}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_OVER_SPEED_WARN"

    const/16 v7, 0x24

    invoke-direct {v1, v2, v7, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "SIMM"

    const/16 v7, 0x26

    invoke-direct {v1, v2, v7, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_TCU3"

    const/16 v7, 0x28

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_FCM"

    const/16 v7, 0x29

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_FRM"

    const/16 v7, 0x2a

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_REAR_RADAR_NUM"

    const/16 v7, 0x2b

    invoke-direct {v1, v2, v7, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "EMISSION_TYPE"

    const/16 v7, 0x2d

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_NAVIGATION_INFO"

    const/16 v7, 0x2e

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_TCU4"

    const/16 v7, 0x2f

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ESCL"

    const/16 v7, 0x30

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "EGS"

    const/16 v7, 0x31

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_MFS"

    const/16 v7, 0x32

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_APA"

    const/16 v7, 0x33

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "EPB_WORK_LOGIC"

    const/16 v7, 0x35

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_PEPS_TYPE"

    const/16 v7, 0x36

    invoke-direct {v1, v2, v7, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "EGS _TYPE"

    const/16 v7, 0x38

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_VEHICLE_TYPE"

    const/16 v7, 0x39

    invoke-direct {v1, v2, v7, v6}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_LKA"

    const/16 v6, 0x3d

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "DRIVE_MODE_NUM"

    const/16 v6, 0x3e

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "DEFAULT_DRIVE_MODE"

    const/16 v6, 0x40

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "MAINTAION_MILEAGE2"

    const/16 v6, 0x42

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "SIMM2"

    const/16 v6, 0x44

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_BMS"

    const/16 v3, 0x46

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "SPEED_LIMIT"

    const/16 v3, 0x47

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_FACE_STYLE"

    const/16 v3, 0x48

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "SRSBR_SWITCH"

    const/16 v3, 0x49

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "AWD"

    const/16 v3, 0x4a

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_DRIVE_MODE_NUM2"

    const/16 v3, 0x4b

    invoke-direct {v1, v2, v3, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "TRSBR_SWITCH"

    const/16 v3, 0x4e

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "FUEL_TANK_CAPACITY"

    const/16 v3, 0x4f

    invoke-direct {v1, v2, v3, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static d()Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lv1/e;

    const-string v2, "RLCR1"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "RLCR2"

    invoke-direct {v1, v2, v4, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "EBS"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Maintain Mileage3"

    const/4 v5, 0x3

    invoke-direct {v1, v2, v5, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "INIT_FUEL_CONSUME2"

    const/16 v6, 0x8

    invoke-direct {v1, v2, v6, v6}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_EMERGENCY_LANE_KEEPING"

    const/16 v7, 0x10

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_LANE_DEPARTURE_PRE"

    const/16 v7, 0x11

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_TJA"

    const/16 v7, 0x12

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ICM_SIMM3"

    const/16 v4, 0x13

    invoke-direct {v1, v2, v4, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const/4 v2, 0x5

    const-string v4, "MODEL_CODE"

    const/16 v7, 0x18

    invoke-direct {v1, v4, v7, v2}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "BRAND"

    const/16 v4, 0x20

    const/4 v7, 0x4

    invoke-direct {v1, v2, v4, v7}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "FUEL_CONSUMPTION_UNIT"

    const/16 v4, 0x24

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "TIRE_PRESSURE_UNIT"

    const/16 v4, 0x26

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "GRAR_SHIFT"

    const/16 v4, 0x28

    invoke-direct {v1, v2, v4, v7}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "TRANSMISSION_TYPE_2"

    const/16 v4, 0x2c

    invoke-direct {v1, v2, v4, v7}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const/4 v2, 0x6

    const-string v4, "FUEL_TANK_CAPACITY2"

    const/16 v8, 0x30

    invoke-direct {v1, v4, v8, v2}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "First Maintain2"

    const/16 v4, 0x36

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "country or region"

    const/16 v3, 0x38

    invoke-direct {v1, v2, v3, v6}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Language2"

    const/16 v3, 0x40

    invoke-direct {v1, v2, v3, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Number of seats"

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3, v7}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Motor supplier"

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3, v7}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static e()Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lv1/e;

    const-string v2, "ABS"

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "T1GC_INT"

    invoke-static {}, Lb1/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_0

    new-instance v1, Lv1/e;

    const-string v5, "ESC"

    invoke-direct {v1, v5, v2, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lv1/e;

    const-string v5, "ESP"

    invoke-direct {v1, v5, v2, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v1, Lv1/e;

    const-string v2, "TCU1(CVT19)"

    const/16 v5, 0x8

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "TCU2(6DCT)"

    const/16 v5, 0x9

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "CLM"

    const/16 v5, 0xa

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "EPS"

    const/16 v5, 0xb

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "PEPS"

    const/16 v5, 0xc

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "SAS"

    const/16 v5, 0xe

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "RADAR"

    const/16 v5, 0xf

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "AVM"

    const/16 v5, 0x10

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "TCU3(CVT25/CVT18/8AT)"

    const/16 v5, 0x11

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "TCU4(7DCT/DHT)"

    const/16 v5, 0x12

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "EPB"

    const/16 v5, 0x13

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Language"

    const/16 v5, 0x14

    invoke-direct {v1, v2, v5, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Over Speed Warning Function"

    const/16 v3, 0x18

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Radio Area"

    const/16 v3, 0x1a

    invoke-direct {v1, v2, v3, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "BSD"

    const/16 v3, 0x1d

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Auto Light"

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "LDW"

    const/16 v3, 0x1f

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static f()Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lv1/e;

    const-string v2, "Mirror Automatic Fold"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Vehicle Speed Auto lock"

    invoke-direct {v1, v2, v4, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "PM2.5"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "FCM"

    const/4 v5, 0x3

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "PLG"

    const/4 v6, 0x4

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Number of Loudspeaker"

    const/4 v6, 0x5

    invoke-direct {v1, v2, v6, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Steering Mode Select"

    const/16 v5, 0x8

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Radio Antenna Parameters"

    const/16 v5, 0xa

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "LKA"

    const/16 v5, 0x10

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "NM Type"

    const/16 v5, 0x11

    invoke-direct {v1, v2, v5, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "FRM"

    const/16 v5, 0x13

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "INTERAVTIVE_MODE"

    const/16 v5, 0x14

    invoke-direct {v1, v2, v5, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "MFS(LIN)"

    const/16 v3, 0x18

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Interior Lighting"

    const/16 v3, 0x19

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "DVR"

    const/16 v3, 0x1a

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "SCU"

    const/16 v3, 0x1b

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "CWC"

    const/16 v3, 0x1c

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "IPB"

    const/16 v3, 0x1d

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Face Recognition"

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "AR Navigationa"

    const/16 v3, 0x1f

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static g()Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lv1/e;

    const-string v2, "IHU/TIHU Configuration"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Front windshield heating"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Interior Lighting Type"

    const/4 v4, 0x5

    const/4 v5, 0x2

    invoke-direct {v1, v2, v4, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Arkamys Advanced"

    const/4 v4, 0x7

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Welcome function"

    const/16 v4, 0x9

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Go to unlock and leave the lock"

    const/16 v4, 0xa

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Intelligent open trunk"

    const/16 v4, 0xb

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Auto defog"

    const/16 v4, 0xc

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "BT Key"

    const/16 v4, 0xe

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "DOW"

    const/16 v4, 0xf

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "DRL"

    const/16 v4, 0x12

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "CARPLAY"

    const/16 v4, 0x13

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Fragrance"

    const/16 v4, 0x14

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "QD Link"

    const/16 v4, 0x15

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Android Auto"

    const/16 v4, 0x16

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ION"

    const/16 v4, 0x17

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Rear Radars Number"

    const/16 v4, 0x1a

    invoke-direct {v1, v2, v4, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "EAMP"

    const/16 v4, 0x1c

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "RCW"

    const/16 v4, 0x1f

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "APM"

    const/16 v4, 0x21

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "APA"

    const/16 v4, 0x22

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Radio Area2"

    const/16 v4, 0x23

    invoke-direct {v1, v2, v4, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Face style"

    const/16 v4, 0x25

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Navigation Information"

    const/16 v4, 0x28

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "SONY sound"

    const/16 v4, 0x2c

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Lighted Roof Rack"

    const/16 v4, 0x2e

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Volcanic APP"

    const/16 v4, 0x2f

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Sunroof"

    const/16 v4, 0x30

    invoke-direct {v1, v2, v4, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "AVM Intergated Method"

    const/16 v4, 0x32

    invoke-direct {v1, v2, v4, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Speed Limit Assistance Function"

    const/16 v4, 0x36

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Beidou"

    const/16 v4, 0x37

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Front Radar"

    const/16 v4, 0x39

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "CVBOX"

    const/16 v4, 0x3d

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Seat massage function"

    const/16 v4, 0x3e

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "DAB"

    const/16 v4, 0x3f

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static h()Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lv1/e;

    const-string v2, "RLCR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "RRCR"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "CCP"

    const/4 v5, 0x3

    invoke-direct {v1, v2, v5, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ECLM"

    const/4 v6, 0x4

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Idle Start Stop System"

    const/4 v7, 0x5

    invoke-direct {v1, v2, v7, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Speed Control Function "

    const/4 v8, 0x6

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Emergency Lane Keeping"

    const/4 v8, 0x7

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Lane Departure Prevention"

    const/16 v8, 0x8

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Traffic Jam Assist"

    const/16 v8, 0x9

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Traffic Sign Recognition"

    const/16 v8, 0xa

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Traffic Light Identification"

    const/16 v8, 0xb

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Voice Recognition"

    const/16 v8, 0xc

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Automatic Emergency Braking"

    const/16 v8, 0xd

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Driver Away Information"

    const/16 v8, 0xe

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Intelligent Evasion System"

    const/16 v8, 0xf

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Rear Cross Traffic Braking"

    const/16 v8, 0x10

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "SHU1D"

    const/16 v8, 0x12

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "SHU1P"

    const/16 v8, 0x13

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Driver seat heating"

    const/16 v8, 0x14

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Driver seat ventilation"

    const/16 v8, 0x15

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Passenger seat heating"

    const/16 v8, 0x16

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Passenger  seat ventilation"

    const/16 v8, 0x17

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "SHU2L"

    const/16 v8, 0x18

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "SHU2R"

    const/16 v8, 0x19

    invoke-direct {v1, v2, v8, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Reverse Assist Video Type"

    const/16 v8, 0x1a

    invoke-direct {v1, v2, v8, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ECALL"

    const/16 v5, 0x1d

    invoke-direct {v1, v2, v5, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Fatigue monitoring"

    const/16 v5, 0x1e

    invoke-direct {v1, v2, v5, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "LHM"

    const/16 v5, 0x1f

    invoke-direct {v1, v2, v5, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "RHM"

    const/16 v5, 0x20

    invoke-direct {v1, v2, v5, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Second row seat heating"

    const/16 v5, 0x21

    invoke-direct {v1, v2, v5, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Second row seat ventilation"

    const/16 v5, 0x22

    invoke-direct {v1, v2, v5, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "BDM"

    const/16 v5, 0x23

    invoke-direct {v1, v2, v5, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "W-HUD"

    const/16 v5, 0x24

    invoke-direct {v1, v2, v5, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Number of Midrange Loudspeaker"

    const/16 v5, 0x25

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "AR-HUD"

    const/16 v4, 0x27

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Drive Mode"

    const/16 v4, 0x28

    invoke-direct {v1, v2, v4, v7}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "OMS"

    const/16 v4, 0x2d

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "RMS"

    const/16 v4, 0x2e

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "IDCU"

    const/16 v4, 0x2f

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Smart Phone Key"

    const/16 v4, 0x34

    invoke-direct {v1, v2, v4, v6}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Rain sensor sensitivity soft switch"

    const/16 v4, 0x38

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Intermittent wiper soft switch"

    const/16 v4, 0x39

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Combination Switch Assy(integration E-gear shift)"

    const/16 v4, 0x3a

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Interior Atmosphere Light System"

    const/16 v4, 0x3b

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Interior Atmosphere Light Type"

    const/16 v3, 0x3c

    invoke-direct {v1, v2, v3, v6}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static i()Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lv1/e;

    const-string v2, "Sunroof Atmosphere Lamp"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Steering Wheel Heating Function"

    invoke-direct {v1, v2, v4, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Four tone speech recognition"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Headlight Height Adjustment"

    const/4 v5, 0x3

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Rear Bumper Type"

    const/4 v6, 0x4

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Rearview Mirror Scroll down"

    const/4 v7, 0x6

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "IHU/DMC learn SK"

    const/4 v7, 0x7

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "PPMI"

    const/16 v7, 0x8

    invoke-direct {v1, v2, v7, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Seat&Rearview Mirror memory"

    const/16 v8, 0x9

    invoke-direct {v1, v2, v8, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Lowbeam And Highbeam Switch Automatically"

    const/16 v8, 0xa

    invoke-direct {v1, v2, v8, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ASU"

    const/16 v8, 0xb

    invoke-direct {v1, v2, v8, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Electronic Gear Shift Structure"

    const/16 v8, 0xc

    invoke-direct {v1, v2, v8, v6}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Number of full-range speakers"

    const/16 v6, 0x10

    invoke-direct {v1, v2, v6, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Headlight Type"

    const/16 v6, 0x13

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "AWD"

    const/16 v6, 0x14

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Three Row Independent Air Conditioning"

    const/16 v6, 0x15

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Electric auxiliary heating"

    const/16 v6, 0x16

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Passenger airbag"

    const/16 v6, 0x17

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Hicar"

    const/16 v6, 0x18

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Air conditioning modet"

    const/16 v6, 0x19

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "TBOX Network type"

    const/16 v6, 0x1a

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Intelligent welcome light mode"

    const/16 v6, 0x1c

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Rear atmosphere light"

    const/16 v6, 0x1d

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Tencent Ecology"

    const/16 v6, 0x1e

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "CIR"

    const/16 v6, 0x1f

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Rear Window With Heating Function"

    const/16 v6, 0x20

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Two-row air conditioner"

    const/16 v6, 0x21

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "PAB Touch Switch"

    const/16 v6, 0x22

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Passenger Frontal Airbag Switch"

    const/16 v6, 0x23

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Driving Power Type"

    const/16 v6, 0x24

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Left and right rudder type"

    const/16 v6, 0x26

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "DMS"

    const/16 v6, 0x27

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Compass Of Worship"

    const/16 v6, 0x28

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Main driver seat massage function"

    const/16 v6, 0x2e

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "External Discharge Function"

    const/16 v6, 0x2f

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "country or region"

    const/16 v6, 0x30

    invoke-direct {v1, v2, v6, v7}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "PHEV type"

    const/16 v6, 0x3a

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Cockpit ecology software"

    const/16 v3, 0x3c

    invoke-direct {v1, v2, v3, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Simulated sound wave"

    const/16 v3, 0x3f

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static j()Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lv1/e;

    const-string v2, "Intelligent mode of air conditioning"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Special parking mode"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "CPD"

    const/4 v5, 0x5

    const/4 v6, 0x3

    invoke-direct {v1, v2, v5, v6}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "NOC"

    const/16 v7, 0x8

    const/4 v8, 0x2

    invoke-direct {v1, v2, v7, v8}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Highway Assistance"

    const/16 v7, 0xa

    invoke-direct {v1, v2, v7, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Intelligent Speed Assistance"

    const/16 v7, 0xb

    invoke-direct {v1, v2, v7, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string/jumbo v2, "one-click start switch"

    const/16 v7, 0xc

    invoke-direct {v1, v2, v7, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "AVAS"

    const/16 v7, 0xd

    invoke-direct {v1, v2, v7, v8}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "ERA"

    const/16 v7, 0xf

    invoke-direct {v1, v2, v7, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Drive form"

    const/16 v7, 0x10

    invoke-direct {v1, v2, v7, v6}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Language2"

    const/16 v7, 0x13

    invoke-direct {v1, v2, v7, v6}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Passenger leg supporting"

    const/16 v6, 0x16

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Second Row Seat Massage Function"

    const/16 v6, 0x17

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Face style2"

    const/16 v6, 0x18

    invoke-direct {v1, v2, v6, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Assisted Driving Voice Broadcasting"

    const/16 v6, 0x1d

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "SAUR"

    const/16 v6, 0x1e

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "SCUP"

    const/16 v6, 0x1f

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const/4 v2, 0x6

    const-string v6, "WIFI Configuration Types"

    const/16 v7, 0x20

    invoke-direct {v1, v6, v7, v2}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Home_zone Parking"

    const/16 v6, 0x26

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "SCUM"

    const/16 v6, 0x27

    invoke-direct {v1, v2, v6, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v6, 0x7f12003a

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x28

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v6, 0x7f120041

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-direct {v1, v2, v6, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const/4 v2, 0x7

    const-string v4, "Parking function implementation"

    const/16 v6, 0x30

    invoke-direct {v1, v4, v6, v2}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Power Child Lock"

    const/16 v4, 0x37

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Differential form"

    const/16 v4, 0x38

    invoke-direct {v1, v2, v4, v5}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "DDIS/ICMDIS"

    const/16 v4, 0x3e

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "adb function"

    const/16 v4, 0x3f

    invoke-direct {v1, v2, v4, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static k()Ljava/util/ArrayList;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lv1/e;

    const-string v2, "ANC"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Sound"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Driving Power Type 2"

    const/16 v5, 0x10

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Audio Antenna"

    const/16 v5, 0x14

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Central Control Sliding Screen"

    const/16 v5, 0x18

    const/4 v6, 0x5

    invoke-direct {v1, v2, v5, v6}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "Engine model"

    const/16 v5, 0x20

    invoke-direct {v1, v2, v5, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "gearbox model"

    const/16 v5, 0x28

    invoke-direct {v1, v2, v5, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const/4 v2, 0x2

    const-string v5, "Intelligent Deceleration system"

    const/16 v7, 0x3a

    invoke-direct {v1, v5, v7, v2}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v5, 0x7f12037b

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x3e

    const/4 v7, 0x1

    invoke-direct {v1, v2, v5, v7}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v5, 0x7f120298

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x3f

    invoke-direct {v1, v2, v5, v7}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const-string v2, "GNSS Antenna"

    const/16 v5, 0x40

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v5, 0x7f120156

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x44

    invoke-direct {v1, v2, v5, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v5, 0x7f12025b

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x48

    invoke-direct {v1, v2, v5, v3}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v3, 0x7f12031d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3, v7}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v3, 0x7f12029d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x51

    invoke-direct {v1, v2, v3, v7}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v3, 0x7f12014d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x52

    invoke-direct {v1, v2, v3, v7}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v3, 0x7f1203e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x53

    invoke-direct {v1, v2, v3, v7}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v3, 0x7f120039

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x54

    invoke-direct {v1, v2, v3, v4}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    const/4 v2, 0x3

    const-string v3, "Ultrasonic Anti-theft Device"

    const/16 v4, 0x58

    invoke-direct {v1, v3, v4, v2}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v3, 0x7f1200dc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x78

    invoke-direct {v1, v2, v3, v6}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final a([DI)D
    .locals 6

    iget p0, p0, La/a;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-wide v4, p1, v1

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2

    :pswitch_0
    aget-wide p0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    return-wide p0

    :pswitch_2
    aget-wide v1, p1, v1

    aget-wide p0, p1, v0

    rem-double/2addr v1, p0

    return-wide v1

    :pswitch_3
    if-ne p2, v0, :cond_1

    aget-wide p0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p0, v0

    goto :goto_1

    :cond_1
    aget-wide v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    aget-wide p0, p1, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    div-double p0, v1, p0

    :goto_1
    return-wide p0

    :pswitch_4
    aget-wide p0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_5
    const-wide p0, 0x4005bf0a8b145769L    # Math.E

    return-wide p0

    :pswitch_6
    aget-wide v2, p1, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    aget-wide p0, p1, v1

    sub-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    sub-double/2addr v2, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr v2, p0

    return-wide v2

    :pswitch_7
    aget-wide p0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_8
    aget-wide p0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(I)Z
    .locals 3

    iget p0, p0, La/a;->a:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    if-lez p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :pswitch_0
    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    :pswitch_1
    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    :pswitch_2
    if-ne p1, v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :pswitch_3
    if-eq p1, v2, :cond_4

    if-ne p1, v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1

    :pswitch_4
    if-ne p1, v2, :cond_6

    move v1, v2

    :cond_6
    return v1

    :pswitch_5
    if-nez p1, :cond_7

    move v1, v2

    :cond_7
    return v1

    :pswitch_6
    if-ne p1, v2, :cond_8

    move v1, v2

    :cond_8
    return v1

    :pswitch_7
    if-ne p1, v2, :cond_9

    move v1, v2

    :cond_9
    return v1

    :pswitch_8
    if-ne p1, v2, :cond_a

    move v1, v2

    :cond_a
    return v1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, La/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "sum(x1, x2, ..., xn)"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "sin(x)"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "rand()"

    return-object p0

    :pswitch_3
    const-string p0, "mod(x, y)"

    return-object p0

    :pswitch_4
    const-string p0, "log(x):log(x, y)"

    return-object p0

    :pswitch_5
    const-string p0, "floor(x)"

    return-object p0

    :pswitch_6
    const-string p0, "e()"

    return-object p0

    :pswitch_7
    const-string p0, "atanh(x)"

    return-object p0

    :pswitch_8
    const-string p0, "asin(x)"

    return-object p0

    :pswitch_9
    const-string p0, "abs(x)"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
