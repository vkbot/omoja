.class public final Lq/d;
.super Lq/g;
.source "SourceFile"


# instance fields
.field public final d:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lq/g;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lq/d;->d:[F

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;F)V
    .locals 1

    invoke-virtual {p0, p2}, Lq/g;->a(F)F

    move-result p2

    iget-object p0, p0, Lq/d;->d:[F

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 p2, 0x0

    invoke-static {p2, p1, p0}, Ly1/l;->n1(Lt/b;Landroid/view/View;[F)V

    return-void
.end method
