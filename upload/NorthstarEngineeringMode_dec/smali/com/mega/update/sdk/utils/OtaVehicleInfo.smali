.class public Lcom/mega/update/sdk/utils/OtaVehicleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private batteryVoltage:F

.field private drivenType:I

.field private vinNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBatteryVoltage()F
    .locals 0

    iget p0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->batteryVoltage:F

    return p0
.end method

.method public getDrivenType()I
    .locals 0

    iget p0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->drivenType:I

    return p0
.end method

.method public getVinNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->vinNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setBatteryVoltage(F)V
    .locals 0

    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->batteryVoltage:F

    return-void
.end method

.method public setDrivenType(I)V
    .locals 0

    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->drivenType:I

    return-void
.end method

.method public setVinNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->vinNumber:Ljava/lang/String;

    return-void
.end method
