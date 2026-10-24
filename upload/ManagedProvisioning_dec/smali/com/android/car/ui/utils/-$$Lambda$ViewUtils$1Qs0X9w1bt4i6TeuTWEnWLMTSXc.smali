.class public final synthetic Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$1Qs0X9w1bt4i6TeuTWEnWLMTSXc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/car/ui/utils/ViewUtils$Predicate;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$1Qs0X9w1bt4i6TeuTWEnWLMTSXc;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$1Qs0X9w1bt4i6TeuTWEnWLMTSXc;->f$0:Landroid/view/View;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/car/ui/utils/ViewUtils;->lambda$findFirstFocusableDescendant$6(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
