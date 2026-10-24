.class public final Lmega/config/MegaOsConfig$Host;
.super Lmega/config/UrlHostConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/config/MegaOsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Host"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmega/config/UrlHostConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getBoolKeys()[Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lmega/config/UrlHostConfig;->getBoolKeys()[Ljava/lang/String;

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

    invoke-super {p0}, Lmega/config/UrlHostConfig;->getDomain()Ljava/lang/String;

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

    invoke-super {p0}, Lmega/config/UrlHostConfig;->getIntKeys()[Ljava/lang/String;

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

    invoke-super {p0}, Lmega/config/UrlHostConfig;->getStringKeys()[Ljava/lang/String;

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

.method public bridge synthetic putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmega/config/AbstractConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
