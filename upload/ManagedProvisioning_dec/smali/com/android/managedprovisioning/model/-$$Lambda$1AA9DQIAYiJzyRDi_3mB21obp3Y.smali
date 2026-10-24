.class public final synthetic Lcom/android/managedprovisioning/model/-$$Lambda$1AA9DQIAYiJzyRDi_3mB21obp3Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/managedprovisioning/model/-$$Lambda$1AA9DQIAYiJzyRDi_3mB21obp3Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/managedprovisioning/model/-$$Lambda$1AA9DQIAYiJzyRDi_3mB21obp3Y;

    invoke-direct {v0}, Lcom/android/managedprovisioning/model/-$$Lambda$1AA9DQIAYiJzyRDi_3mB21obp3Y;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/model/-$$Lambda$1AA9DQIAYiJzyRDi_3mB21obp3Y;->INSTANCE:Lcom/android/managedprovisioning/model/-$$Lambda$1AA9DQIAYiJzyRDi_3mB21obp3Y;

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

    invoke-static {p1}, Lcom/android/managedprovisioning/common/StoreUtils;->stringToComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method
