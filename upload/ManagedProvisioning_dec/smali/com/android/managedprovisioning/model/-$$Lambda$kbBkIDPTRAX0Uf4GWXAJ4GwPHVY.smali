.class public final synthetic Lcom/android/managedprovisioning/model/-$$Lambda$kbBkIDPTRAX0Uf4GWXAJ4GwPHVY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/managedprovisioning/model/-$$Lambda$kbBkIDPTRAX0Uf4GWXAJ4GwPHVY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/managedprovisioning/model/-$$Lambda$kbBkIDPTRAX0Uf4GWXAJ4GwPHVY;

    invoke-direct {v0}, Lcom/android/managedprovisioning/model/-$$Lambda$kbBkIDPTRAX0Uf4GWXAJ4GwPHVY;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/model/-$$Lambda$kbBkIDPTRAX0Uf4GWXAJ4GwPHVY;->INSTANCE:Lcom/android/managedprovisioning/model/-$$Lambda$kbBkIDPTRAX0Uf4GWXAJ4GwPHVY;

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

    invoke-static {p1}, Lcom/android/managedprovisioning/model/DisclaimersParam;->fromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/DisclaimersParam;

    move-result-object p0

    return-object p0
.end method
