.class public Lcom/mega/update/sdk/utils/OtaDeviceInfo;
.super Ljava/lang/Object;
.source "OtaDeviceInfo.java"


# instance fields
.field private bootVersion:Ljava/lang/String;

.field private calibVersion:Ljava/lang/String;

.field private hwVersion:Ljava/lang/String;

.field private partNumber:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;

.field private supplierCode:Ljava/lang/String;

.field private swVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBootVersion()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->bootVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCalibVersion()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->calibVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHwVersion()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->hwVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPartNumber()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->partNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplierCode()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->supplierCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSwVersion()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->swVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setBootVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "bootVersion"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->bootVersion:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setCalibVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "calibVersion"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->calibVersion:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setHwVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "hwVersion"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->hwVersion:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setPartNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "partNumber"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->partNumber:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->serialNumber:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setSupplierCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "supplierCode"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->supplierCode:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setSwVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "swVersion"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->swVersion:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OtaDeviceInfo{bootVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->bootVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", swVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->swVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hwVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->hwVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", serialNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", partNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->partNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", supplierCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->supplierCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", calibVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->calibVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
