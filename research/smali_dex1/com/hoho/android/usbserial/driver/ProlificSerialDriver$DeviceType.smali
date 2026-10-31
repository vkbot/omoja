.class public final enum Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

.field public static final enum DEVICE_TYPE_01:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

.field public static final enum DEVICE_TYPE_HX:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

.field public static final enum DEVICE_TYPE_HXN:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

.field public static final enum DEVICE_TYPE_T:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;


# direct methods
.method private static synthetic $values()[Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;
    .registers 4

    .line 1
    sget-object v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_01:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 2
    .line 3
    sget-object v1, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_T:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 4
    .line 5
    sget-object v2, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HX:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 6
    .line 7
    sget-object v3, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 2
    .line 3
    const-string v1, "DEVICE_TYPE_01"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_01:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 10
    .line 11
    new-instance v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 12
    .line 13
    const-string v1, "DEVICE_TYPE_T"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_T:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 20
    .line 21
    new-instance v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 22
    .line 23
    const-string v1, "DEVICE_TYPE_HX"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HX:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 30
    .line 31
    new-instance v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 32
    .line 33
    const-string v1, "DEVICE_TYPE_HXN"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 40
    .line 41
    invoke-static {}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->$values()[Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->$VALUES:[Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 46
    .line 47
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

.method public static valueOf(Ljava/lang/String;)Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;
    .registers 2

    .line 1
    const-class v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;
    .registers 1

    .line 1
    sget-object v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->$VALUES:[Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 8
    .line 9
    return-object v0
.end method
