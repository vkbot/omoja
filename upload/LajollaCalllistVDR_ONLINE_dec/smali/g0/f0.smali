.class public final Lg0/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public a:Lg0/i1;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lg0/r;


# direct methods
.method public constructor <init>(Landroid/view/View;Lg0/r;)V
    .locals 0

    iput-object p1, p0, Lg0/f0;->b:Landroid/view/View;

    iput-object p2, p0, Lg0/f0;->c:Lg0/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lg0/f0;->a:Lg0/i1;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    invoke-static {p2, p1}, Lg0/i1;->h(Landroid/view/WindowInsets;Landroid/view/View;)Lg0/i1;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Lg0/f0;->c:Lg0/r;

    const/16 v3, 0x1e

    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lg0/f0;->b:Landroid/view/View;

    invoke-static {p2, v4}, Lg0/g0;->a(Landroid/view/WindowInsets;Landroid/view/View;)V

    iget-object p2, p0, Lg0/f0;->a:Lg0/i1;

    invoke-virtual {v0, p2}, Lg0/i1;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {v2, p1, v0}, Lg0/r;->e(Landroid/view/View;Lg0/i1;)Lg0/i1;

    move-result-object p1

    invoke-virtual {p1}, Lg0/i1;->g()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object v0, p0, Lg0/f0;->a:Lg0/i1;

    invoke-interface {v2, p1, v0}, Lg0/r;->e(Landroid/view/View;Lg0/i1;)Lg0/i1;

    move-result-object p2

    if-lt v1, v3, :cond_1

    invoke-virtual {p2}, Lg0/i1;->g()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg0/e0;->c(Landroid/view/View;)V

    invoke-virtual {p2}, Lg0/i1;->g()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
