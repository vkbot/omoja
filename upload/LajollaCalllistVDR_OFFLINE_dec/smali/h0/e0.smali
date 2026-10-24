.class public final Lh0/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lh0/q;


# direct methods
.method public constructor <init>(Landroid/view/View;Lh0/q;)V
    .locals 0

    iput-object p1, p0, Lh0/e0;->a:Landroid/view/View;

    iput-object p2, p0, Lh0/e0;->b:Lh0/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p2, p1}, Lh0/f1;->f(Landroid/view/WindowInsets;Landroid/view/View;)Lh0/f1;

    move-result-object p2

    iget-object p0, p0, Lh0/e0;->b:Lh0/q;

    invoke-interface {p0, p1, p2}, Lh0/q;->a(Landroid/view/View;Lh0/f1;)Lh0/f1;

    move-result-object p0

    invoke-virtual {p0}, Lh0/f1;->e()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
