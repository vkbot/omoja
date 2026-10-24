.class public final Lr4/a;
.super La/a;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:[[D


# direct methods
.method public constructor <init>([[D)V
    .locals 0

    iput-object p1, p0, Lr4/a;->d:[[D

    const/16 p1, 0xe

    invoke-direct {p0, p1}, La/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final l(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr4/a;->b:I

    iput p1, p0, Lr4/a;->c:I

    return-void
.end method

.method public final m(IID)V
    .locals 1

    iget v0, p0, Lr4/a;->b:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lr4/a;->d:[[D

    aget-object p1, v0, p1

    iget p0, p0, Lr4/a;->c:I

    sub-int/2addr p2, p0

    aput-wide p3, p1, p2

    return-void
.end method
