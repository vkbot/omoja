.class public final synthetic Lcom/mega/update/service/-$$Lambda$UpdateBinder$cKGYKbC41RbpjkpSO3P0sBRi0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/mega/update/manager/UpdateCallback;


# instance fields
.field public final synthetic f$0:Lcom/mega/update/service/UpdateBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/update/service/UpdateBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/update/service/-$$Lambda$UpdateBinder$cKGYKbC41RbpjkpSO3P0sBRi0Oo;->f$0:Lcom/mega/update/service/UpdateBinder;

    return-void
.end method


# virtual methods
.method public final onStatusUpdate(Lcom/mega/update/service/UpdateState;)V
    .locals 1

    iget-object v0, p0, Lcom/mega/update/service/-$$Lambda$UpdateBinder$cKGYKbC41RbpjkpSO3P0sBRi0Oo;->f$0:Lcom/mega/update/service/UpdateBinder;

    invoke-virtual {v0, p1}, Lcom/mega/update/service/UpdateBinder;->lambda$new$0$UpdateBinder(Lcom/mega/update/service/UpdateState;)V

    return-void
.end method
