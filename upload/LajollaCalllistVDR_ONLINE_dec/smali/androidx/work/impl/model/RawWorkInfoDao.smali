.class public interface abstract Landroidx/work/impl/model/RawWorkInfoDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract getWorkInfoPojos(Ls0/f;)Ljava/util/List;
    .param p1    # Ls0/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Landroidx/work/impl/model/WorkSpec;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls0/f;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkInfoPojosLiveData(Ls0/f;)Landroidx/lifecycle/t;
    .param p1    # Ls0/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Landroidx/work/impl/model/WorkSpec;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls0/f;",
            ")",
            "Landroidx/lifecycle/t;"
        }
    .end annotation
.end method
