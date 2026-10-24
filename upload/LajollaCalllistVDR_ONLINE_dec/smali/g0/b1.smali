.class public abstract Lg0/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lg0/i1;

    invoke-direct {v0}, Lg0/i1;-><init>()V

    invoke-direct {p0, v0}, Lg0/b1;-><init>(Lg0/i1;)V

    return-void
.end method

.method public constructor <init>(Lg0/i1;)V
    .locals 0
    .param p1    # Lg0/i1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public abstract b()Lg0/i1;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract c(Ly/b;)V
    .param p1    # Ly/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract d(Ly/b;)V
    .param p1    # Ly/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
