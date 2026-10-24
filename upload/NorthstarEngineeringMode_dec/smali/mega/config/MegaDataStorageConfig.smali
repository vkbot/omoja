.class public Lmega/config/MegaDataStorageConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sConfig:Lmega/config/DataStorageConfig;

.field private static sContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmega/config/DataStorageConfig;

    invoke-direct {v0}, Lmega/config/DataStorageConfig;-><init>()V

    sput-object v0, Lmega/config/MegaDataStorageConfig;->sConfig:Lmega/config/DataStorageConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lmega/config/MegaDataStorageConfig;->sConfig:Lmega/config/DataStorageConfig;

    invoke-virtual {v0, p0, p1}, Lmega/config/DataStorageConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    sget-object v0, Lmega/config/MegaDataStorageConfig;->sContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static getDomain()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmega/config/MegaDataStorageConfig;->sConfig:Lmega/config/DataStorageConfig;

    invoke-virtual {v0}, Lmega/config/DataStorageConfig;->getDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lmega/config/MegaDataStorageConfig;->sConfig:Lmega/config/DataStorageConfig;

    invoke-virtual {v0, p0, p1}, Lmega/config/DataStorageConfig;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1

    sget-object v0, Lmega/config/MegaDataStorageConfig;->sConfig:Lmega/config/DataStorageConfig;

    invoke-virtual {v0, p0, p1, p2}, Lmega/config/DataStorageConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmega/config/MegaDataStorageConfig;->sConfig:Lmega/config/DataStorageConfig;

    invoke-virtual {v0, p0, p1}, Lmega/config/DataStorageConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lmega/config/MegaDataStorageConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmega/config/MegaDataStorageConfig;->sContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sput-object p0, Lmega/config/MegaDataStorageConfig;->sContentResolver:Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static putBoolean(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lmega/config/MegaDataStorageConfig;->sConfig:Lmega/config/DataStorageConfig;

    invoke-virtual {v0, p0, p1}, Lmega/config/DataStorageConfig;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static putInt(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lmega/config/MegaDataStorageConfig;->sConfig:Lmega/config/DataStorageConfig;

    invoke-virtual {v0, p0, p1}, Lmega/config/DataStorageConfig;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static putLong(Ljava/lang/String;J)V
    .locals 1

    sget-object v0, Lmega/config/MegaDataStorageConfig;->sConfig:Lmega/config/DataStorageConfig;

    invoke-virtual {v0, p0, p1, p2}, Lmega/config/DataStorageConfig;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmega/config/MegaDataStorageConfig;->sConfig:Lmega/config/DataStorageConfig;

    invoke-virtual {v0, p0, p1}, Lmega/config/DataStorageConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
