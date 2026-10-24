.class public final Lcom/mega/engineeringmode/function/dtc/DtcAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/dtc/DtcAdapter;->a(Lo1/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lo1/b;

.field public final synthetic r:Lcom/mega/engineeringmode/function/dtc/DtcAdapter;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/dtc/DtcAdapter;Lo1/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/dtc/DtcAdapter$a;->r:Lcom/mega/engineeringmode/function/dtc/DtcAdapter;

    iput-object p2, p0, Lcom/mega/engineeringmode/function/dtc/DtcAdapter$a;->c:Lo1/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/mega/engineeringmode/function/dtc/DtcAdapter$a;->r:Lcom/mega/engineeringmode/function/dtc/DtcAdapter;

    iget-object v1, v0, Lcom/mega/engineeringmode/function/dtc/DtcAdapter;->b:Ljava/util/Set;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/dtc/DtcAdapter$a;->c:Lo1/b;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/mega/engineeringmode/function/dtc/DtcAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/mega/engineeringmode/function/dtc/DtcAdapter;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lcom/mega/engineeringmode/function/dtc/DtcAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lo1/b;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_1
    const-string v1, "getItemPosition "

    const-string v2, "DtcAdapter"

    invoke-static {v1, v3, v2}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    if-eq v3, v4, :cond_3

    iget-object v1, v0, Lcom/mega/engineeringmode/function/dtc/DtcAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_3
    :goto_2
    return-void
.end method
