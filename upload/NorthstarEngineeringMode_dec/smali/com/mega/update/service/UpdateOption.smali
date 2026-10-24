.class public Lcom/mega/update/service/UpdateOption;
.super Ljava/lang/Object;
.source "SourceFile"

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

    new-instance v0, Lcom/mega/update/service/UpdateOption$1;

    invoke-direct {v0}, Lcom/mega/update/service/UpdateOption$1;-><init>()V

    sput-object v0, Lcom/mega/update/service/UpdateOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mega/update/service/UpdateOption;->mAction:I

    const-string v1, ""

    iput-object v1, p0, Lcom/mega/update/service/UpdateOption;->mFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/mega/update/service/UpdateOption;->mEncInfo:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mega/update/service/UpdateOption;->mForce:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mega/update/service/UpdateOption;->mAction:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/service/UpdateOption;->mFilename:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/service/UpdateOption;->mEncInfo:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mega/update/service/UpdateOption;->mForce:Z

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
    invoke-virtual {p0}, Lcom/mega/update/service/UpdateOption;->toString()Ljava/lang/String;

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

.method public getAction()I
    .locals 0

    iget p0, p0, Lcom/mega/update/service/UpdateOption;->mAction:I

    return p0
.end method

.method public getEncInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mega/update/service/UpdateOption;->mEncInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mega/update/service/UpdateOption;->mFilename:Ljava/lang/String;

    return-object p0
.end method

.method public getForce()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mega/update/service/UpdateOption;->mForce:Z

    return p0
.end method

.method public setAction(I)V
    .locals 0

    iput p1, p0, Lcom/mega/update/service/UpdateOption;->mAction:I

    return-void
.end method

.method public setEncInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/update/service/UpdateOption;->mEncInfo:Ljava/lang/String;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/update/service/UpdateOption;->mFilename:Ljava/lang/String;

    return-void
.end method

.method public setForce(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mega/update/service/UpdateOption;->mForce:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateOption, action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    iget-boolean p0, p0, Lcom/mega/update/service/UpdateOption;->mForce:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/mega/update/service/UpdateOption;->mAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/mega/update/service/UpdateOption;->mFilename:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mega/update/service/UpdateOption;->mEncInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/mega/update/service/UpdateOption;->mForce:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
