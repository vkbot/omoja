.class public Lcom/mega/update/service/UpdateState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mega/update/service/UpdateState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UpdateState"


# instance fields
.field private mErrorCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field

.field private mProgress:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "progress"
    .end annotation
.end field

.field private mRunning:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "running"
    .end annotation
.end field

.field private mState:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mega/update/service/UpdateState$1;

    invoke-direct {v0}, Lcom/mega/update/service/UpdateState$1;-><init>()V

    sput-object v0, Lcom/mega/update/service/UpdateState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mega/update/service/UpdateState;->mState:I

    iput-boolean v0, p0, Lcom/mega/update/service/UpdateState;->mRunning:Z

    iput v0, p0, Lcom/mega/update/service/UpdateState;->mProgress:I

    iput v0, p0, Lcom/mega/update/service/UpdateState;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mega/update/service/UpdateState;->mState:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mega/update/service/UpdateState;->mRunning:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mega/update/service/UpdateState;->mProgress:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/mega/update/service/UpdateState;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mega/update/service/UpdateState;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/mega/update/service/UpdateState;->mErrorCode:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/mega/update/service/UpdateState;->mProgress:I

    return p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/mega/update/service/UpdateState;->mState:I

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mega/update/service/UpdateState;->mRunning:Z

    return p0
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/mega/update/service/UpdateState;->mErrorCode:I

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/mega/update/service/UpdateState;->mProgress:I

    return-void
.end method

.method public setRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mega/update/service/UpdateState;->mRunning:Z

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/mega/update/service/UpdateState;->mState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateState, state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mega/update/service/UpdateState;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", running:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mega/update/service/UpdateState;->mRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mega/update/service/UpdateState;->mProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/mega/update/service/UpdateState;->mErrorCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/mega/update/service/UpdateState;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/mega/update/service/UpdateState;->mRunning:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Lcom/mega/update/service/UpdateState;->mProgress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/mega/update/service/UpdateState;->mErrorCode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
