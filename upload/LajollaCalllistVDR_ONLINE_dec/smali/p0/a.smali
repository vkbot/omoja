.class public final Lp0/a;
.super Landroidx/lifecycle/f0;
.source "SourceFile"


# instance fields
.field public final b:Lj/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg2/e;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg2/e;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/f0;-><init>()V

    new-instance v0, Lj/k;

    invoke-direct {v0}, Lj/k;-><init>()V

    iput-object v0, p0, Lp0/a;->b:Lj/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lp0/a;->b:Lj/k;

    iget v1, v0, Lj/k;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-gtz v1, :cond_1

    iget-object v4, v0, Lj/k;->c:[Ljava/lang/Object;

    move v5, v3

    :goto_0
    if-ge v5, v1, :cond_0

    aput-object v2, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iput v3, v0, Lj/k;->d:I

    return-void

    :cond_1
    iget-object v0, v0, Lj/k;->c:[Ljava/lang/Object;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    throw v2
.end method
