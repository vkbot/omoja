.class public Lcom/callisto/auto/gatherer/model/VerInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_bt_ver:Ljava/lang/String;

.field private b_dsp_ver:Ljava/lang/String;

.field private b_hardware_ver:Ljava/lang/String;

.field private b_mcu_ver:Ljava/lang/String;

.field private b_ota_ver:Ljava/lang/String;

.field private b_part_num:Ljava/lang/String;

.field private b_patch_date:Ljava/lang/String;

.field private b_qnx_ver:Ljava/lang/String;

.field private b_sn_num:Ljava/lang/String;

.field private b_soc_ver:Ljava/lang/String;

.field private b_vin_num:Ljava/lang/String;

.field private b_vr_ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NA"

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_ota_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_hardware_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_bt_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_vr_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_dsp_ver:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setBtVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_bt_ver:Ljava/lang/String;

    return-void
.end method

.method public setDspVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_dsp_ver:Ljava/lang/String;

    return-void
.end method

.method public setHardwareVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_hardware_ver:Ljava/lang/String;

    return-void
.end method

.method public setMcuVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_mcu_ver:Ljava/lang/String;

    return-void
.end method

.method public setOTAVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_ota_ver:Ljava/lang/String;

    return-void
.end method

.method public setPartNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_part_num:Ljava/lang/String;

    return-void
.end method

.method public setPatchDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_patch_date:Ljava/lang/String;

    return-void
.end method

.method public setQnxVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_qnx_ver:Ljava/lang/String;

    return-void
.end method

.method public setSnNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_sn_num:Ljava/lang/String;

    return-void
.end method

.method public setSocVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_soc_ver:Ljava/lang/String;

    return-void
.end method

.method public setVinNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_vin_num:Ljava/lang/String;

    return-void
.end method

.method public setVrVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/VerInfoBean;->b_vr_ver:Ljava/lang/String;

    return-void
.end method
