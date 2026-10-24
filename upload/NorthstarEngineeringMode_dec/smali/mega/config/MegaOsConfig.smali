.class public final Lmega/config/MegaOsConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/config/MegaOsConfig$Assistant;,
        Lmega/config/MegaOsConfig$Vehicle;,
        Lmega/config/MegaOsConfig$Owl;,
        Lmega/config/MegaOsConfig$Mars;,
        Lmega/config/MegaOsConfig$Host;,
        Lmega/config/MegaOsConfig$Http;,
        Lmega/config/MegaOsConfig$Global;,
        Lmega/config/MegaOsConfig$ConfigManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MegaOsConfig"

.field private static sContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmega/config/MegaOsConfig$Global;

    invoke-direct {v0}, Lmega/config/MegaOsConfig$Global;-><init>()V

    invoke-static {v0}, Lmega/config/MegaOsConfig$ConfigManager;->addConfig(Lmega/config/AbstractConfig;)V

    new-instance v0, Lmega/config/MegaOsConfig$Http;

    invoke-direct {v0}, Lmega/config/MegaOsConfig$Http;-><init>()V

    invoke-static {v0}, Lmega/config/MegaOsConfig$ConfigManager;->addConfig(Lmega/config/AbstractConfig;)V

    new-instance v0, Lmega/config/MegaOsConfig$Host;

    invoke-direct {v0}, Lmega/config/MegaOsConfig$Host;-><init>()V

    invoke-static {v0}, Lmega/config/MegaOsConfig$ConfigManager;->addConfig(Lmega/config/AbstractConfig;)V

    new-instance v0, Lmega/config/MegaOsConfig$Mars;

    invoke-direct {v0}, Lmega/config/MegaOsConfig$Mars;-><init>()V

    invoke-static {v0}, Lmega/config/MegaOsConfig$ConfigManager;->addConfig(Lmega/config/AbstractConfig;)V

    new-instance v0, Lmega/config/MegaOsConfig$Owl;

    invoke-direct {v0}, Lmega/config/MegaOsConfig$Owl;-><init>()V

    invoke-static {v0}, Lmega/config/MegaOsConfig$ConfigManager;->addConfig(Lmega/config/AbstractConfig;)V

    new-instance v0, Lmega/config/MegaOsConfig$Vehicle;

    invoke-direct {v0}, Lmega/config/MegaOsConfig$Vehicle;-><init>()V

    invoke-static {v0}, Lmega/config/MegaOsConfig$ConfigManager;->addConfig(Lmega/config/AbstractConfig;)V

    new-instance v0, Lmega/config/MegaOsConfig$Assistant;

    invoke-direct {v0}, Lmega/config/MegaOsConfig$Assistant;-><init>()V

    invoke-static {v0}, Lmega/config/MegaOsConfig$ConfigManager;->addConfig(Lmega/config/AbstractConfig;)V

    const-string v0, "MegaOsConfig"

    const-string/jumbo v1, "static initializer, load ConfigManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1

    sget-object v0, Lmega/config/MegaOsConfig;->sContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public static getAsType(Ljava/lang/String;Lmega/config/XmlSerializable$Creator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lmega/config/XmlSerializable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lmega/config/MegaOsConfig$ConfigManager;->getStringConfig(Ljava/lang/String;)Lmega/config/AbstractConfig;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getSerializableConfig unsupported key :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MegaOsConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0, p0, p1}, Lmega/config/AbstractConfig;->getFromXmlData(Ljava/lang/String;Lmega/config/XmlSerializable$Creator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {p0}, Lmega/config/MegaOsConfig$ConfigManager;->getBoolConfig(Ljava/lang/String;)Lmega/config/AbstractConfig;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getBoolean unsupported key :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MegaOsConfig"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    invoke-virtual {v0, p0, p1}, Lmega/config/AbstractConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getConfigUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Lmega/config/MegaOsConfig;->getDomainUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    sget-object v0, Lmega/config/MegaOsConfig;->sContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static getDomainSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmega/config/MegaOsConfig$ConfigManager;->CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getDomainUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Lmega/config/MegaOsConfig$ConfigManager;->getDomainByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lmega/config/ConfigConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 2

    invoke-static {p0}, Lmega/config/MegaOsConfig$ConfigManager;->getIntConfig(Ljava/lang/String;)Lmega/config/AbstractConfig;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getInt unsupported key :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MegaOsConfig"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    invoke-virtual {v0, p0, p1}, Lmega/config/AbstractConfig;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 2

    invoke-static {p0}, Lmega/config/MegaOsConfig$ConfigManager;->getIntConfig(Ljava/lang/String;)Lmega/config/AbstractConfig;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getLong unsupported key :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MegaOsConfig"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1

    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lmega/config/AbstractConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lmega/config/MegaOsConfig$ConfigManager;->getStringConfig(Ljava/lang/String;)Lmega/config/AbstractConfig;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getString unsupported key :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MegaOsConfig"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    invoke-virtual {v0, p0, p1}, Lmega/config/AbstractConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lmega/config/MegaOsConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmega/config/MegaOsConfig;->sContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sput-object p0, Lmega/config/MegaOsConfig;->sContentResolver:Landroid/content/ContentResolver;
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

.method public static isValidDomain(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lmega/config/MegaOsConfig$ConfigManager;->isValidDomain(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
