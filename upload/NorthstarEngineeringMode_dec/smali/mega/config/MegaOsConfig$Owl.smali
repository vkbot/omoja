.class public final Lmega/config/MegaOsConfig$Owl;
.super Lmega/config/OwlConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/config/MegaOsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Owl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmega/config/OwlConfig;-><init>()V

    return-void
.end method

.method public static getOwlConfig()Lmega/config/MegaOsConfig$Owl;
    .locals 2

    sget-object v0, Lmega/config/MegaOsConfig$ConfigManager;->CONFIG_MAP:Ljava/util/Map;

    const-string/jumbo v1, "owl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/config/MegaOsConfig$Owl;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getBoolKeys()[Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lmega/config/OwlConfig;->getBoolKeys()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lmega/config/AbstractConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getDomain()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lmega/config/OwlConfig;->getDomain()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFromXmlData(Ljava/lang/String;Lmega/config/XmlSerializable$Creator;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lmega/config/AbstractConfig;->getFromXmlData(Ljava/lang/String;Lmega/config/XmlSerializable$Creator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getInt(Ljava/lang/String;I)I
    .locals 0

    invoke-super {p0, p1, p2}, Lmega/config/AbstractConfig;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getIntKeys()[Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lmega/config/OwlConfig;->getIntKeys()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLong(Ljava/lang/String;J)J
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lmega/config/AbstractConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1, p2}, Lmega/config/AbstractConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStringKeys()[Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lmega/config/OwlConfig;->getStringKeys()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic putBoolean(Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmega/config/AbstractConfig;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic putInt(Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmega/config/AbstractConfig;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic putLong(Ljava/lang/String;J)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lmega/config/AbstractConfig;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "cpu_monitor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lmega/config/AbstractConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
