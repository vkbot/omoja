.class public final Lh0/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lh0/f1;


# instance fields
.field public final a:Lh0/e1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lh0/d1;->h:Lh0/f1;

    sput-object v0, Lh0/f1;->b:Lh0/f1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lh0/e1;

    invoke-direct {v0, p0}, Lh0/e1;-><init>(Lh0/f1;)V

    iput-object v0, p0, Lh0/f1;->a:Lh0/e1;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lh0/d1;

    invoke-direct {v0, p0, p1}, Lh0/d1;-><init>(Lh0/f1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lh0/f1;->a:Lh0/e1;

    return-void
.end method

.method public static f(Landroid/view/WindowInsets;Landroid/view/View;)Lh0/f1;
    .locals 2

    new-instance v0, Lh0/f1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lh0/f1;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    sget-object p0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lh0/c0;->b(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lh0/g0;->a(Landroid/view/View;)Lh0/f1;

    move-result-object p0

    iget-object v1, v0, Lh0/f1;->a:Lh0/e1;

    invoke-virtual {v1, p0}, Lh0/e1;->n(Lh0/f1;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, Lh0/e1;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lh0/f1;->a:Lh0/e1;

    invoke-virtual {p0}, Lh0/e1;->i()Lz/b;

    move-result-object p0

    iget p0, p0, Lz/b;->d:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, Lh0/f1;->a:Lh0/e1;

    invoke-virtual {p0}, Lh0/e1;->i()Lz/b;

    move-result-object p0

    iget p0, p0, Lz/b;->a:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lh0/f1;->a:Lh0/e1;

    invoke-virtual {p0}, Lh0/e1;->i()Lz/b;

    move-result-object p0

    iget p0, p0, Lz/b;->c:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Lh0/f1;->a:Lh0/e1;

    invoke-virtual {p0}, Lh0/e1;->i()Lz/b;

    move-result-object p0

    iget p0, p0, Lz/b;->b:I

    return p0
.end method

.method public final e()Landroid/view/WindowInsets;
    .locals 1

    iget-object p0, p0, Lh0/f1;->a:Lh0/e1;

    instance-of v0, p0, Lh0/z0;

    if-eqz v0, :cond_0

    check-cast p0, Lh0/z0;

    iget-object p0, p0, Lh0/z0;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lh0/f1;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lh0/f1;

    iget-object p1, p1, Lh0/f1;->a:Lh0/e1;

    iget-object p0, p0, Lh0/f1;->a:Lh0/e1;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lh0/f1;->a:Lh0/e1;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lh0/e1;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method
