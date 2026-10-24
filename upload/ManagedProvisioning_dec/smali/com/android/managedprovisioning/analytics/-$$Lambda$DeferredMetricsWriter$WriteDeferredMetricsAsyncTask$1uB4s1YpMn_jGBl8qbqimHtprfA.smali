.class public final synthetic Lcom/android/managedprovisioning/analytics/-$$Lambda$DeferredMetricsWriter$WriteDeferredMetricsAsyncTask$1uB4s1YpMn_jGBl8qbqimHtprfA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/-$$Lambda$DeferredMetricsWriter$WriteDeferredMetricsAsyncTask$1uB4s1YpMn_jGBl8qbqimHtprfA;->f$0:Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/-$$Lambda$DeferredMetricsWriter$WriteDeferredMetricsAsyncTask$1uB4s1YpMn_jGBl8qbqimHtprfA;->f$0:Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter$WriteDeferredMetricsAsyncTask;->lambda$eventLoggerToDevicePolicyEvent$0(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;Ljava/lang/String;)V

    return-void
.end method
