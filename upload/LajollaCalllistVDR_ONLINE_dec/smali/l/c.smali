.class public final Ll/c;
.super Lcom/google/android/material/slider/h;
.source "SourceFile"


# instance fields
.field public final x:D

.field public final y:[D


# direct methods
.method public constructor <init>(D[D)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/slider/h;-><init>()V

    iput-wide p1, p0, Ll/c;->x:D

    iput-object p3, p0, Ll/c;->y:[D

    return-void
.end method


# virtual methods
.method public final s0(D)D
    .locals 0

    const/4 p1, 0x0

    iget-object p2, p0, Ll/c;->y:[D

    aget-wide p1, p2, p1

    return-wide p1
.end method

.method public final t0(D[D)V
    .locals 1

    const/4 p1, 0x0

    iget-object p2, p0, Ll/c;->y:[D

    array-length v0, p2

    invoke-static {p2, p1, p3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final u0(D[F)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Ll/c;->y:[D

    array-length v0, p2

    if-ge p1, v0, :cond_0

    aget-wide v0, p2, p1

    double-to-float p2, v0

    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v0(D)D
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final w0(D[D)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Ll/c;->y:[D

    array-length p2, p2

    if-ge p1, p2, :cond_0

    const-wide/16 v0, 0x0

    aput-wide v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y0()[D
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Ll/c;->x:D

    aput-wide v2, v0, v1

    return-object v0
.end method
