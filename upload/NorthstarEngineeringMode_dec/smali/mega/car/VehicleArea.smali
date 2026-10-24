.class public Lmega/car/VehicleArea;
.super Ljava/lang/Object;
.source "SourceFile"


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

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/Integer;

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/16 v2, 0x110

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const/16 v2, 0x440

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    const/high16 v2, 0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    const/high16 v2, 0x2000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v1, v4

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v1, v5

    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v1, v5

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xa

    aput-object v4, v1, v5

    const/16 v4, 0x60

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb

    aput-object v4, v1, v5

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xc

    aput-object v4, v1, v5

    const/16 v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xd

    aput-object v4, v1, v5

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xe

    aput-object v4, v1, v5

    const/16 v4, 0x50

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xf

    aput-object v4, v1, v5

    const/16 v4, 0x700

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x300

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x11

    aput-object v2, v1, v4

    const/16 v2, 0x600

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x12

    aput-object v2, v1, v4

    const/16 v2, 0x750

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x13

    aput-object v2, v1, v4

    const/16 v2, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmega/car/VehicleArea;->OBSERVABLE_VEHICLE_AREA:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    const-string p0, "Bottom"

    return-object p0

    :sswitch_1
    const-string p0, "Top"

    return-object p0

    :sswitch_2
    const-string p0, "Back"

    return-object p0

    :sswitch_3
    const-string p0, "Hood"

    return-object p0

    :sswitch_4
    const-string p0, "All"

    return-object p0

    :sswitch_5
    const-string p0, "Rear"

    return-object p0

    :sswitch_6
    const-string p0, "RearRightMiddle"

    return-object p0

    :sswitch_7
    const-string p0, "Right"

    return-object p0

    :sswitch_8
    const-string p0, "RearRight"

    return-object p0

    :sswitch_9
    const-string p0, "RearLeftMiddle"

    return-object p0

    :sswitch_a
    const-string p0, "RearMiddle"

    return-object p0

    :sswitch_b
    const-string p0, "Left"

    return-object p0

    :sswitch_c
    const-string p0, "RearLeft"

    return-object p0

    :sswitch_d
    const-string p0, "FrontRightMiddle"

    return-object p0

    :sswitch_e
    const-string p0, "Front"

    return-object p0

    :sswitch_f
    const-string p0, "FrontRight"

    return-object p0

    :sswitch_10
    const-string p0, "FrontLeftMiddle"

    return-object p0

    :sswitch_11
    const-string p0, "FrontLeft"

    return-object p0

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
