.class public final synthetic Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$lKzBVSvdImewbaPKbHU2_2UyKpk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$lKzBVSvdImewbaPKbHU2_2UyKpk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$lKzBVSvdImewbaPKbHU2_2UyKpk;

    invoke-direct {v0}, Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$lKzBVSvdImewbaPKbHU2_2UyKpk;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$lKzBVSvdImewbaPKbHU2_2UyKpk;->INSTANCE:Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$lKzBVSvdImewbaPKbHU2_2UyKpk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->lambda$castX509Certificates$2(I)[Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method
