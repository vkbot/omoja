.class public final synthetic Lcom/android/managedprovisioning/analytics/-$$Lambda$ZeIJ-eXXFMphBL5e8yybGR_cbRY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongSupplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/managedprovisioning/analytics/-$$Lambda$ZeIJ-eXXFMphBL5e8yybGR_cbRY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/managedprovisioning/analytics/-$$Lambda$ZeIJ-eXXFMphBL5e8yybGR_cbRY;

    invoke-direct {v0}, Lcom/android/managedprovisioning/analytics/-$$Lambda$ZeIJ-eXXFMphBL5e8yybGR_cbRY;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/analytics/-$$Lambda$ZeIJ-eXXFMphBL5e8yybGR_cbRY;->INSTANCE:Lcom/android/managedprovisioning/analytics/-$$Lambda$ZeIJ-eXXFMphBL5e8yybGR_cbRY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsLong()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
