.class public abstract Lcom/mega/engineeringmode/function/offlineconfiguration/BaseDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/DiffUtil$Callback;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public abstract a(II)Z
.end method

.method public final areContentsTheSame(II)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mega/engineeringmode/function/offlineconfiguration/BaseDiffCallback;->a(II)Z

    move-result p0

    return p0
.end method

.method public final areItemsTheSame(II)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mega/engineeringmode/function/offlineconfiguration/BaseDiffCallback;->b(II)Z

    move-result p0

    return p0
.end method

.method public abstract b(II)Z
.end method

.method public final getNewListSize()I
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/BaseDiffCallback;->b:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getOldListSize()I
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/BaseDiffCallback;->a:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method
