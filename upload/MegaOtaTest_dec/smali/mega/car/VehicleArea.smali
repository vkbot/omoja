.class public Lmega/car/VehicleArea;
.super Ljava/lang/Object;
.source "VehicleArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/VehicleArea$Enum;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ALL:I = 0x750

.field public static final FRONT_LEFT:I = 0x10

.field public static final FRONT_LEFT_CENTER:I = 0x30

.field public static final FRONT_RIGHT:I = 0x40

.field public static final FRONT_RIGHT_CENTER:I = 0x60

.field public static final FRONT_ROW:I = 0x50

.field public static final LEFT_COL:I = 0x110

.field public static final NONE:I = 0x0

.field public static final OBSERVABLE_VEHICLE_AREA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final OUTSIDE_BOTTOM:I = 0x2000000

.field public static final OUTSIDE_FRONT:I = 0x10000

.field public static final OUTSIDE_FRONT_REAR:I = 0x30000

.field public static final OUTSIDE_LEFT:I = 0x100000

.field public static final OUTSIDE_LEFT_RIGHT:I = 0x300000

.field public static final OUTSIDE_REAR:I = 0x20000

.field public static final OUTSIDE_RIGHT:I = 0x200000

.field public static final OUTSIDE_TOP:I = 0x1000000

.field public static final OUTSIDE_TOP_BOTTOM:I = 0x3000000

.field public static final REAR_CENTER:I = 0x200

.field public static final REAR_LEFT:I = 0x100

.field public static final REAR_LEFT_CENTER:I = 0x300

.field public static final REAR_RIGHT:I = 0x400

.field public static final REAR_RIGHT_CENTER:I = 0x600

.field public static final REAR_ROW:I = 0x700

.field public static final RIGHT_COL:I = 0x440

.field public static final ROW_1_CENTER:I = 0x20

.field public static final ROW_1_LEFT:I = 0x10

.field public static final ROW_1_RIGHT:I = 0x40

.field public static final ROW_2_CENTER:I = 0x200

.field public static final ROW_2_LEFT:I = 0x100

.field public static final ROW_2_RIGHT:I = 0x400

.field public static final ROW_3_CENTER:I = 0x2000

.field public static final ROW_3_LEFT:I = 0x1000

.field public static final ROW_3_RIGHT:I = 0x4000


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 133
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/Integer;

    .line 134
    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 135
    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 136
    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 137
    const/16 v2, 0x110

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 138
    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    .line 139
    const/16 v2, 0x440

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    .line 140
    const/high16 v2, 0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    .line 141
    const/high16 v2, 0x2000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v1, v4

    .line 142
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v1, v5

    .line 143
    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v1, v5

    .line 144
    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xa

    aput-object v4, v1, v5

    .line 145
    const/16 v4, 0x60

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb

    aput-object v4, v1, v5

    .line 146
    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xc

    aput-object v4, v1, v5

    .line 147
    const/16 v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xd

    aput-object v4, v1, v5

    .line 148
    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xe

    aput-object v4, v1, v5

    .line 149
    const/16 v4, 0x50

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xf

    aput-object v4, v1, v5

    .line 150
    const/16 v4, 0x700

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 151
    const/16 v2, 0x300

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x11

    aput-object v2, v1, v4

    .line 152
    const/16 v2, 0x600

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x12

    aput-object v2, v1, v4

    .line 153
    const/16 v2, 0x750

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x13

    aput-object v2, v1, v4

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 133
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmega/car/VehicleArea;->OBSERVABLE_VEHICLE_AREA:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "area"    # I

    .line 88
    sparse-switch p0, :sswitch_data_0

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 102
    :sswitch_0
    const-string v0, "Bottom"

    return-object v0

    .line 100
    :sswitch_1
    const-string v0, "Top"

    return-object v0

    .line 92
    :sswitch_2
    const-string v0, "Back"

    return-object v0

    .line 90
    :sswitch_3
    const-string v0, "Hood"

    return-object v0

    .line 126
    :sswitch_4
    const-string v0, "All"

    return-object v0

    .line 116
    :sswitch_5
    const-string v0, "Rear"

    return-object v0

    .line 124
    :sswitch_6
    const-string v0, "RearRightMiddle"

    return-object v0

    .line 98
    :sswitch_7
    const-string v0, "Right"

    return-object v0

    .line 110
    :sswitch_8
    const-string v0, "RearRight"

    return-object v0

    .line 122
    :sswitch_9
    const-string v0, "RearLeftMiddle"

    return-object v0

    .line 112
    :sswitch_a
    const-string v0, "RearMiddle"

    return-object v0

    .line 95
    :sswitch_b
    const-string v0, "Left"

    return-object v0

    .line 108
    :sswitch_c
    const-string v0, "RearLeft"

    return-object v0

    .line 120
    :sswitch_d
    const-string v0, "FrontRightMiddle"

    return-object v0

    .line 114
    :sswitch_e
    const-string v0, "Front"

    return-object v0

    .line 106
    :sswitch_f
    const-string v0, "FrontRight"

    return-object v0

    .line 118
    :sswitch_10
    const-string v0, "FrontLeftMiddle"

    return-object v0

    .line 104
    :sswitch_11
    const-string v0, "FrontLeft"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_11
        0x30 -> :sswitch_10
        0x40 -> :sswitch_f
        0x50 -> :sswitch_e
        0x60 -> :sswitch_d
        0x100 -> :sswitch_c
        0x110 -> :sswitch_b
        0x200 -> :sswitch_a
        0x300 -> :sswitch_9
        0x400 -> :sswitch_8
        0x440 -> :sswitch_7
        0x600 -> :sswitch_6
        0x700 -> :sswitch_5
        0x750 -> :sswitch_4
        0x10000 -> :sswitch_3
        0x20000 -> :sswitch_2
        0x100000 -> :sswitch_b
        0x200000 -> :sswitch_7
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_0
    .end sparse-switch
.end method
