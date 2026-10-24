.class public Lmega/car/input/CustomRotaryEvent;
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
            "Lmega/car/input/CustomRotaryEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final NEXT_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mClockwise:Z

.field private final mEventTime:J

.field private final mFallbackType:I
    .annotation build Lmega/car/config/KeyInput$RotaryFallbackTypeEnum;
    .end annotation
.end field

.field private final mInputCode:I

.field private final mRotaryTimes:I

.field private final mSeq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmega/car/input/CustomRotaryEvent;->NEXT_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lmega/car/input/CustomRotaryEvent$1;

    invoke-direct {v0}, Lmega/car/input/CustomRotaryEvent$1;-><init>()V

    sput-object v0, Lmega/car/input/CustomRotaryEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIJIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmega/car/input/CustomRotaryEvent;->NEXT_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomRotaryEvent;->mSeq:I

    iput p1, p0, Lmega/car/input/CustomRotaryEvent;->mInputCode:I

    iput p2, p0, Lmega/car/input/CustomRotaryEvent;->mRotaryTimes:I

    iput-boolean p6, p0, Lmega/car/input/CustomRotaryEvent;->mClockwise:Z

    iput-wide p3, p0, Lmega/car/input/CustomRotaryEvent;->mEventTime:J

    iput p5, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomRotaryEvent;->mSeq:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomRotaryEvent;->mInputCode:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomRotaryEvent;->mRotaryTimes:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lmega/car/input/CustomRotaryEvent;->mClockwise:Z

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmega/car/input/CustomRotaryEvent;->mEventTime:J

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    return-void
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
    instance-of v1, p1, Lmega/car/input/CustomRotaryEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lmega/car/input/CustomRotaryEvent;

    iget v1, p0, Lmega/car/input/CustomRotaryEvent;->mInputCode:I

    iget v3, p1, Lmega/car/input/CustomRotaryEvent;->mInputCode:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lmega/car/input/CustomRotaryEvent;->mRotaryTimes:I

    iget v3, p1, Lmega/car/input/CustomRotaryEvent;->mRotaryTimes:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lmega/car/input/CustomRotaryEvent;->mClockwise:Z

    iget-boolean v3, p1, Lmega/car/input/CustomRotaryEvent;->mClockwise:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lmega/car/input/CustomRotaryEvent;->mEventTime:J

    iget-wide v5, p1, Lmega/car/input/CustomRotaryEvent;->mEventTime:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lmega/car/input/CustomRotaryEvent;->mSeq:I

    iget v3, p1, Lmega/car/input/CustomRotaryEvent;->mSeq:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    iget p1, p1, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Lmega/car/input/CustomRotaryEvent;->mEventTime:J

    return-wide v0
.end method

.method public getFallbackType()I
    .locals 0
    .annotation build Lmega/car/config/KeyInput$RotaryFallbackTypeEnum;
    .end annotation

    iget p0, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    return p0
.end method

.method public getInputCode()I
    .locals 0
    .annotation build Lmega/car/config/KeyInput$KeyCodeEnum;
    .end annotation

    iget p0, p0, Lmega/car/input/CustomRotaryEvent;->mInputCode:I

    return p0
.end method

.method public getRotaryTimes()I
    .locals 0

    iget p0, p0, Lmega/car/input/CustomRotaryEvent;->mRotaryTimes:I

    return p0
.end method

.method public getSeq()I
    .locals 0

    iget p0, p0, Lmega/car/input/CustomRotaryEvent;->mSeq:I

    return p0
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Lmega/car/input/CustomRotaryEvent;->mInputCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lmega/car/input/CustomRotaryEvent;->mRotaryTimes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v0, p0, Lmega/car/input/CustomRotaryEvent;->mClockwise:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-wide v4, p0, Lmega/car/input/CustomRotaryEvent;->mEventTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v0, p0, Lmega/car/input/CustomRotaryEvent;->mSeq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p0, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isClockwise()Z
    .locals 0

    iget-boolean p0, p0, Lmega/car/input/CustomRotaryEvent;->mClockwise:Z

    return p0
.end method

.method public rotaryFallbackToString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    const/4 v1, -0x1

    const-string v2, ")"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TYPE_ROTARY_INVALID("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    invoke-static {v0, p0, v2}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TYPE_ROTARY_MEDIA("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    invoke-static {v0, p0, v2}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TYPE_ROTARY_VOLUME("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    invoke-static {v0, p0, v2}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TYPE_ROTARY_UNSUPPORTED("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    invoke-static {v0, p0, v2}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CustomRotaryEvent{mInputCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmega/car/input/CustomRotaryEvent;->mInputCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRotaryTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/input/CustomRotaryEvent;->mRotaryTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mClockwise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmega/car/input/CustomRotaryEvent;->mClockwise:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/input/CustomRotaryEvent;->mSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmega/car/input/CustomRotaryEvent;->mEventTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFallbackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmega/car/input/CustomRotaryEvent;->rotaryFallbackToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget p2, p0, Lmega/car/input/CustomRotaryEvent;->mSeq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmega/car/input/CustomRotaryEvent;->mInputCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmega/car/input/CustomRotaryEvent;->mRotaryTimes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lmega/car/input/CustomRotaryEvent;->mClockwise:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lmega/car/input/CustomRotaryEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p0, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
