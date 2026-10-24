.class public Lmega/car/config/ElecPower$BookChargeTime;
.super Ljava/lang/Object;
.source "ElecPower.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/config/ElecPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookChargeTime"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmega/car/config/ElecPower$BookChargeTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public chargeMode:I

.field public end:J

.field public mode:I

.field public start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 454
    new-instance v0, Lmega/car/config/ElecPower$BookChargeTime$1;

    invoke-direct {v0}, Lmega/car/config/ElecPower$BookChargeTime$1;-><init>()V

    sput-object v0, Lmega/car/config/ElecPower$BookChargeTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    const/4 v0, 0x1

    iput v0, p0, Lmega/car/config/ElecPower$BookChargeTime;->chargeMode:I

    .line 425
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmega/car/config/ElecPower$BookChargeTime;->start:J

    .line 426
    iput-wide v0, p0, Lmega/car/config/ElecPower$BookChargeTime;->end:J

    .line 427
    const/4 v0, -0x1

    iput v0, p0, Lmega/car/config/ElecPower$BookChargeTime;->mode:I

    .line 428
    return-void
.end method

.method public constructor <init>(IJJI)V
    .locals 0
    .param p1, "chargeMode"    # I
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "mode"    # I

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput p1, p0, Lmega/car/config/ElecPower$BookChargeTime;->chargeMode:I

    .line 432
    iput-wide p2, p0, Lmega/car/config/ElecPower$BookChargeTime;->start:J

    .line 433
    iput-wide p4, p0, Lmega/car/config/ElecPower$BookChargeTime;->end:J

    .line 434
    iput p6, p0, Lmega/car/config/ElecPower$BookChargeTime;->mode:I

    .line 435
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/config/ElecPower$BookChargeTime;->chargeMode:I

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmega/car/config/ElecPower$BookChargeTime;->start:J

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmega/car/config/ElecPower$BookChargeTime;->end:J

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/config/ElecPower$BookChargeTime;->mode:I

    .line 452
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookChargeTime{chargeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/config/ElecPower$BookChargeTime;->chargeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmega/car/config/ElecPower$BookChargeTime;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmega/car/config/ElecPower$BookChargeTime;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/config/ElecPower$BookChargeTime;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 473
    iget v0, p0, Lmega/car/config/ElecPower$BookChargeTime;->chargeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget-wide v0, p0, Lmega/car/config/ElecPower$BookChargeTime;->start:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 475
    iget-wide v0, p0, Lmega/car/config/ElecPower$BookChargeTime;->end:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 476
    iget v0, p0, Lmega/car/config/ElecPower$BookChargeTime;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    return-void
.end method
