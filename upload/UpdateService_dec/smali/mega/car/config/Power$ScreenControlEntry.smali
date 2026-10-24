.class public Lmega/car/config/Power$ScreenControlEntry;
.super Ljava/lang/Object;
.source "Power.java"

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

.field private priority:I

.field private reason:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 382
    const-class v0, Lmega/car/config/Power;

    .line 494
    new-instance v0, Lmega/car/config/Power$ScreenControlEntry$1;

    invoke-direct {v0}, Lmega/car/config/Power$ScreenControlEntry$1;-><init>()V

    sput-object v0, Lmega/car/config/Power$ScreenControlEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "reqType"    # I
    .param p2, "reqMode"    # I
    .param p3, "reqPriority"    # I
    .param p4, "reqReason"    # Ljava/lang/String;

    .line 461
    invoke-direct {p0, p1, p2, p4}, Lmega/car/config/Power$ScreenControlEntry;-><init>(IILjava/lang/String;)V

    .line 462
    iput p3, p0, Lmega/car/config/Power$ScreenControlEntry;->priority:I

    .line 463
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p1, "reqType"    # I
    .param p2, "reqMode"    # I
    .param p3, "reqReason"    # Ljava/lang/String;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput p1, p0, Lmega/car/config/Power$ScreenControlEntry;->type:I

    .line 447
    iput p2, p0, Lmega/car/config/Power$ScreenControlEntry;->mode:I

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lmega/car/config/Power$ScreenControlEntry;->priority:I

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:screen_req:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    .line 450
    invoke-direct {p0}, Lmega/car/config/Power$ScreenControlEntry;->assertReason()V

    .line 451
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/config/Power$ScreenControlEntry;->type:I

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/config/Power$ScreenControlEntry;->mode:I

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/config/Power$ScreenControlEntry;->priority:I

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    .line 482
    return-void
.end method

.method private assertReason()V
    .locals 7

    .line 466
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "pkg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid ScreenControlEntry reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", by pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v2, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    .line 469
    const-string v5, "android:screen_req:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 470
    .local v2, "validReason":Z
    :goto_0
    nop

    .line 471
    iget-object v5, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    const-string v6, "car_power"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 472
    const-string v5, "com.android.car"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    nop

    .line 473
    .local v3, "validPowerReason":Z
    :goto_2
    nop

    .line 474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    .line 475
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 415
    iget v0, p0, Lmega/car/config/Power$ScreenControlEntry;->mode:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 423
    iget v0, p0, Lmega/car/config/Power$ScreenControlEntry;->priority:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 407
    iget v0, p0, Lmega/car/config/Power$ScreenControlEntry;->type:I

    return v0
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 419
    iput p1, p0, Lmega/car/config/Power$ScreenControlEntry;->mode:I

    .line 420
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .line 427
    iput p1, p0, Lmega/car/config/Power$ScreenControlEntry;->priority:I

    .line 428
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:screen_req:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    .line 436
    invoke-direct {p0}, Lmega/car/config/Power$ScreenControlEntry;->assertReason()V

    .line 437
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 411
    iput p1, p0, Lmega/car/config/Power$ScreenControlEntry;->type:I

    .line 412
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenControlEntry{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v1, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 514
    iget v0, p0, Lmega/car/config/Power$ScreenControlEntry;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget v0, p0, Lmega/car/config/Power$ScreenControlEntry;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget v0, p0, Lmega/car/config/Power$ScreenControlEntry;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget-object v0, p0, Lmega/car/config/Power$ScreenControlEntry;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 518
    return-void
.end method
