.class public abstract Landroidx/recyclerview/widget/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/recyclerview/widget/k0;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/k0;

    invoke-direct {v0}, Landroidx/recyclerview/widget/k0;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/j0;->a:Landroidx/recyclerview/widget/k0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/j0;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public b(I)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public c(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract d(Landroidx/recyclerview/widget/i1;I)V
.end method

.method public abstract e(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/i1;
.end method

.method public f(Landroidx/recyclerview/widget/i1;)V
    .locals 0

    return-void
.end method
