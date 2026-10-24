.class Lmega/config/MegaOsConfig$ConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/config/MegaOsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigManager"
.end annotation


# static fields
.field static final CONFIG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmega/config/AbstractConfig;",
            ">;"
        }
    .end annotation
.end field

.field static final KEY_DOMAIN_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmega/config/MegaOsConfig$ConfigManager;->CONFIG_MAP:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmega/config/MegaOsConfig$ConfigManager;->KEY_DOMAIN_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBoolKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lmega/config/MegaOsConfig$ConfigManager;->KEY_DOMAIN_MAP:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "define key ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] conflict in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static addConfig(Lmega/config/AbstractConfig;)V
    .locals 8

    invoke-virtual {p0}, Lmega/config/AbstractConfig;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmega/config/AbstractConfig;->getBoolKeys()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmega/config/AbstractConfig;->getStringKeys()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmega/config/AbstractConfig;->getIntKeys()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    array-length v5, v1

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v1, v6

    invoke-static {v0, v7}, Lmega/config/MegaOsConfig$ConfigManager;->addBoolKey(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    array-length v1, v2

    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_1

    aget-object v6, v2, v5

    invoke-static {v0, v6}, Lmega/config/MegaOsConfig$ConfigManager;->addStringKey(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    array-length v1, v3

    :goto_2
    if-ge v4, v1, :cond_2

    aget-object v2, v3, v4

    invoke-static {v0, v2}, Lmega/config/MegaOsConfig$ConfigManager;->addIntKey(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lmega/config/MegaOsConfig$ConfigManager;->CONFIG_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lmega/config/AbstractConfig;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addIntKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lmega/config/MegaOsConfig$ConfigManager;->KEY_DOMAIN_MAP:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "define key ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] conflict in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static addStringKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lmega/config/MegaOsConfig$ConfigManager;->KEY_DOMAIN_MAP:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "define key ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] conflict in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getBoolConfig(Ljava/lang/String;)Lmega/config/AbstractConfig;
    .locals 1

    invoke-static {p0}, Lmega/config/MegaOsConfig$ConfigManager;->getDomainByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lmega/config/MegaOsConfig$ConfigManager;->CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmega/config/AbstractConfig;

    return-object p0
.end method

.method public static getConfig(Ljava/lang/String;)Lmega/config/AbstractConfig;
    .locals 1

    sget-object v0, Lmega/config/MegaOsConfig$ConfigManager;->CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmega/config/AbstractConfig;

    return-object p0
.end method

.method public static getDomainByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmega/config/MegaOsConfig$ConfigManager;->KEY_DOMAIN_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getIntConfig(Ljava/lang/String;)Lmega/config/AbstractConfig;
    .locals 1

    invoke-static {p0}, Lmega/config/MegaOsConfig$ConfigManager;->getDomainByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lmega/config/MegaOsConfig$ConfigManager;->CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmega/config/AbstractConfig;

    return-object p0
.end method

.method public static getStringConfig(Ljava/lang/String;)Lmega/config/AbstractConfig;
    .locals 1

    invoke-static {p0}, Lmega/config/MegaOsConfig$ConfigManager;->getDomainByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lmega/config/MegaOsConfig$ConfigManager;->CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmega/config/AbstractConfig;

    return-object p0
.end method

.method public static isValidDomain(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lmega/config/MegaOsConfig$ConfigManager;->CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
