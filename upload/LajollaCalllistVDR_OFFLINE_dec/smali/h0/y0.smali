.class public abstract Lh0/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lh0/f1;

    invoke-direct {v0}, Lh0/f1;-><init>()V

    invoke-direct {p0, v0}, Lh0/y0;-><init>(Lh0/f1;)V

    return-void
.end method

.method public constructor <init>(Lh0/f1;)V
    .locals 0
    .param p1    # Lh0/f1;
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

.method public abstract b()Lh0/f1;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
