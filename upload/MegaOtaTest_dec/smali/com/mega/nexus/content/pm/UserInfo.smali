.class public Lcom/mega/nexus/content/pm/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mega/nexus/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ADMIN:I = 0x2

.field public static final FLAG_DEMO:I = 0x200

.field public static final FLAG_DISABLED:I = 0x40

.field public static final FLAG_EPHEMERAL:I = 0x100

.field public static final FLAG_GUEST:I = 0x4

.field public static final FLAG_INITIALIZED:I = 0x10

.field public static final FLAG_MANAGED_PROFILE:I = 0x20

.field public static final FLAG_MASK_USER_TYPE:I = 0xffff

.field public static final FLAG_PRIMARY:I = 0x1

.field public static final FLAG_QUIET_MODE:I = 0x80

.field public static final FLAG_RESTRICTED:I = 0x8

.field public static final NO_PROFILE_GROUP_ID:I = -0x2710


# instance fields
.field public creationTime:J

.field public flags:I

.field public guestToRemove:Z

.field public iconPath:Ljava/lang/String;

.field public id:I

.field public lastLoggedInFingerprint:Ljava/lang/String;

.field public lastLoggedInTime:J

.field public name:Ljava/lang/String;

.field public partial:Z

.field public profileBadge:I

.field public profileGroupId:I

.field public restrictedProfileParentId:I

.field public serialNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 243
    new-instance v0, Lcom/mega/nexus/content/pm/UserInfo$1;

    invoke-direct {v0}, Lcom/mega/nexus/content/pm/UserInfo$1;-><init>()V

    sput-object v0, Lcom/mega/nexus/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mega/nexus/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcom/mega/nexus/content/pm/UserInfo;->id:I

    .line 103
    iput-object p2, p0, Lcom/mega/nexus/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 104
    iput p4, p0, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    .line 105
    iput-object p3, p0, Lcom/mega/nexus/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 106
    const/16 v0, -0x2710

    iput v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->profileGroupId:I

    .line 107
    iput v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 108
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->id:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->serialNumber:I

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->creationTime:J

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->lastLoggedInTime:J

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->partial:Z

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->profileGroupId:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/mega/nexus/content/pm/UserInfo;->guestToRemove:Z

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->profileBadge:I

    .line 268
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mega/nexus/content/pm/UserInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mega/nexus/content/pm/UserInfo$1;

    .line 8
    invoke-direct {p0, p1}, Lcom/mega/nexus/content/pm/UserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/mega/nexus/content/pm/UserInfo;)V
    .locals 2
    .param p1, "orig"    # Lcom/mega/nexus/content/pm/UserInfo;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iget-object v0, p1, Lcom/mega/nexus/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Lcom/mega/nexus/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 205
    iget v0, p1, Lcom/mega/nexus/content/pm/UserInfo;->id:I

    iput v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->id:I

    .line 206
    iget v0, p1, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    iput v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    .line 207
    iget v0, p1, Lcom/mega/nexus/content/pm/UserInfo;->serialNumber:I

    iput v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->serialNumber:I

    .line 208
    iget-wide v0, p1, Lcom/mega/nexus/content/pm/UserInfo;->creationTime:J

    iput-wide v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->creationTime:J

    .line 209
    iget-wide v0, p1, Lcom/mega/nexus/content/pm/UserInfo;->lastLoggedInTime:J

    iput-wide v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->lastLoggedInTime:J

    .line 210
    iget-object v0, p1, Lcom/mega/nexus/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    iput-object v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 211
    iget-boolean v0, p1, Lcom/mega/nexus/content/pm/UserInfo;->partial:Z

    iput-boolean v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->partial:Z

    .line 212
    iget v0, p1, Lcom/mega/nexus/content/pm/UserInfo;->profileGroupId:I

    iput v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->profileGroupId:I

    .line 213
    iget v0, p1, Lcom/mega/nexus/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 214
    iget-boolean v0, p1, Lcom/mega/nexus/content/pm/UserInfo;->guestToRemove:Z

    iput-boolean v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->guestToRemove:Z

    .line 215
    iget v0, p1, Lcom/mega/nexus/content/pm/UserInfo;->profileBadge:I

    iput v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->profileBadge:I

    .line 216
    return-void
.end method

.method public static isSystemOnly(I)Z
    .locals 1
    .param p0, "userId"    # I

    .line 165
    if-nez p0, :cond_0

    invoke-static {}, Lcom/mega/nexus/os/MegaUserHandle;->isSplitSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public canHaveProfile()Z
    .locals 3

    .line 189
    invoke-virtual {p0}, Lcom/mega/nexus/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/mega/nexus/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/mega/nexus/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {}, Lcom/mega/nexus/os/MegaUserHandle;->isSplitSystemUser()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 193
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->id:I

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 195
    :cond_2
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->id:I

    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 190
    :cond_4
    :goto_0
    return v1
.end method

.method public describeContents()I
    .locals 1

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public isAdmin()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDemo()Z
    .locals 2

    .line 147
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 131
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEphemeral()Z
    .locals 2

    .line 139
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGuest()Z
    .locals 2

    .line 119
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitialized()Z
    .locals 2

    .line 143
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isManagedProfile()Z
    .locals 2

    .line 127
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrimary()Z
    .locals 2

    .line 111
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isQuietModeEnabled()Z
    .locals 2

    .line 135
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRestricted()Z
    .locals 2

    .line 123
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystemOnly()Z
    .locals 1

    .line 156
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/mega/nexus/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v0

    return v0
.end method

.method public supportsSwitchTo()Z
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/mega/nexus/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mega/nexus/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    return v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/mega/nexus/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public supportsSwitchToByUser()Z
    .locals 2

    .line 184
    invoke-static {}, Lcom/mega/nexus/os/MegaUserHandle;->isSplitSystemUser()Z

    move-result v0

    .line 185
    .local v0, "hideSystemUser":Z
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mega/nexus/content/pm/UserInfo;->id:I

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mega/nexus/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mega/nexus/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/nexus/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 228
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-wide v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->creationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 234
    iget-wide v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    iget-object v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-boolean v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->partial:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-boolean v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->guestToRemove:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->restrictedProfileParentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Lcom/mega/nexus/content/pm/UserInfo;->profileBadge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    return-void
.end method
