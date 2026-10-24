.class public final Lt4/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:[D

.field public final b:I


# direct methods
.method public constructor <init>([DI)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v1, v0, [D

    array-length v2, p1

    sget-object v3, Lz4/b;->a:[[D

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lt4/a$a;->a:[D

    iput p2, p0, Lt4/a$a;->b:I

    return-void
.end method
