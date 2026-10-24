.class public final synthetic Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$-f0elFuTjnZZivfe4ZsiLnbp0hM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/car/ui/utils/ViewUtils$Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$-f0elFuTjnZZivfe4ZsiLnbp0hM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$-f0elFuTjnZZivfe4ZsiLnbp0hM;

    invoke-direct {v0}, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$-f0elFuTjnZZivfe4ZsiLnbp0hM;-><init>()V

    sput-object v0, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$-f0elFuTjnZZivfe4ZsiLnbp0hM;->INSTANCE:Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$-f0elFuTjnZZivfe4ZsiLnbp0hM;

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

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/car/ui/utils/ViewUtils;->lambda$focusOnFirstRegularView$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
