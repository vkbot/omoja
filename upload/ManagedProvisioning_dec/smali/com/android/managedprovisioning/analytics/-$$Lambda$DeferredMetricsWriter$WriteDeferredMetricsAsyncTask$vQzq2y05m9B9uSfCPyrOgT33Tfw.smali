.class public final synthetic Lcom/android/managedprovisioning/analytics/-$$Lambda$DeferredMetricsWriter$WriteDeferredMetricsAsyncTask$vQzq2y05m9B9uSfCPyrOgT33Tfw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/managedprovisioning/analytics/-$$Lambda$DeferredMetricsWriter$WriteDeferredMetricsAsyncTask$vQzq2y05m9B9uSfCPyrOgT33Tfw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/managedprovisioning/analytics/-$$Lambda$DeferredMetricsWriter$WriteDeferredMetricsAsyncTask$vQzq2y05m9B9uSfCPyrOgT33Tfw;

    invoke-direct {v0}, Lcom/android/managedprovisioning/analytics/-$$Lambda$DeferredMetricsWriter$WriteDeferredMetricsAsyncTask$vQzq2y05m9B9uSfCPyrOgT33Tfw;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/analytics/-$$Lambda$DeferredMetricsWriter$WriteDeferredMetricsAsyncTask$vQzq2y05m9B9uSfCPyrOgT33Tfw;->INSTANCE:Lcom/android/managedprovisioning/analytics/-$$Lambda$DeferredMetricsWriter$WriteDeferredMetricsAsyncTask$vQzq2y05m9B9uSfCPyrOgT33Tfw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/app/admin/DevicePolicyEventLogger;

    invoke-static {p1}, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter$WriteDeferredMetricsAsyncTask;->lambda$vQzq2y05m9B9uSfCPyrOgT33Tfw(Landroid/app/admin/DevicePolicyEventLogger;)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    move-result-object p0

    return-object p0
.end method
