.class Landroidx/work/impl/model/SystemIdInfoDao_Impl$1;
.super Landroidx/room/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/SystemIdInfoDao_Impl;-><init>(Landroidx/room/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/SystemIdInfoDao_Impl;


# direct methods
.method public constructor <init>(Landroidx/work/impl/model/SystemIdInfoDao_Impl;Landroidx/room/q;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl$1;->this$0:Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ls0/g;Landroidx/work/impl/model/SystemIdInfo;)V
    .locals 3

    .line 2
    iget-object v0, p2, Landroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lt0/f;

    invoke-virtual {v0, v1}, Lt0/f;->N(I)V

    goto :goto_0

    .line 4
    :cond_0
    move-object v2, p1

    check-cast v2, Lt0/f;

    invoke-virtual {v2, v1, v0}, Lt0/f;->O(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget p2, p2, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    int-to-long v0, p2

    check-cast p1, Lt0/f;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0, v1}, Lt0/f;->M(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Ls0/g;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroidx/work/impl/model/SystemIdInfo;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/SystemIdInfoDao_Impl$1;->bind(Ls0/g;Landroidx/work/impl/model/SystemIdInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)"

    return-object v0
.end method
