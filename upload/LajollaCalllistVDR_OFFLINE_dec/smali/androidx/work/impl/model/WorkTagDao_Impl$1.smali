.class Landroidx/work/impl/model/WorkTagDao_Impl$1;
.super Landroidx/room/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkTagDao_Impl;-><init>(Landroidx/room/q;)V
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
.field final synthetic this$0:Landroidx/work/impl/model/WorkTagDao_Impl;


# direct methods
.method public constructor <init>(Landroidx/work/impl/model/WorkTagDao_Impl;Landroidx/room/q;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->this$0:Landroidx/work/impl/model/WorkTagDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/q;)V

    return-void
.end method


# virtual methods
.method public bind(Lt0/g;Landroidx/work/impl/model/WorkTag;)V
    .locals 2

    .line 2
    iget-object p0, p2, Landroidx/work/impl/model/WorkTag;->tag:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 3
    move-object p0, p1

    check-cast p0, Lu0/f;

    invoke-virtual {p0, v0}, Lu0/f;->q(I)V

    goto :goto_0

    .line 4
    :cond_0
    move-object v1, p1

    check-cast v1, Lu0/f;

    invoke-virtual {v1, v0, p0}, Lu0/f;->u(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p0, p2, Landroidx/work/impl/model/WorkTag;->workSpecId:Ljava/lang/String;

    const/4 p2, 0x2

    if-nez p0, :cond_1

    .line 6
    check-cast p1, Lu0/f;

    invoke-virtual {p1, p2}, Lu0/f;->q(I)V

    goto :goto_1

    .line 7
    :cond_1
    check-cast p1, Lu0/f;

    invoke-virtual {p1, p2, p0}, Lu0/f;->u(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic bind(Lt0/g;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroidx/work/impl/model/WorkTag;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->bind(Lt0/g;Landroidx/work/impl/model/WorkTag;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    return-object p0
.end method
