.class public final synthetic Lq/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lq/a0;

.field public final synthetic c:[Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lq/a0;[Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/y;->b:Lq/a0;

    iput-object p2, p0, Lq/y;->c:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lq/y;->b:Lq/a0;

    iget v1, v0, Lq/a0;->p:I

    iget-object v2, p0, Lq/y;->c:[Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    array-length v1, v2

    move v5, v3

    :goto_0
    if-ge v5, v1, :cond_0

    aget-object v6, v2, v5

    iget v7, v0, Lq/a0;->p:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lq/a0;->q:I

    if-eq v1, v4, :cond_1

    array-length v1, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v2, v3

    iget v5, v0, Lq/a0;->q:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
