.class public final Landroidx/fragment/app/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/savedstate/e;
.implements Landroidx/lifecycle/h0;


# instance fields
.field public final b:Landroidx/lifecycle/g0;

.field public c:Landroidx/lifecycle/p;

.field public d:Landroidx/savedstate/d;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/g0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/lifecycle/p;

    iput-object v0, p0, Landroidx/fragment/app/d1;->d:Landroidx/savedstate/d;

    iput-object p1, p0, Landroidx/fragment/app/d1;->b:Landroidx/lifecycle/g0;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/savedstate/c;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/d1;->c()V

    iget-object v0, p0, Landroidx/fragment/app/d1;->d:Landroidx/savedstate/d;

    iget-object v0, v0, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    return-object v0
.end method

.method public final b(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/lifecycle/p;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/lifecycle/p;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0, p0}, Landroidx/lifecycle/p;-><init>(Landroidx/lifecycle/n;)V

    iput-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/lifecycle/p;

    new-instance v0, Landroidx/savedstate/d;

    invoke-direct {v0, p0}, Landroidx/savedstate/d;-><init>(Landroidx/savedstate/e;)V

    iput-object v0, p0, Landroidx/fragment/app/d1;->d:Landroidx/savedstate/d;

    :cond_0
    return-void
.end method

.method public final d()Landroidx/lifecycle/g0;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/d1;->c()V

    iget-object v0, p0, Landroidx/fragment/app/d1;->b:Landroidx/lifecycle/g0;

    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/i;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/d1;->c()V

    iget-object v0, p0, Landroidx/fragment/app/d1;->c:Landroidx/lifecycle/p;

    return-object v0
.end method
