.class public final Ly1/i;
.super Ly1/e;
.source "SourceFile"


# instance fields
.field public final d:Ly1/e;

.field public final e:F


# direct methods
.method public constructor <init>(Ly1/f;F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ly1/e;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Ly1/i;->d:Ly1/e;

    iput p2, p0, Ly1/i;->e:F

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    iget-object p0, p0, Ly1/i;->d:Ly1/e;

    invoke-virtual {p0}, Ly1/e;->b()Z

    move-result p0

    return p0
.end method

.method public final c(FFFLy1/x;)V
    .locals 1

    iget v0, p0, Ly1/i;->e:F

    sub-float/2addr p2, v0

    iget-object p0, p0, Ly1/i;->d:Ly1/e;

    invoke-virtual {p0, p1, p2, p3, p4}, Ly1/e;->c(FFFLy1/x;)V

    return-void
.end method
