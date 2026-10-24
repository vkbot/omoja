.class public final Lg0/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lg0/i1;


# instance fields
.field public final a:Lg0/h1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Lg0/g1;->n:Lg0/i1;

    sput-object v0, Lg0/i1;->b:Lg0/i1;

    goto :goto_0

    :cond_0
    sget-object v0, Lg0/h1;->b:Lg0/i1;

    sput-object v0, Lg0/i1;->b:Lg0/i1;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lg0/h1;

    invoke-direct {v0, p0}, Lg0/h1;-><init>(Lg0/i1;)V

    iput-object v0, p0, Lg0/i1;->a:Lg0/h1;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lg0/g1;

    invoke-direct {v0, p0, p1}, Lg0/g1;-><init>(Lg0/i1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lg0/i1;->a:Lg0/h1;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Lg0/f1;

    invoke-direct {v0, p0, p1}, Lg0/f1;-><init>(Lg0/i1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lg0/i1;->a:Lg0/h1;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 5
    new-instance v0, Lg0/e1;

    invoke-direct {v0, p0, p1}, Lg0/e1;-><init>(Lg0/i1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lg0/i1;->a:Lg0/h1;

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lg0/d1;

    invoke-direct {v0, p0, p1}, Lg0/d1;-><init>(Lg0/i1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lg0/i1;->a:Lg0/h1;

    :goto_0
    return-void
.end method

.method public static e(Ly/b;IIII)Ly/b;
    .locals 5

    iget v0, p0, Ly/b;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Ly/b;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Ly/b;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Ly/b;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Ly/b;->a(IIII)Ly/b;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/view/WindowInsets;Landroid/view/View;)Lg0/i1;
    .locals 2

    new-instance v0, Lg0/i1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lg0/i1;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    sget-object p0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg0/d0;->b(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lg0/h0;->a(Landroid/view/View;)Lg0/i1;

    move-result-object p0

    iget-object v1, v0, Lg0/i1;->a:Lg0/h1;

    invoke-virtual {v1, p0}, Lg0/h1;->n(Lg0/i1;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, Lg0/h1;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lg0/i1;->a:Lg0/h1;

    invoke-virtual {v0}, Lg0/h1;->i()Ly/b;

    move-result-object v0

    iget v0, v0, Ly/b;->d:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lg0/i1;->a:Lg0/h1;

    invoke-virtual {v0}, Lg0/h1;->i()Ly/b;

    move-result-object v0

    iget v0, v0, Ly/b;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lg0/i1;->a:Lg0/h1;

    invoke-virtual {v0}, Lg0/h1;->i()Ly/b;

    move-result-object v0

    iget v0, v0, Ly/b;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lg0/i1;->a:Lg0/h1;

    invoke-virtual {v0}, Lg0/h1;->i()Ly/b;

    move-result-object v0

    iget v0, v0, Ly/b;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg0/i1;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lg0/i1;

    iget-object p1, p1, Lg0/i1;->a:Lg0/h1;

    iget-object v0, p0, Lg0/i1;->a:Lg0/h1;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(IIII)Lg0/i1;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lg0/a1;

    invoke-direct {v0, p0}, Lg0/a1;-><init>(Lg0/i1;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Lg0/z0;

    invoke-direct {v0, p0}, Lg0/z0;-><init>(Lg0/i1;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lg0/y0;

    invoke-direct {v0, p0}, Lg0/y0;-><init>(Lg0/i1;)V

    :goto_0
    invoke-static {p1, p2, p3, p4}, Ly/b;->a(IIII)Ly/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg0/b1;->d(Ly/b;)V

    invoke-virtual {v0}, Lg0/b1;->b()Lg0/i1;

    move-result-object p1

    return-object p1
.end method

.method public final g()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lg0/i1;->a:Lg0/h1;

    instance-of v1, v0, Lg0/c1;

    if-eqz v1, :cond_0

    check-cast v0, Lg0/c1;

    iget-object v0, v0, Lg0/c1;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg0/i1;->a:Lg0/h1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lg0/h1;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
