.class public final Landroidx/fragment/app/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/savedstate/e;
.implements Landroidx/lifecycle/h0;


# instance fields
.field public final a:Landroidx/lifecycle/g0;

.field public b:Landroidx/lifecycle/p;

.field public c:Landroidx/savedstate/d;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/g0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/c1;->b:Landroidx/lifecycle/p;

    iput-object v0, p0, Landroidx/fragment/app/c1;->c:Landroidx/savedstate/d;

    iput-object p1, p0, Landroidx/fragment/app/c1;->a:Landroidx/lifecycle/g0;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/savedstate/c;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/c1;->c()V

    iget-object p0, p0, Landroidx/fragment/app/c1;->c:Landroidx/savedstate/d;

    iget-object p0, p0, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    return-object p0
.end method

.method public final b(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/c1;->b:Landroidx/lifecycle/p;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c1;->b:Landroidx/lifecycle/p;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0, p0}, Landroidx/lifecycle/p;-><init>(Landroidx/lifecycle/n;)V

    iput-object v0, p0, Landroidx/fragment/app/c1;->b:Landroidx/lifecycle/p;

    new-instance v0, Landroidx/savedstate/d;

    invoke-direct {v0, p0}, Landroidx/savedstate/d;-><init>(Landroidx/savedstate/e;)V

    iput-object v0, p0, Landroidx/fragment/app/c1;->c:Landroidx/savedstate/d;

    :cond_0
    return-void
.end method

.method public final d()Landroidx/lifecycle/g0;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/c1;->c()V

    iget-object p0, p0, Landroidx/fragment/app/c1;->a:Landroidx/lifecycle/g0;

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/i;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/c1;->c()V

    iget-object p0, p0, Landroidx/fragment/app/c1;->b:Landroidx/lifecycle/p;

    return-object p0
.end method
