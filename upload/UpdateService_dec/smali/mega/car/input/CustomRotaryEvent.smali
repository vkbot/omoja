.class public Lmega/car/input/CustomRotaryEvent;
.super Ljava/lang/Object;
.source "CustomRotaryEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
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

.field private final mInputCode:I

.field private final mRotaryTimes:I

.field private final mSeq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmega/car/input/CustomRotaryEvent;->NEXT_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 167
    new-instance v0, Lmega/car/input/CustomRotaryEvent$1;

    invoke-direct {v0}, Lmega/car/input/CustomRotaryEvent$1;-><init>()V

    sput-object v0, Lmega/car/input/CustomRotaryEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIJIZ)V
    .locals 1
    .param p1, "inputCode"    # I
    .param p2, "rotaryTimes"    # I
    .param p3, "eventTime"    # J
    .param p5, "fallbackType"    # I
    .param p6, "clockwise"    # Z

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lmega/car/input/CustomRotaryEvent;->NEXT_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomRotaryEvent;->mSeq:I

    .line 36
    iput p1, p0, Lmega/car/input/CustomRotaryEvent;->mInputCode:I

    .line 37
    iput p2, p0, Lmega/car/input/CustomRotaryEvent;->mRotaryTimes:I

    .line 38
    iput-boolean p6, p0, Lmega/car/input/CustomRotaryEvent;->mClockwise:Z

    .line 39
    iput-wide p3, p0, Lmega/car/input/CustomRotaryEvent;->mEventTime:J

    .line 40
    iput p5, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    .line 41
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomRotaryEvent;->mSeq:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomRotaryEvent;->mInputCode:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomRotaryEvent;->mRotaryTimes:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lmega/car/input/CustomRotaryEvent;->mClockwise:Z

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmega/car/input/CustomRotaryEvent;->mEventTime:J

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    .line 164
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 124
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 125
    :cond_0
    instance-of v1, p1, Lmega/car/input/CustomRotaryEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 126
    return v2

    .line 128
    :cond_1
    move-object v1, p1

    check-cast v1, Lmega/car/input/CustomRotaryEvent;

    .line 129
    .local v1, "that":Lmega/car/input/CustomRotaryEvent;
    iget v3, p0, Lmega/car/input/CustomRotaryEvent;->mInputCode:I

    iget v4, v1, Lmega/car/input/CustomRotaryEvent;->mInputCode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lmega/car/input/CustomRotaryEvent;->mRotaryTimes:I

    iget v4, v1, Lmega/car/input/CustomRotaryEvent;->mRotaryTimes:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lmega/car/input/CustomRotaryEvent;->mClockwise:Z

    iget-boolean v4, v1, Lmega/car/input/CustomRotaryEvent;->mClockwise:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lmega/car/input/CustomRotaryEvent;->mEventTime:J

    iget-wide v5, v1, Lmega/car/input/CustomRotaryEvent;->mEventTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Lmega/car/input/CustomRotaryEvent;->mSeq:I

    iget v4, v1, Lmega/car/input/CustomRotaryEvent;->mSeq:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    iget v4, v1, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getEventTime()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lmega/car/input/CustomRotaryEvent;->mEventTime:J

    return-wide v0
.end method

.method public getFallbackType()I
    .locals 1

    .line 63
    iget v0, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    return v0
.end method

.method public getInputCode()I
    .locals 1

    .line 49
    iget v0, p0, Lmega/car/input/CustomRotaryEvent;->mInputCode:I

    return v0
.end method

.method public getRotaryTimes()I
    .locals 1

    .line 72
    iget v0, p0, Lmega/car/input/CustomRotaryEvent;->mRotaryTimes:I

    return v0
.end method

.method public getSeq()I
    .locals 1

    .line 44
    iget v0, p0, Lmega/car/input/CustomRotaryEvent;->mSeq:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 139
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lmega/car/input/CustomRotaryEvent;->mInputCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lmega/car/input/CustomRotaryEvent;->mRotaryTimes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lmega/car/input/CustomRotaryEvent;->mClockwise:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lmega/car/input/CustomRotaryEvent;->mEventTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lmega/car/input/CustomRotaryEvent;->mSeq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isClockwise()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lmega/car/input/CustomRotaryEvent;->mClockwise:Z

    return v0
.end method

.method public rotaryFallbackToString()Ljava/lang/String;
    .locals 4

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    const/4 v2, -0x1

    const-string v3, ")"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE_ROTARY_INVALID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE_ROTARY_MEDIA("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    goto :goto_0

    .line 95
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE_ROTARY_VOLUME("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    goto :goto_0

    .line 101
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE_ROTARY_UNSUPPORTED("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    nop

    .line 107
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomRotaryEvent{mInputCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 118
    invoke-virtual {p0}, Lmega/car/input/CustomRotaryEvent;->rotaryFallbackToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 144
    iget v0, p0, Lmega/car/input/CustomRotaryEvent;->mSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Lmega/car/input/CustomRotaryEvent;->mInputCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Lmega/car/input/CustomRotaryEvent;->mRotaryTimes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-boolean v0, p0, Lmega/car/input/CustomRotaryEvent;->mClockwise:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-wide v0, p0, Lmega/car/input/CustomRotaryEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget v0, p0, Lmega/car/input/CustomRotaryEvent;->mFallbackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return-void
.end method
