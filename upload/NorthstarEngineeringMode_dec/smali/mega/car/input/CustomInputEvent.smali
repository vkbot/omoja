.class public final Lmega/car/input/CustomInputEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmega/car/input/CustomInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final NEXT_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mAction:I

.field private final mDownTime:J

.field private final mEventTime:J

.field private final mInputCode:I

.field private final mRepeatCount:I

.field private final mSeq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmega/car/input/CustomInputEvent;->NEXT_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lmega/car/input/CustomInputEvent$1;

    invoke-direct {v0}, Lmega/car/input/CustomInputEvent$1;-><init>()V

    sput-object v0, Lmega/car/input/CustomInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJJI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmega/car/input/CustomInputEvent;->mSeq:I

    iput p2, p0, Lmega/car/input/CustomInputEvent;->mInputCode:I

    iput p3, p0, Lmega/car/input/CustomInputEvent;->mAction:I

    iput-wide p4, p0, Lmega/car/input/CustomInputEvent;->mDownTime:J

    iput-wide p6, p0, Lmega/car/input/CustomInputEvent;->mEventTime:J

    iput p8, p0, Lmega/car/input/CustomInputEvent;->mRepeatCount:I

    return-void
.end method

.method public constructor <init>(IIJJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmega/car/input/CustomInputEvent;->NEXT_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomInputEvent;->mSeq:I

    iput p1, p0, Lmega/car/input/CustomInputEvent;->mInputCode:I

    iput p2, p0, Lmega/car/input/CustomInputEvent;->mAction:I

    iput-wide p3, p0, Lmega/car/input/CustomInputEvent;->mDownTime:J

    iput-wide p5, p0, Lmega/car/input/CustomInputEvent;->mEventTime:J

    const/4 p1, 0x0

    iput p1, p0, Lmega/car/input/CustomInputEvent;->mRepeatCount:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomInputEvent;->mSeq:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomInputEvent;->mInputCode:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomInputEvent;->mAction:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmega/car/input/CustomInputEvent;->mDownTime:J

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmega/car/input/CustomInputEvent;->mEventTime:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lmega/car/input/CustomInputEvent;->mRepeatCount:I

    return-void
.end method

.method public static changeTimeRepeat(Lmega/car/input/CustomInputEvent;JI)Lmega/car/input/CustomInputEvent;
    .locals 10
    .param p0    # Lmega/car/input/CustomInputEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v9, Lmega/car/input/CustomInputEvent;

    invoke-virtual {p0}, Lmega/car/input/CustomInputEvent;->getSeq()I

    move-result v1

    invoke-virtual {p0}, Lmega/car/input/CustomInputEvent;->getInputCode()I

    move-result v2

    invoke-virtual {p0}, Lmega/car/input/CustomInputEvent;->getAction()I

    move-result v3

    invoke-virtual {p0}, Lmega/car/input/CustomInputEvent;->getDownTime()J

    move-result-wide v4

    move-object v0, v9

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lmega/car/input/CustomInputEvent;-><init>(IIIJJI)V

    return-object v9
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmega/car/input/CustomInputEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lmega/car/input/CustomInputEvent;

    iget v1, p0, Lmega/car/input/CustomInputEvent;->mInputCode:I

    iget v3, p1, Lmega/car/input/CustomInputEvent;->mInputCode:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lmega/car/input/CustomInputEvent;->mAction:I

    iget v3, p1, Lmega/car/input/CustomInputEvent;->mAction:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lmega/car/input/CustomInputEvent;->mDownTime:J

    iget-wide v5, p1, Lmega/car/input/CustomInputEvent;->mDownTime:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lmega/car/input/CustomInputEvent;->mEventTime:J

    iget-wide p0, p1, Lmega/car/input/CustomInputEvent;->mEventTime:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAction()I
    .locals 0
    .annotation build Lmega/car/config/KeyInput$KeyAction;
    .end annotation

    iget p0, p0, Lmega/car/input/CustomInputEvent;->mAction:I

    return p0
.end method

.method public getDownTime()J
    .locals 2

    iget-wide v0, p0, Lmega/car/input/CustomInputEvent;->mDownTime:J

    return-wide v0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Lmega/car/input/CustomInputEvent;->mEventTime:J

    return-wide v0
.end method

.method public getInputCode()I
    .locals 0
    .annotation build Lmega/car/config/KeyInput$KeyCodeEnum;
    .end annotation

    iget p0, p0, Lmega/car/input/CustomInputEvent;->mInputCode:I

    return p0
.end method

.method public getRepeatCount()I
    .locals 0

    iget p0, p0, Lmega/car/input/CustomInputEvent;->mRepeatCount:I

    return p0
.end method

.method public getSeq()I
    .locals 0

    iget p0, p0, Lmega/car/input/CustomInputEvent;->mSeq:I

    return p0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lmega/car/input/CustomInputEvent;->mInputCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lmega/car/input/CustomInputEvent;->mAction:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lmega/car/input/CustomInputEvent;->mDownTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lmega/car/input/CustomInputEvent;->mEventTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CustomInputEvent{mInputCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmega/car/input/CustomInputEvent;->mInputCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/input/CustomInputEvent;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDownTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmega/car/input/CustomInputEvent;->mDownTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmega/car/input/CustomInputEvent;->mEventTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mRepeatCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmega/car/input/CustomInputEvent;->mRepeatCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p2, p0, Lmega/car/input/CustomInputEvent;->mSeq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmega/car/input/CustomInputEvent;->mInputCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmega/car/input/CustomInputEvent;->mAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lmega/car/input/CustomInputEvent;->mDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lmega/car/input/CustomInputEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p0, p0, Lmega/car/input/CustomInputEvent;->mRepeatCount:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
