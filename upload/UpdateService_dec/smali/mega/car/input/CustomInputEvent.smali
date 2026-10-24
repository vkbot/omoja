.class public final Lmega/car/input/CustomInputEvent;
.super Ljava/lang/Object;
.source "CustomInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
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

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmega/car/input/CustomInputEvent;->NEXT_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 152
    new-instance v0, Lmega/car/input/CustomInputEvent$1;

    invoke-direct {v0}, Lmega/car/input/CustomInputEvent$1;-><init>()V

    sput-object v0, Lmega/car/input/CustomInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIJJI)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "inputCode"    # I
    .param p3, "action"    # I
    .param p4, "downTime"    # J
    .param p6, "eventTime"    # J
    .param p8, "repeatCount"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lmega/car/input/CustomInputEvent;->mSeq:I

    .line 51
    iput p2, p0, Lmega/car/input/CustomInputEvent;->mInputCode:I

    .line 52
    iput p3, p0, Lmega/car/input/CustomInputEvent;->mAction:I

    .line 53
    iput-wide p4, p0, Lmega/car/input/CustomInputEvent;->mDownTime:J

    .line 54
    iput-wide p6, p0, Lmega/car/input/CustomInputEvent;->mEventTime:J

    .line 55
    iput p8, p0, Lmega/car/input/CustomInputEvent;->mRepeatCount:I

    .line 56
    return-void
.end method

.method public constructor <init>(IIJJ)V
    .locals 1
    .param p1, "inputCode"    # I
    .param p2, "action"    # I
    .param p3, "downTime"    # J
    .param p5, "eventTime"    # J

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lmega/car/input/CustomInputEvent;->NEXT_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomInputEvent;->mSeq:I

    .line 36
    iput p1, p0, Lmega/car/input/CustomInputEvent;->mInputCode:I

    .line 37
    iput p2, p0, Lmega/car/input/CustomInputEvent;->mAction:I

    .line 38
    iput-wide p3, p0, Lmega/car/input/CustomInputEvent;->mDownTime:J

    .line 39
    iput-wide p5, p0, Lmega/car/input/CustomInputEvent;->mEventTime:J

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lmega/car/input/CustomInputEvent;->mRepeatCount:I

    .line 41
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomInputEvent;->mSeq:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomInputEvent;->mInputCode:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomInputEvent;->mAction:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmega/car/input/CustomInputEvent;->mDownTime:J

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmega/car/input/CustomInputEvent;->mEventTime:J

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/input/CustomInputEvent;->mRepeatCount:I

    .line 149
    return-void
.end method

.method public static changeTimeRepeat(Lmega/car/input/CustomInputEvent;JI)Lmega/car/input/CustomInputEvent;
    .locals 10
    .param p0, "event"    # Lmega/car/input/CustomInputEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I

    .line 63
    new-instance v9, Lmega/car/input/CustomInputEvent;

    .line 64
    invoke-virtual {p0}, Lmega/car/input/CustomInputEvent;->getSeq()I

    move-result v1

    .line 65
    invoke-virtual {p0}, Lmega/car/input/CustomInputEvent;->getInputCode()I

    move-result v2

    .line 66
    invoke-virtual {p0}, Lmega/car/input/CustomInputEvent;->getAction()I

    move-result v3

    .line 67
    invoke-virtual {p0}, Lmega/car/input/CustomInputEvent;->getDownTime()J

    move-result-wide v4

    move-object v0, v9

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lmega/car/input/CustomInputEvent;-><init>(IIIJJI)V

    .line 63
    return-object v9
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 111
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 112
    :cond_0
    instance-of v1, p1, Lmega/car/input/CustomInputEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 113
    return v2

    .line 115
    :cond_1
    move-object v1, p1

    check-cast v1, Lmega/car/input/CustomInputEvent;

    .line 116
    .local v1, "that":Lmega/car/input/CustomInputEvent;
    iget v3, p0, Lmega/car/input/CustomInputEvent;->mInputCode:I

    iget v4, v1, Lmega/car/input/CustomInputEvent;->mInputCode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lmega/car/input/CustomInputEvent;->mAction:I

    iget v4, v1, Lmega/car/input/CustomInputEvent;->mAction:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lmega/car/input/CustomInputEvent;->mDownTime:J

    iget-wide v5, v1, Lmega/car/input/CustomInputEvent;->mDownTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lmega/car/input/CustomInputEvent;->mEventTime:J

    iget-wide v5, v1, Lmega/car/input/CustomInputEvent;->mEventTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAction()I
    .locals 1

    .line 83
    iget v0, p0, Lmega/car/input/CustomInputEvent;->mAction:I

    return v0
.end method

.method public getDownTime()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lmega/car/input/CustomInputEvent;->mDownTime:J

    return-wide v0
.end method

.method public getEventTime()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lmega/car/input/CustomInputEvent;->mEventTime:J

    return-wide v0
.end method

.method public getInputCode()I
    .locals 1

    .line 78
    iget v0, p0, Lmega/car/input/CustomInputEvent;->mInputCode:I

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 95
    iget v0, p0, Lmega/car/input/CustomInputEvent;->mRepeatCount:I

    return v0
.end method

.method public getSeq()I
    .locals 1

    .line 73
    iget v0, p0, Lmega/car/input/CustomInputEvent;->mSeq:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 124
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lmega/car/input/CustomInputEvent;->mInputCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lmega/car/input/CustomInputEvent;->mAction:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lmega/car/input/CustomInputEvent;->mDownTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lmega/car/input/CustomInputEvent;->mEventTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomInputEvent{mInputCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget v1, p0, Lmega/car/input/CustomInputEvent;->mRepeatCount:I

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

    .line 129
    iget v0, p0, Lmega/car/input/CustomInputEvent;->mSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Lmega/car/input/CustomInputEvent;->mInputCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Lmega/car/input/CustomInputEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-wide v0, p0, Lmega/car/input/CustomInputEvent;->mDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-wide v0, p0, Lmega/car/input/CustomInputEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget v0, p0, Lmega/car/input/CustomInputEvent;->mRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    return-void
.end method
