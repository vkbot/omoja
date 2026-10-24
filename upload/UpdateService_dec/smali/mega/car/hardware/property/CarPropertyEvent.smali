.class public Lmega/car/hardware/property/CarPropertyEvent;
.super Ljava/lang/Object;
.source "CarPropertyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmega/car/hardware/property/CarPropertyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERROR_EVENT_VALUE:I = -0x1

.field public static final PROPERTY_EVENT_ERROR:I = 0x1

.field public static final PROPERTY_EVENT_PROPERTY_CHANGE:I


# instance fields
.field private final mCarPropertyValue:Lmega/car/hardware/CarPropertyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmega/car/hardware/CarPropertyValue<",
            "*>;"
        }
    .end annotation
.end field

.field private final mEventType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lmega/car/hardware/property/CarPropertyEvent$1;

    invoke-direct {v0}, Lmega/car/hardware/property/CarPropertyEvent$1;-><init>()V

    sput-object v0, Lmega/car/hardware/property/CarPropertyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILmega/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p1, "eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lmega/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    .line 60
    .local p2, "carPropertyValue":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lmega/car/hardware/property/CarPropertyEvent;->mEventType:I

    .line 62
    iput-object p2, p0, Lmega/car/hardware/property/CarPropertyEvent;->mCarPropertyValue:Lmega/car/hardware/CarPropertyValue;

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/hardware/property/CarPropertyEvent;->mEventType:I

    .line 67
    const-class v0, Lmega/car/hardware/CarPropertyValue;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmega/car/hardware/CarPropertyValue;

    iput-object v0, p0, Lmega/car/hardware/property/CarPropertyEvent;->mCarPropertyValue:Lmega/car/hardware/CarPropertyValue;

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmega/car/hardware/property/CarPropertyEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lmega/car/hardware/property/CarPropertyEvent$1;

    .line 10
    invoke-direct {p0, p1}, Lmega/car/hardware/property/CarPropertyEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createErrorEvent(II)Lmega/car/hardware/property/CarPropertyEvent;
    .locals 8
    .param p0, "propertyId"    # I
    .param p1, "areaId"    # I

    .line 78
    new-instance v7, Lmega/car/hardware/CarPropertyValue;

    .line 83
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, v7

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lmega/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    .line 84
    .local v0, "valueWithErrorCode":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<Ljava/lang/Integer;>;"
    new-instance v1, Lmega/car/hardware/property/CarPropertyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lmega/car/hardware/property/CarPropertyEvent;-><init>(ILmega/car/hardware/CarPropertyValue;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmega/car/hardware/CarPropertyValue<",
            "*>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyEvent;->mCarPropertyValue:Lmega/car/hardware/CarPropertyValue;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .line 28
    iget v0, p0, Lmega/car/hardware/property/CarPropertyEvent;->mEventType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarPropertyEvent{mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/hardware/property/CarPropertyEvent;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCarPropertyValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyEvent;->mCarPropertyValue:Lmega/car/hardware/CarPropertyValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 42
    iget v0, p0, Lmega/car/hardware/property/CarPropertyEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyEvent;->mCarPropertyValue:Lmega/car/hardware/CarPropertyValue;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    return-void
.end method
