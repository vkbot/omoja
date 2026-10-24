.class public Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;
.super Ljava/lang/Object;
.source "ManagedProvisioningSharedPreferences.java"


# static fields
.field static final KEY_PROVISIONING_ID:Ljava/lang/String; = "provisioning_id"

.field static final KEY_PROVISIONING_START_TIMESTAMP:Ljava/lang/String; = "provisioning_start_timestamp"

.field static final SHARED_PREFERENCE:Ljava/lang/String; = "managed_profile_shared_preferences"

.field private static final sWriteLock:Ljava/lang/Object;


# instance fields
.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;->sWriteLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "managed_profile_shared_preferences"

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getProvisioningId()J
    .locals 3

    .line 52
    iget-object p0, p0, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "provisioning_id"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProvisioningStartedTimestamp()J
    .locals 3

    .line 82
    iget-object p0, p0, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "provisioning_start_timestamp"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementAndGetProvisioningId()J
    .locals 5

    .line 60
    sget-object v0, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;->sWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;->getProvisioningId()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 64
    iget-object p0, p0, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v3, "provisioning_id"

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public writeProvisioningStartedTimestamp(J)V
    .locals 1

    .line 73
    iget-object p0, p0, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "provisioning_start_timestamp"

    .line 74
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 75
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
