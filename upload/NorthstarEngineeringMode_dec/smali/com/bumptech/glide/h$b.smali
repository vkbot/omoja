.class public final Lcom/bumptech/glide/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Ly/l;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "RequestManager.this"
    .end annotation
.end field

.field public final synthetic b:Lcom/bumptech/glide/h;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/h;Ly/l;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/h$b;->b:Lcom/bumptech/glide/h;

    iput-object p2, p0, Lcom/bumptech/glide/h$b;->a:Ly/l;

    return-void
.end method
