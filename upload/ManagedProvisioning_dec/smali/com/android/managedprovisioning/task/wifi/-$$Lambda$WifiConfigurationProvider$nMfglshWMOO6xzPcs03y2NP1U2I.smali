.class public final synthetic Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$nMfglshWMOO6xzPcs03y2NP1U2I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$nMfglshWMOO6xzPcs03y2NP1U2I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$nMfglshWMOO6xzPcs03y2NP1U2I;

    invoke-direct {v0}, Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$nMfglshWMOO6xzPcs03y2NP1U2I;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$nMfglshWMOO6xzPcs03y2NP1U2I;->INSTANCE:Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$nMfglshWMOO6xzPcs03y2NP1U2I;

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

    check-cast p1, Ljava/security/cert/Certificate;

    invoke-static {p1}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->lambda$castX509Certificates$1(Ljava/security/cert/Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method
