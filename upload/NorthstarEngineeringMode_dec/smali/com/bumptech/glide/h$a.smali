.class public final Lcom/bumptech/glide/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/bumptech/glide/h;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/h$a;->c:Lcom/bumptech/glide/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/bumptech/glide/h$a;->c:Lcom/bumptech/glide/h;

    iget-object v0, p0, Lcom/bumptech/glide/h;->c:Ly/g;

    invoke-interface {v0, p0}, Ly/g;->a(Ly/h;)V

    return-void
.end method
