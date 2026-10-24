.class public final synthetic Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$-5DwPei8d_FK_khElsm0hB-L2-g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$-5DwPei8d_FK_khElsm0hB-L2-g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$-5DwPei8d_FK_khElsm0hB-L2-g;

    invoke-direct {v0}, Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$-5DwPei8d_FK_khElsm0hB-L2-g;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$-5DwPei8d_FK_khElsm0hB-L2-g;->INSTANCE:Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$-5DwPei8d_FK_khElsm0hB-L2-g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/security/cert/Certificate;

    invoke-static {p1}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->lambda$isCertificateChainValidType$0(Ljava/security/cert/Certificate;)Z

    move-result p0

    return p0
.end method
