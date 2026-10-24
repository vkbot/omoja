.class public final Ln4/f$a;
.super Lj4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln4/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj4/d<",
        "Ln4/f;",
        "Ln4/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field public f1:I

.field public g1:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj4/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final k()Ln4/f;
    .locals 3

    new-instance v0, Ln4/f;

    invoke-virtual {p0}, Lj4/b;->i()Lj4/a;

    move-result-object v1

    invoke-virtual {v1}, Lj4/a;->i()[B

    move-result-object v1

    iget v2, p0, Ln4/f$a;->f1:I

    iget p0, p0, Ln4/f$a;->g1:I

    invoke-direct {v0, v1, v2, p0}, Ln4/f;-><init>([BII)V

    return-object v0
.end method

.method public final m([B)V
    .locals 1

    const-string/jumbo v0, "origin"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    iput v0, p0, Ln4/f$a;->g1:I

    new-instance v0, Lj4/a$a;

    invoke-direct {v0, p1}, Lj4/a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lj4/b;->c:Lj4/a;

    return-void
.end method

.method public final n(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Ln4/f$a;->g1:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final p(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Ln4/f$a;->f1:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
