.class public Lcom/mega/update/service/UpdateOption;
.super Ljava/lang/Object;
.source "UpdateOption.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mega/update/service/UpdateOption;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UpdateOption"


# instance fields
.field private mAction:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

.field private mEncInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enc_info"
    .end annotation
.end field

.field private mFilename:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filename"
    .end annotation
.end field

.field private mForce:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "force"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/mega/update/service/UpdateOption$1;

    invoke-direct {v0}, Lcom/mega/update/service/UpdateOption$1;-><init>()V

    sput-object v0, Lcom/mega/update/service/UpdateOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/mega/update/service/UpdateOption;->mAction:I

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcom/mega/update/service/UpdateOption;->mFilename:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/mega/update/service/UpdateOption;->mEncInfo:Ljava/lang/String;

    .line 41
    iput-boolean v0, p0, Lcom/mega/update/service/UpdateOption;->mForce:Z

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mega/update/service/UpdateOption;->mAction:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/service/UpdateOption;->mFilename:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/service/UpdateOption;->mEncInfo:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mega/update/service/UpdateOption;->mForce:Z

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 87
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/mega/update/service/UpdateOption;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 88
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/mega/update/service/UpdateOption;->mAction:I

    return v0
.end method

.method public getEncInfo()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/mega/update/service/UpdateOption;->mEncInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mega/update/service/UpdateOption;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getForce()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/mega/update/service/UpdateOption;->mForce:Z

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .line 110
    iput p1, p0, Lcom/mega/update/service/UpdateOption;->mAction:I

    .line 111
    return-void
.end method

.method public setEncInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "encInfo"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/mega/update/service/UpdateOption;->mEncInfo:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/mega/update/service/UpdateOption;->mFilename:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setForce(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/mega/update/service/UpdateOption;->mForce:Z

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateOption, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mega/update/service/UpdateOption;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/update/service/UpdateOption;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enc_info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/update/service/UpdateOption;->mEncInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", force: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mega/update/service/UpdateOption;->mForce:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 53
    iget v0, p0, Lcom/mega/update/service/UpdateOption;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/mega/update/service/UpdateOption;->mFilename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/mega/update/service/UpdateOption;->mEncInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-boolean v0, p0, Lcom/mega/update/service/UpdateOption;->mForce:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    return-void
.end method
