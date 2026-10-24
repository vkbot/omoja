.class public final Landroidx/activity/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/a;


# instance fields
.field public final a:Landroidx/fragment/app/f0;

.field public final synthetic b:Landroidx/activity/h;


# direct methods
.method public constructor <init>(Landroidx/activity/h;Landroidx/fragment/app/f0;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/g;->b:Landroidx/activity/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/g;->a:Landroidx/fragment/app/f0;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-object v0, p0, Landroidx/activity/g;->b:Landroidx/activity/h;

    iget-object v0, v0, Landroidx/activity/h;->b:Ljava/util/ArrayDeque;

    iget-object v1, p0, Landroidx/activity/g;->a:Landroidx/fragment/app/f0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Landroidx/fragment/app/f0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
