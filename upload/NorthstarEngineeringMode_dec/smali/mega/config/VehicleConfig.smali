.class public Lmega/config/VehicleConfig;
.super Lmega/config/AbstractConfig;
.source "SourceFile"


# static fields
.field public static final DOMAIN:Ljava/lang/String; = "vehicle"

.field public static final VEHICLE_DVR_CLOUDPHOTO:Ljava/lang/String; = "vehicle_dvr_cloudphoto"

.field public static final VEHICLE_SUPPORT_DRIVER_SEAT_HEAT:Ljava/lang/String; = "support_driver_seat_heat"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VEHICLE_SUPPORT_DRIVER_SEAT_VENTILATE:Ljava/lang/String; = "support_driver_seat_ventilate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VEHICLE_THEME:Ljava/lang/String; = "vehicle_theme"

.field public static final VHAL_SUPPORT_POWER:Ljava/lang/String; = "vhal_support_power_control"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmega/config/AbstractConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolKeys()[Ljava/lang/String;
    .locals 2

    const-string/jumbo p0, "vehicle_dvr_cloudphoto"

    const-string/jumbo v0, "vhal_support_power_control"

    const-string/jumbo v1, "vehicle_theme"

    filled-new-array {v1, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lmega/config/AbstractConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "vehicle"

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
