.class public final synthetic Lcom/android/managedprovisioning/model/-$$Lambda$Hiio4K9IPdwEiX6SrjNj0KirVus;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/managedprovisioning/model/-$$Lambda$Hiio4K9IPdwEiX6SrjNj0KirVus;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/managedprovisioning/model/-$$Lambda$Hiio4K9IPdwEiX6SrjNj0KirVus;

    invoke-direct {v0}, Lcom/android/managedprovisioning/model/-$$Lambda$Hiio4K9IPdwEiX6SrjNj0KirVus;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/model/-$$Lambda$Hiio4K9IPdwEiX6SrjNj0KirVus;->INSTANCE:Lcom/android/managedprovisioning/model/-$$Lambda$Hiio4K9IPdwEiX6SrjNj0KirVus;

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

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-static {p1}, Lcom/android/managedprovisioning/common/StoreUtils;->persistableBundleToAccount(Landroid/os/PersistableBundle;)Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method
