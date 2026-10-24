.class public final synthetic Lcom/android/managedprovisioning/common/-$$Lambda$Bc21WG92zNtpwGef4qlU9qOmWmU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/managedprovisioning/common/-$$Lambda$Bc21WG92zNtpwGef4qlU9qOmWmU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/managedprovisioning/common/-$$Lambda$Bc21WG92zNtpwGef4qlU9qOmWmU;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/-$$Lambda$Bc21WG92zNtpwGef4qlU9qOmWmU;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/common/-$$Lambda$Bc21WG92zNtpwGef4qlU9qOmWmU;->INSTANCE:Lcom/android/managedprovisioning/common/-$$Lambda$Bc21WG92zNtpwGef4qlU9qOmWmU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    return-void
.end method
