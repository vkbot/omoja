.class public Landroidx/work/impl/utils/LiveDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dedupedMappedLiveDataFor(Landroidx/lifecycle/t;Li/a;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)Landroidx/lifecycle/t;
    .locals 3
    .param p0    # Landroidx/lifecycle/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Li/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<In:",
            "Ljava/lang/Object;",
            "Out:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/t;",
            "Li/a;",
            "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;",
            ")",
            "Landroidx/lifecycle/t;"
        }
    .end annotation

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/lifecycle/v;

    invoke-direct {v1}, Landroidx/lifecycle/v;-><init>()V

    new-instance v2, Landroidx/work/impl/utils/LiveDataUtils$1;

    invoke-direct {v2, p2, v0, p1, v1}, Landroidx/work/impl/utils/LiveDataUtils$1;-><init>(Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Ljava/lang/Object;Li/a;Landroidx/lifecycle/v;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/v;->i(Landroidx/lifecycle/t;Landroidx/lifecycle/x;)V

    return-object v1
.end method
