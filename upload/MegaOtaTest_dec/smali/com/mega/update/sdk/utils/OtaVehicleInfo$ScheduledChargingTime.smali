.class Lcom/mega/update/sdk/utils/OtaVehicleInfo$ScheduledChargingTime;
.super Ljava/lang/Object;
.source "OtaVehicleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/utils/OtaVehicleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScheduledChargingTime"
.end annotation


# instance fields
.field StartTimeDay:I

.field StartTimeHour:I

.field StartTimeMonth:I

.field StartTimeYear:I

.field StartTimemMin:I

.field final synthetic this$0:Lcom/mega/update/sdk/utils/OtaVehicleInfo;


# direct methods
.method constructor <init>(Lcom/mega/update/sdk/utils/OtaVehicleInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    .line 346
    iput-object p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo$ScheduledChargingTime;->this$0:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
