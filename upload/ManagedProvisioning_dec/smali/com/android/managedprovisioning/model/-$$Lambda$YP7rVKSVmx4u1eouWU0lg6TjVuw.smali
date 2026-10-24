.class public final synthetic Lcom/android/managedprovisioning/model/-$$Lambda$YP7rVKSVmx4u1eouWU0lg6TjVuw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/managedprovisioning/model/-$$Lambda$YP7rVKSVmx4u1eouWU0lg6TjVuw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/managedprovisioning/model/-$$Lambda$YP7rVKSVmx4u1eouWU0lg6TjVuw;

    invoke-direct {v0}, Lcom/android/managedprovisioning/model/-$$Lambda$YP7rVKSVmx4u1eouWU0lg6TjVuw;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/model/-$$Lambda$YP7rVKSVmx4u1eouWU0lg6TjVuw;->INSTANCE:Lcom/android/managedprovisioning/model/-$$Lambda$YP7rVKSVmx4u1eouWU0lg6TjVuw;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/managedprovisioning/common/StoreUtils;->stringToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method
