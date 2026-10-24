.class public final Lj0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/a$a;
    }
.end annotation


# direct methods
.method public static a(DD)Lj0/a$a;
    .locals 3

    new-instance v0, Lj0/a$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 p0, 0x1

    aput-wide p2, v1, p0

    iput-object v1, v0, Lj0/a$a;->a:[D

    return-object v0
.end method
