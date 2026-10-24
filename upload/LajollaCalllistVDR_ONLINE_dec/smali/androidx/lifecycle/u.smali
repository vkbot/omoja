.class public final Landroidx/lifecycle/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/x;


# instance fields
.field public final b:Landroidx/lifecycle/t;

.field public final c:Landroidx/lifecycle/x;

.field public d:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/t;Landroidx/lifecycle/x;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/u;->d:I

    iput-object p1, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/t;

    iput-object p2, p0, Landroidx/lifecycle/u;->c:Landroidx/lifecycle/x;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/u;->d:I

    iget-object v1, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/t;

    iget v1, v1, Landroidx/lifecycle/t;->g:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Landroidx/lifecycle/u;->d:I

    iget-object v0, p0, Landroidx/lifecycle/u;->c:Landroidx/lifecycle/x;

    invoke-interface {v0, p1}, Landroidx/lifecycle/x;->onChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
