.class public abstract Lm5/a1;
.super Lm5/b1;
.source "SourceFile"


# instance fields
.field public t:Z


# direct methods
.method public constructor <init>(Lm5/z0;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lm5/b1;-><init>(Lm5/z0;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm5/a1;->t:Z

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lm5/a1;->t:Z

    return p0
.end method
