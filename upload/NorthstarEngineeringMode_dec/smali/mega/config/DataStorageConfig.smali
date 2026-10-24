.class public final Lmega/config/DataStorageConfig;
.super Lmega/config/AbstractConfig;
.source "SourceFile"


# static fields
.field private static final DOMAIN:Ljava/lang/String; = "datastorage"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmega/config/AbstractConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolKeys()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lmega/config/AbstractConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    invoke-static {}, Lmega/config/MegaDataStorageConfig;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 0

    const-string p0, "datastorage"

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

.method public getIntKeys()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

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

.method public getStringKeys()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

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
