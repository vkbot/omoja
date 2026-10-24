.class Lcom/mega/update/sdk/utils/OtaVehicleInfo$BattKeepWarmStartTime;
.super Ljava/lang/Object;
.source "OtaVehicleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/utils/OtaVehicleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BattKeepWarmStartTime"
.end annotation


# instance fields
.field IHU_KeepWarmStrtHour:I

.field IHU_KeepWarmStrtMin:I

.field final synthetic this$0:Lcom/mega/update/sdk/utils/OtaVehicleInfo;


# direct methods
.method constructor <init>(Lcom/mega/update/sdk/utils/OtaVehicleInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    .line 433
    iput-object p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo$BattKeepWarmStartTime;->this$0:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
