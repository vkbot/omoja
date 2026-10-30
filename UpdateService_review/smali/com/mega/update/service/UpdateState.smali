.class public Lcom/mega/update/service/UpdateState;
.super Ljava/lang/Object;
.source "UpdateState.java"

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
.field private mErrDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "desc"
    .end annotation
.end field

.field private mErrorCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field

.field private mFileName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filename"
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

    .line 61
    new-instance v0, Lcom/mega/update/service/UpdateState$1;

    invoke-direct {v0}, Lcom/mega/update/service/UpdateState$1;-><init>()V

    sput-object v0, Lcom/mega/update/service/UpdateState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/mega/update/service/UpdateState;->mState:I

    .line 31
    iput-boolean v0, p0, Lcom/mega/update/service/UpdateState;->mRunning:Z

    .line 32
    iput v0, p0, Lcom/mega/update/service/UpdateState;->mProgress:I

    .line 33
    iput v0, p0, Lcom/mega/update/service/UpdateState;->mErrorCode:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/mega/update/service/UpdateState;->mErrDesc:Ljava/lang/String;

    .line 35
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mega/update/service/UpdateState;->mState:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mega/update/service/UpdateState;->mRunning:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mega/update/service/UpdateState;->mProgress:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mega/update/service/UpdateState;->mErrorCode:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/service/UpdateState;->mErrDesc:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/service/UpdateState;->mFileName:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 86
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/mega/update/service/UpdateState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 87
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/mega/update/service/UpdateState;->mErrorCode:I

    return v0
.end method

.method public getErrorDesc()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/mega/update/service/UpdateState;->mErrDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/mega/update/service/UpdateState;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/mega/update/service/UpdateState;->mProgress:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/mega/update/service/UpdateState;->mState:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/mega/update/service/UpdateState;->mRunning:Z

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "error"    # I

    .line 129
    iput p1, p0, Lcom/mega/update/service/UpdateState;->mErrorCode:I

    .line 130
    return-void
.end method

.method public setErrorDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "errdesc"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/mega/update/service/UpdateState;->mErrDesc:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lcom/mega/update/service/UpdateState;->mFileName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 125
    iput p1, p0, Lcom/mega/update/service/UpdateState;->mProgress:I

    .line 126
    return-void
.end method

.method public setRunning(Z)V
    .locals 0
    .param p1, "running"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/mega/update/service/UpdateState;->mRunning:Z

    .line 122
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 117
    iput p1, p0, Lcom/mega/update/service/UpdateState;->mState:I

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateState, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget v1, p0, Lcom/mega/update/service/UpdateState;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error desc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/update/service/UpdateState;->mErrDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/update/service/UpdateState;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 48
    iget v0, p0, Lcom/mega/update/service/UpdateState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-boolean v0, p0, Lcom/mega/update/service/UpdateState;->mRunning:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 50
    iget v0, p0, Lcom/mega/update/service/UpdateState;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/mega/update/service/UpdateState;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v0, p0, Lcom/mega/update/service/UpdateState;->mErrDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/mega/update/service/UpdateState;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return-void
.end method
