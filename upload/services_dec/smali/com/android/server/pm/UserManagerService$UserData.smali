.class Lcom/android/server/pm/UserManagerService$UserData;
.super Ljava/lang/Object;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserData"
.end annotation


# instance fields
.field account:Ljava/lang/String;

.field info:Landroid/content/pm/UserInfo;

.field private mIgnorePrepareStorageErrors:Z

.field private mLastRequestQuietModeEnabledMillis:J

.field persistSeedData:Z

.field seedAccountName:Ljava/lang/String;

.field seedAccountOptions:Landroid/os/PersistableBundle;

.field seedAccountType:Ljava/lang/String;

.field startRealtime:J

.field unlockRealtime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearSeedAccountData()V
    .locals 1

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 330
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 331
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 333
    return-void
.end method

.method getIgnorePrepareStorageErrors()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->mIgnorePrepareStorageErrors:Z

    return v0
.end method

.method getLastRequestQuietModeEnabledMillis()J
    .locals 2

    .line 317
    iget-wide v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    return-wide v0
.end method

.method setIgnorePrepareStorageErrors()V
    .locals 1

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->mIgnorePrepareStorageErrors:Z

    .line 326
    return-void
.end method

.method setLastRequestQuietModeEnabledMillis(J)V
    .locals 0
    .param p1, "millis"    # J

    .line 313
    iput-wide p1, p0, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    .line 314
    return-void
.end method
