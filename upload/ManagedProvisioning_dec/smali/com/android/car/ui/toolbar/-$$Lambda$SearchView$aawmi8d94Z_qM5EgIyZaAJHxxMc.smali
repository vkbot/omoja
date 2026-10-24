.class public final synthetic Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$aawmi8d94Z_qM5EgIyZaAJHxxMc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/car/ui/toolbar/SearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/toolbar/SearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$aawmi8d94Z_qM5EgIyZaAJHxxMc;->f$0:Lcom/android/car/ui/toolbar/SearchView;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$aawmi8d94Z_qM5EgIyZaAJHxxMc;->f$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-virtual {p0, p1, p2}, Lcom/android/car/ui/toolbar/SearchView;->lambda$installWindowInsetsListener$5$SearchView(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
