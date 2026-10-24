.class public Landroidx/work/impl/OperationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/Operation;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "Landroidx/work/Operation$State$SUCCESS;",
            ">;"
        }
    .end annotation
.end field

.field private final mOperationState:Landroidx/lifecycle/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/w;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/w;

    invoke-direct {v0}, Landroidx/lifecycle/w;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/OperationImpl;->mOperationState:Landroidx/lifecycle/w;

    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->create()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    sget-object v0, Landroidx/work/Operation;->IN_PROGRESS:Landroidx/work/Operation$State$IN_PROGRESS;

    invoke-virtual {p0, v0}, Landroidx/work/impl/OperationImpl;->setState(Landroidx/work/Operation$State;)V

    return-void
.end method


# virtual methods
.method public getResult()Le2/a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le2/a;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    return-object p0
.end method

.method public getState()Landroidx/lifecycle/t;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/t;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/impl/OperationImpl;->mOperationState:Landroidx/lifecycle/w;

    return-object p0
.end method

.method public setState(Landroidx/work/Operation$State;)V
    .locals 1
    .param p1    # Landroidx/work/Operation$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/work/impl/OperationImpl;->mOperationState:Landroidx/lifecycle/w;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/w;->g(Ljava/lang/Object;)V

    instance-of v0, p1, Landroidx/work/Operation$State$SUCCESS;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/work/Operation$State$FAILURE;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/work/Operation$State$FAILURE;

    iget-object p0, p0, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {p1}, Landroidx/work/Operation$State$FAILURE;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method
