.class public final Ll/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/b;


# static fields
.field public static e:Ll/d;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ll/f;

    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ll/f;-><init>(II)V

    iput-object p1, p0, Ll/d;->a:Ljava/lang/Object;

    .line 3
    new-instance p1, Ll/f;

    invoke-direct {p1, v0, v1}, Ll/f;-><init>(II)V

    iput-object p1, p0, Ll/d;->b:Ljava/lang/Object;

    .line 4
    new-instance p1, Ll/f;

    invoke-direct {p1, v0, v1}, Ll/f;-><init>(II)V

    iput-object p1, p0, Ll/d;->c:Ljava/lang/Object;

    const/16 p1, 0x20

    new-array p1, p1, [Ll/i;

    .line 5
    iput-object p1, p0, Ll/d;->d:Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/d;->a:Ljava/lang/Object;

    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lz1/e;

    invoke-direct {v1, p0}, Lz1/e;-><init>(Ll/d;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Ll/d;->b:Ljava/lang/Object;

    return-void

    .line 10
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance p1, Lk/b;

    invoke-direct {p1}, Lk/b;-><init>()V

    iput-object p1, p0, Ll/d;->a:Ljava/lang/Object;

    .line 12
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ll/d;->b:Ljava/lang/Object;

    .line 13
    new-instance p1, Lk/d;

    invoke-direct {p1}, Lk/d;-><init>()V

    iput-object p1, p0, Ll/d;->c:Ljava/lang/Object;

    .line 14
    new-instance p1, Lk/b;

    invoke-direct {p1}, Lk/b;-><init>()V

    iput-object p1, p0, Ll/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/h;Landroidx/fragment/app/k;)V
    .locals 0

    .line 15
    iput-object p4, p0, Ll/d;->d:Ljava/lang/Object;

    iput-object p1, p0, Ll/d;->a:Ljava/lang/Object;

    iput-object p2, p0, Ll/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Ll/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ll/d;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Ll/d;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p0, p0, Ll/d;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/i;->a()V

    return-void
.end method
