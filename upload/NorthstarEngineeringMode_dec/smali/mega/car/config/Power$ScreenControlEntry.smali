.class public Lmega/car/config/Power$ScreenControlEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/config/Power;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenControlEntry"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmega/car/config/Power$ScreenControlEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final REASON_PREFIX:Ljava/lang/String; = "android:screen_req:"


# instance fields
.field private mode:I
    .annotation build Lmega/car/config/Power$ScreenControlMode;
    .end annotation
.end field

.field private priority:I

.field private reason:Ljava/lang/String;
    .annotation build Lmega/car/config/Power$ScreenControlReason;
    .end annotation
.end field

.field private type:I
    .annotation build Lmega/car/config/Power$ScreenControlType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmega/car/config/Power$ScreenControlEntry$1;

    invoke-direct {v0}, Lmega/car/config/Power$ScreenControlEntry$1;-><init>()V

    sput-object v0, Lmega/car/config/Power$ScreenControlEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p4}, Lmega/car/config/Power$ScreenControlEntry;-><init>(IILjava/lang/String;)V

    iput p3, p0, Lmega/car/config/Power$ScreenControlEntry;->priority:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmega/car/config/Power$ScreenControlEntry;->type:I

    iput p2, p0, Lmega/car/config/Power$ScreenControlEntry;->mode:I

    const/4 p1, 0x0

    iput p1, p0, Lmega/car/config/Power$ScreenControlEntry;->priority:I

    const-string p1, "android:screen_req:"

    .line 3
    invoke-static {p1, p3}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lmega/car/config/Power$ScreenControlEntry;->assertReason()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/config/Power$ScreenControlEntry;->type:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/config/Power$ScreenControlEntry;->mode:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/config/Power$ScreenControlEntry;->priority:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    return-void
.end method

.method private assertReason()V
    .locals 3

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid ScreenControlEntry reason "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", by pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    const-string v2, "android:screen_req:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    iget-object v1, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    const-string v2, "car_power"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.car"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lmega/car/config/Power$ScreenControlEntry;->mode:I

    return p0
.end method

.method public getPriority()I
    .locals 0

    iget p0, p0, Lmega/car/config/Power$ScreenControlEntry;->priority:I

    return p0
.end method

.method public getReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lmega/car/config/Power$ScreenControlEntry;->type:I

    return p0
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lmega/car/config/Power$ScreenControlEntry;->mode:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lmega/car/config/Power$ScreenControlEntry;->priority:I

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 1

    const-string v0, "android:screen_req:"

    invoke-static {v0, p1}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    invoke-direct {p0}, Lmega/car/config/Power$ScreenControlEntry;->assertReason()V

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lmega/car/config/Power$ScreenControlEntry;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScreenControlEntry{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmega/car/config/Power$ScreenControlEntry;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/config/Power$ScreenControlEntry;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/config/Power$ScreenControlEntry;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lmega/car/config/Power$ScreenControlEntry;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmega/car/config/Power$ScreenControlEntry;->mode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmega/car/config/Power$ScreenControlEntry;->priority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
