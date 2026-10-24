.class public final Lq0/a;
.super Landroidx/lifecycle/f0;
.source "SourceFile"


# instance fields
.field public final b:Lk/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ly1/e;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly1/e;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/f0;-><init>()V

    new-instance v0, Lk/k;

    invoke-direct {v0}, Lk/k;-><init>()V

    iput-object v0, p0, Lq0/a;->b:Lk/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object p0, p0, Lq0/a;->b:Lk/k;

    iget v0, p0, Lk/k;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    iget-object v3, p0, Lk/k;->b:[Ljava/lang/Object;

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_0

    aput-object v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lk/k;->c:I

    return-void

    :cond_1
    iget-object p0, p0, Lk/k;->b:[Ljava/lang/Object;

    aget-object p0, p0, v2

    invoke-static {p0}, La/a;->i(Ljava/lang/Object;)V

    throw v1
.end method
