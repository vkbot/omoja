.class public final synthetic Lcom/android/managedprovisioning/common/-$$Lambda$EZRJZzincYeBtnngrO1qLLSebHg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/managedprovisioning/common/TouchTargetEnforcer$TouchDelegateProvider;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/managedprovisioning/common/-$$Lambda$EZRJZzincYeBtnngrO1qLLSebHg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/managedprovisioning/common/-$$Lambda$EZRJZzincYeBtnngrO1qLLSebHg;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/-$$Lambda$EZRJZzincYeBtnngrO1qLLSebHg;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/common/-$$Lambda$EZRJZzincYeBtnngrO1qLLSebHg;->INSTANCE:Lcom/android/managedprovisioning/common/-$$Lambda$EZRJZzincYeBtnngrO1qLLSebHg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/graphics/Rect;Landroid/view/View;)Landroid/view/TouchDelegate;
    .locals 0

    new-instance p0, Landroid/view/TouchDelegate;

    invoke-direct {p0, p1, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    return-object p0
.end method
