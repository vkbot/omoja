.class public interface abstract Landroidx/work/impl/model/RawWorkInfoDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract getWorkInfoPojos(Lt0/f;)Ljava/util/List;
    .param p1    # Lt0/f;
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
            "Lt0/f;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkInfoPojosLiveData(Lt0/f;)Landroidx/lifecycle/t;
    .param p1    # Lt0/f;
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
            "Lt0/f;",
            ")",
            "Landroidx/lifecycle/t;"
        }
    .end annotation
.end method
